/*
Recursion

ozc -c Fib.oz -o Fib.oza
ozengine Fib.oza
*/

functor
	import
		Application
		System
	define
		local Fib 
		   fun {Fib N} %function
			 case N %switch case
			 of 0 then 0
			 [] 1 then 1
			 else {Fib N - 1} + {Fib N - 2} end
		   end
		in
		   {System.showInfo {Fib 6}} %call function
		end
		
		{Application.exit 0}
end
