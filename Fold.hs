-- K.D.P.Ross <KDPRoss@gmail.com> --
-- Some experiments with `foldl` / `foldr`; cheers to Jeff
-- Polakow for challenging me to think this through ... It
-- was a fun exercise!

foldlI :: (b -> a -> b) -> b -> [ a ] -> b
foldlI f z (x : xs) = foldlI f (f z x) xs
foldlI _ z []       = z

-- Well, here's the cheeky solution, but it totally misses
-- the point ;~P
foldlT :: (b -> a -> b) -> b -> [ a ] -> b
foldlT f z = foldr (flip f) z . reverse

-- Ah, CPSing gets us some of the way there -- the `f` is
-- now 'on the outside', but now we need an initial
-- continuation ... and we've rewritten `fold`.
foldlK :: (b -> a -> b) -> b -> [ a ] -> (b -> c) -> c
foldlK f z (x : xs) k = f' z x k'
                        where k' z'    = foldlK f z' xs k
                              f' z x k = k $ f z x
foldlK _ z []       k = k z

-- Okay, this one's a bit of a mess, but so these things go
-- some times when working things out!
foldlB :: (b -> a -> b) -> b -> [ a ] -> b
foldlB f z xs = fFinal z
                where fFinal    = foldr f'' k' xs -- okay, if I can work out what to shove in for `f'` and
                                                  -- `k'` were pretty much done :~}
                      f' z x k  = k $ f x z       -- cut+paste from above!
                      f'' z k x = f' z x k        -- could have just done a `flip` here
                      k'        = id              -- oh, right, yes, of course this must be `id`

-- Swapping round some arg. orders, inlining, alpha
-- renaming.
foldlC :: (b -> a -> b) -> b -> [ a ] -> b
foldlC f z xs = foldr f' id xs z
                where f' z k x = k $ f x z

-- Eta reduce a bit ... and eliminate some clutter B~}
foldlF :: (b -> a -> b) -> b -> [ a ] -> b
foldlF f = flip $ foldr f' id
           where f' z k = k . flip f z
