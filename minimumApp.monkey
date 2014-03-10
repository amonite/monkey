'/This is the minimum code required to
'/make an html5 app with monkey
Strict 

'/monkey applications must extend the mojo App Class declared in mojo.app
'/and create a new instance somewhere in Main()
Import mojo


Global ScrW:Int' = 640
Global ScrH:Int' = 480 


Class TGame Extends App
	 
	Method OnCreate:Int()
		ScrW = DeviceWidth()
		ScrH = DeviceHeight()
		'/load some stuff...
	
		SetUpdateRate(60) '/the app won't run without this!
		Return 0 
	End Method 
	
	Method OnUpdate:Int()
		'/game logic goes here
		Return 0
	End Method 
	
	Method OnRender:Int()
		'/drawing 
		Cls 0,0,255
		DrawText "Hello", 10,10
		Return 0
	End Method 
End 

Function Main:Int()
	New TGame
	Return 0
End Function 





