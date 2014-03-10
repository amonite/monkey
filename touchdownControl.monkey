'/Can be used to move an object across the screen
'/

If TouchDown()
		
			ctrl = True 
			moving = True 
		
			If storeX = False
				tx = TouchX()
				oldx = x
				storeX = True 
			Endif 
		
			x = TouchX() - (tx-oldx)
			lastX = x
		
			If storeY = False 
				ty = TouchY() 
				oldy = y 
				storeY = True
			Endif  
		
			y = TouchY() - (ty-oldy)
			lastY = y
Else 
		
			storeY = False
			storeX = False 
			If ctrl = True y = lastY ; x = lastX
			moving = False 
			
Endif 
