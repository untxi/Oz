/*
ozc -c 2Darray.oz -o 2Darray.oza
ozengine 2Darray.oza
*/
functor
	import
		Open
		Array
		System		

	define
	  %% Read width and height from stdin
	  class TextFile from Open.file Open.text end
	  StdIn = {New TextFile init(name:stdin)}
	  Width = {String.toInt {StdIn getS($)}}
	  Height = {String.toInt {StdIn getS($)}}
	  %% create array
	  Arr = {Array.new 1 Width unit}
	in
	  for X in 1..Width do
		 Arr.X := {Array.new 1 Height 0}
	  end
	  %% set and read element
	  Arr.1.1 := 42
	  {System.show Arr.1.1}
end
