/*
Print

ozc -c helloWorld.oz -o helloWorld.oza
ozengine helloWorld.oza
*/
functor
	import
	   System
	define
		H = 'Hello Classmates'
		{System.showInfo H}
end
