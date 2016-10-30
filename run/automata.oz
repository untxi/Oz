/*
Colleciones

ozc -c automata.oz -o automata.oza
ozengine automata.oza
*/
functor
	import
		System
	define
	  A0 = {List.toTuple unit "_###_##_#_#_#_#__#__"}
	 
	  MaxGenerations = 9
	 
	  Rules = unit('___':&_
				   '__#':&_
				   '_#_':&_
				   '_##':&#
				   '#__':&_
				   '#_#':&#
				   '##_':&#
				   '###':&_)
	 
	  fun {Evolve A}
		 {Record.mapInd A
		  fun {$ I V}
			 Left = {CondSelect A I-1 &_}
			 Right = {CondSelect A I+1 &_}
			 Env = {String.toAtom [Left V Right]}
		  in
			 Rules.Env
		  end
		 }
	  end
	 
	  fun lazy {Iterate X F}
		 X|{Iterate {F X} F}
	  end
	in
		{System.showInfo '\nGame Rules\n\n000 -> 0  #'}
		{System.showInfo '001 -> 0  #'}
		{System.showInfo '010 -> 0  # Dies without enough neighbours'}
		{System.showInfo '011 -> 1  # Needs one neighbour to survive'}
		{System.showInfo '100 -> 0  #'}
		{System.showInfo '101 -> 1  # Two neighbours giving birth'}
		{System.showInfo '110 -> 1  # Needs one neighbour to survive'}
		{System.showInfo '111 -> 0  # Starved to death.\n\n'}
		
	  for
		 I in 0..MaxGenerations
		 A in {Iterate A0 Evolve}
	  do
		 {System.showInfo "Gen. "#I#": "#{Record.toList A}}
	  end
end
