'/This is one way of having a basic menu
'/system.
'/(for example an html5 app)

Strict 

Import mojo

Const STATE_MENU:Int = 1
Const STATE_PLAYING:Int = 2
Const STATE_PAUSED:Int = 3 

Global ScrW:Int '= 640
Global ScrH:Int '= 480 


Class TGame Extends App
	Global GameState:Int = STATE_MENU
	
	Method OnCreate:Int()
		ScrW = DeviceWidth()
		ScrH = DeviceHeight()
		'load some stuff...
		SetUpdateRate(60)
		Return 0 
	End Method 
	
	Method OnUpdate:Int()
		Select GameState
			Case STATE_MENU
				If KeyHit(KEY_SPACE)
					SetState(STATE_PLAYING)
				Endif 
			Case STATE_PLAYING
				'refresh some stuff
				If KeyHit(KEY_P)
					SetState(STATE_PAUSED)
				Endif 
				If KeyHit(KEY_M)
					SetState(STATE_MENU)
				Endif 
			Case STATE_PAUSED
				If KeyHit(KEY_P)
					SetState(STATE_PLAYING)
				Endif 
		End Select 
		Return 0
	End Method 
	
	Method OnRender:Int()
		Select GameState
			Case STATE_MENU
				Cls 0,0,0
				DrawText "STATE MENU",10,10
				DrawText "Press space bar to begin...", 10, 30
			Case STATE_PLAYING
				Cls 0,0,0
				DrawText "STATE PLAYING",10,10
				DrawText "Press key P to pause game...", 10, 30
				DrawText "Press key M to go back to menu...", 10, 50
			Case STATE_PAUSED
				Cls 0,0,0
				DrawText "STATE PAUSED",10,10
				DrawText "Press Key P to resume game...", 10, 30
		End Select 
		Return 0
	End Method 
	
	Method SetState:Int(state:Int)
		GameState = state
		Return GameState
	End Method 
End 

Function Main:Int()
	New TGame
	Return 0
End Function 
