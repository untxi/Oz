/*
ozc -c host.oz -o host.oza
ozengine host.oza
*/
functor
	import 
		System
		OS
	define
		{System.showInfo {OS.getHostByName 'localhost'}.name}
	
end
