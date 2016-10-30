/*

Tkinter

ozc -c helloGraph.oz -o helloGraph.oza
ozengine helloGraph.oza
*/
functor
	import
		Module
	define
	local
	  [QTk] = {Module.link ['x-oz://system/wp/QTk.ozf']}
	  Window = {QTk.build td(label(text:"Goodbye\n World!"))}
	in
	  {Window show}
	end
end
