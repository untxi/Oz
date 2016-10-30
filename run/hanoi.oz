/*
procedimiento

ozc -c hanoi.oz -o hanoi.oza
ozengine hanoi.oza
*/

functor
	import
		System
	define
	  proc {TowersOfHanoi N From To Via}
		 if N > 0 then
			{TowersOfHanoi N-1 From Via To}
			{System.showInfo "Move from "#From#" to "#To}
			{TowersOfHanoi N-1 Via To From}
		 end
	  end
	in
	  {TowersOfHanoi 6 a b c}
end
