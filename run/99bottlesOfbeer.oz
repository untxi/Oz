/*
Loop

ozc -c 99bottlesOfbeer.oz -o 99bottlesOfbeer.oza
ozengine 99bottlesOfbeer.oza
*/
functor
	import
		System
	define
		local
		  fun {Bottles N}
			 if N == 1 then "1 bottle"
			 else N#" bottles"
			 end
		  end
		in
		  for I in 99..1;~1 do
			 {System.showInfo
			  {Bottles I}#" of beer on the wall\n"#
			  {Bottles I}#" bottles of beer\n"#
			  "Take one down, pass it around\n"#
			  {Bottles I-1}#" of beer on the wall\n"}
		  end
		end
end
