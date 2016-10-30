/*

Map

ozc -c sierpinski.oz -o sierpinski.oza
ozengine sierpinski.oza
*/

functor
	import
		System
	define
	  fun {NextTriangle Triangle}
		 Sp = {Spaces {Length Triangle}}
	  in
	   {Flatten
		  [{Map Triangle fun {$ X} Sp#X#Sp end}
		   {Map Triangle fun {$ X} X#" "#X end}
		  ]}
	  end
	 
	  fun {Spaces N} if N == 0 then nil else & |{Spaces N-1} end end
	 
	  fun lazy {Iterate F X}
		 X|{Iterate F {F X}}
	  end
	 
	  SierpinskiTriangles = {Iterate NextTriangle ["*"]}
	in
	  {ForAll {Nth SierpinskiTriangles 6} System.showInfo}
end
