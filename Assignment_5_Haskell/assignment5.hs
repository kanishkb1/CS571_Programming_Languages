--Question 1
replace x y [] = []
replace x y (z:zs)
		  | (x==z)	= y: replace x y zs
		  | otherwise	= z: replace x y zs 


-- Question 2
delete k lt 
                        | (length lt) == 0 = []
                        | (length lt) /= 0 = (take (k-1) lt) ++ (delete k (drop k lt))


--Question 3

oddelem [] = []
oddelem [x] = [x]
oddelem (x:y:ys) = x:oddelem ys

getmax [x] = x
getmax (x:xs)	
		  | x >= getmax(xs)    = x
		  | otherwise 	       = getmax(xs)

maxodd lt = getmax (oddelem lt)



-- Question 4: 
union lt1 lt2 = duplicates( lt1 ++ [ temp | temp <- lt2, not (temp `elem` lt1) ] )
duplicates [] = []
duplicates (x:xs)   
                        | x `elem` xs   = duplicates xs
                        | otherwise     = x : duplicates xs





