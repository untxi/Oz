/*
ozc -c types.oz -o types.oza
ozengine types.oza
*/

/* Numbers
functor
	import
		Application
		System
	define
		local I F C in 
		   I = 5	%Int
		   F = 5.5	%Float
		   C = &t 	%ASCII value of chr
		   {System.showInfo I}
		   {System.showInfo F}
		   {System.showInfo C}
		end
		{Application.exit 0}
end
*/

/* Strings
functor
	import
		System
	define
		B= "Hi"#" Nice day!"
		{System.showInfo B}
end
*/

/* Records ad tuples
functor
	import
		System
	define
		local T I Y LT RT W in 
			T = tree(key:I value:Y left:LT right:RT)
			I = seif
			Y = 43
			LT = nil
			RT = nil
			W = tree(I Y LT RT)
			{System.show [T W]}
		end
end
*/
