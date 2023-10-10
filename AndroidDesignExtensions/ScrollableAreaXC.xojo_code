#tag Module
Protected Module ScrollableAreaXC
	#tag CompatibilityFlags = ( TargetAndroid and ( Target64Bit ) )
	#tag Method, Flags = &h0, Description = 52657475726E7320746865206E756D626572206F66206368696C6472656E20696E207468652067726F75702E
		Function GetChildCountXC(Extends ctrl As MobileScrollableArea) As Integer
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Function getChildCount Lib "Object:ctrl:MobileScrollableArea" As Integer
		    Return getChildCount
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 436F6E76657274732064726177696E67206F7264657220706F736974696F6E20746F20636F6E7461696E657220706F736974696F6E2E0A0A4368696C6472656E20617265206E6F74206E65636573736172696C7920647261776E20696E20746865206F7264657220696E20776869636820746865792061707065617220696E2074686520636F6E7461696E65722E205669657747726F7570732063616E20656E61626C65206120637573746F6D206F72646572696E6720766961207365744368696C6472656E44726177696E674F72646572456E61626C656428626F6F6C65616E292E2054686973206D6574686F642072657475726E732074686520636F6E7461696E657220706F736974696F6E206F662061206368696C642074686174206170706561727320696E2074686520676976656E20706F736974696F6E20696E207468652063757272656E742064726177696E67206F726465722E
		Function GetChildDrawingOrderXC(Extends ctrl As MobileScrollableArea, drawingPosition As Integer) As Integer
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Function getChildDrawingOrder Lib "Object:ctrl:MobileScrollableArea" (myDrawingPosition As Integer) As Integer
		    Return getChildDrawingOrder(drawingPosition)
		    
		  #Else
		    
		    #Pragma Unused drawingPosition
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 546865206D6178696D756D20616D6F756E742074686973207363726F6C6C20766965772077696C6C207363726F6C6C20696E20726573706F6E736520746F20616E206172726F77206576656E742E
		Function GetMaxScrollAmountXC(Extends ctrl As MobileScrollableArea) As Integer
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Function getMaxScrollAmount Lib "Object:ctrl:MobileScrollableArea" As Integer
		    Return getMaxScrollAmount
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetNestedScrollAxesXC(Extends ctrl As MobileScrollableArea) As Integer
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Function getNestedScrollAxes Lib "Object:ctrl:MobileScrollableArea" As Integer
		    Return getNestedScrollAxes
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E73207472756520696620746869732076696577206861732061206E6573746564207363726F6C6C696E6720706172656E742E
		Function HasNestedScrollingParentXC(Extends ctrl As MobileScrollableArea) As Boolean
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Function hasNestedScrollingParent Lib "Object:ctrl:MobileScrollableArea" As Boolean
		    Return hasNestedScrollingParent
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 496E6469636174657320776865746865722074686973205363726F6C6C56696577277320636F6E74656E742069732073747265746368656420746F2066696C6C207468652076696577706F72742E
		Function IsFillViewportXC(Extends ctrl As MobileScrollableArea) As Boolean
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Function isFillViewport Lib "Object:ctrl:MobileScrollableArea" As Boolean
		    Return isFillViewport
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function IsNestedScrollingEnabledXC(Extends ctrl As MobileScrollableArea) As Boolean
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Function isNestedScrollingEnabled Lib "Object:ctrl:MobileScrollableArea" As Boolean
		    Return isNestedScrollingEnabled
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E732077686574686572206172726F77207363726F6C6C696E672077696C6C20616E696D61746520697473207472616E736974696F6E2E
		Function IsSmoothScrollingEnabledXC(Extends ctrl As MobileScrollableArea) As Boolean
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Function isSmoothScrollingEnabled Lib "Object:ctrl:MobileScrollableArea" As Boolean
		    Return isSmoothScrollingEnabled
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 546865207363726F6C6C20646972656374696F6E3A20464F4355535F555020746F20676F206F6E652070616765207570206F7220464F4355535F444F574E20746F20676F206F6E65207061676520646F776E2E0A0A48616E646C6573207363726F6C6C696E6720696E20726573706F6E736520746F20612022706167652075702F646F776E222073686F72746375742070726573732E2054686973206D6574686F642077696C6C207363726F6C6C207468652076696577206279206F6E652070616765207570206F7220646F776E20616E6420676976652074686520666F63757320746F2074686520746F706D6F73742F626F74746F6D6D6F737420636F6D706F6E656E7420696E20746865206E65772076697369626C6520617265612E204966206E6F20636F6D706F6E656E74206973206120676F6F642063616E64696461746520666F7220666F6375732C2074686973207363726F6C6C76696577207265636C61696D732074686520666F6375732E
		Function PageScrollXC(Extends ctrl As MobileScrollableArea, direction As Integer) As Boolean
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Function pageScroll Lib "Object:ctrl:MobileScrollableArea" (myDirection As Integer) As Boolean
		    Return pageScroll(direction)
		    
		  #Else
		    
		    #Pragma Unused direction
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 43616C6C2074686973206D6574686F6420746F2072656D6F766520616C6C206368696C642076696577732066726F6D20746865205669657747726F75702E
		Sub RemoveAllViews(Extends ctrl As MobileScrollableArea)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub removeAllViews Lib "Object:ctrl:MobileScrollableArea"
		    removeAllViews
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52656D6F766573207468652076696577206174207468652073706563696669656420706F736974696F6E20696E207468652067726F75702E
		Sub RemoveViewAtXC(Extends ctrl As MobileScrollableArea, index As Integer)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub removeViewAt Lib "Object:ctrl:MobileScrollableArea" (myIndex As Integer)
		    removeViewAt(index)
		    
		  #Else
		    
		    #Pragma Unused index
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52656D6F76657320746865207370656369666965642072616E6765206F662076696577732066726F6D207468652067726F75702E
		Sub RemoveViewsXC(Extends ctrl As MobileScrollableArea, start As Integer, count As Integer)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub removeViews Lib "Object:ctrl:MobileScrollableArea" (myStart As Integer, myCount As Integer)
		    removeViews(start, count)
		    
		  #Else
		    
		    #Pragma Unused start
		    #Pragma Unused count
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 53657420746865207363726F6C6C656420706F736974696F6E206F6620796F757220766965772E20546869732077696C6C20636175736520612063616C6C20746F206F6E5363726F6C6C4368616E67656428696E742C20696E742C20696E742C20696E742920616E642074686520766965772077696C6C20626520696E76616C6964617465642E
		Sub ScrollToXC(Extends ctrl As MobileScrollableArea, x As Integer, y As Integer)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub scrollTo Lib "Object:ctrl:MobileScrollableArea" (myX As Integer, myY As Integer)
		    scrollTo(x, y)
		    
		  #Else
		    
		    #Pragma Unused x
		    #Pragma Unused y
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 496E646963617465732074686973205363726F6C6C5669657720776865746865722069742073686F756C6420737472657463682069747320636F6E74656E742068656967687420746F2066696C6C207468652076696577706F7274206F72206E6F742E
		Sub SetFillViewportXC(Extends ctrl As MobileScrollableArea, fillViewport As Boolean)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub setFillViewport Lib "Object:ctrl:MobileScrollableArea" (myFillViewport As Boolean)
		    setFillViewport(fillViewport)
		    
		  #Else
		    
		    #Pragma Unused fillViewport
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetNestedScrollingEnabledXC(Extends ctrl As MobileScrollableArea, enabled As Boolean)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub setNestedScrollingEnabled Lib "Object:ctrl:MobileScrollableArea" (myEnabled As Boolean)
		    setNestedScrollingEnabled(enabled)
		    
		  #Else
		    
		    #Pragma Unused enabled
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 5365742077686574686572206172726F77207363726F6C6C696E672077696C6C20616E696D61746520697473207472616E736974696F6E2E
		Sub SetSmoothScrollingEnabledXC(Extends ctrl As MobileScrollableArea, smoothScrollingEnabled As Boolean)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub setSmoothScrollingEnabled Lib "Object:ctrl:MobileScrollableArea" (mySmoothScrollingEnabled As Boolean)
		    setSmoothScrollingEnabled(smoothScrollingEnabled)
		    
		  #Else
		    
		    #Pragma Unused smoothScrollingEnabled
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 4C696B652056696577237363726F6C6C42792C20627574207363726F6C6C20736D6F6F74686C7920696E7374656164206F6620696D6D6564696174656C792E
		Sub SmoothScrollByXC(Extends ctrl As MobileScrollableArea, x As Integer, y As Integer)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub smoothScrollBy Lib "Object:ctrl:MobileScrollableArea" (aX As Integer, aY As Integer)
		    smoothScrollBy(x, y)
		    
		  #Else
		    
		    #Pragma Unused x
		    #Pragma Unused y
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 4C696B65207363726F6C6C546F28696E742C20696E74292C20627574207363726F6C6C20736D6F6F74686C7920696E7374656164206F6620696D6D6564696174656C792E
		Sub SmoothScrollToXC(Extends ctrl As MobileScrollableArea, x As Integer, y As Integer)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub smoothScrollTo Lib "Object:ctrl:MobileScrollableArea" (aX As Integer, aY As Integer)
		    smoothScrollTo(x, y)
		    
		  #Else
		    
		    #Pragma Unused x
		    #Pragma Unused y
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 426567696E2061206E65737461626C65207363726F6C6C206F7065726174696F6E20616C6F6E672074686520676976656E20617865732E
		Function StartNestedScrollXC(Extends ctrl As MobileScrollableArea, axes As Integer) As Boolean
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Function startNestedScroll Lib "Object:ctrl:MobileScrollableArea" (axes As Integer) As Boolean
		    Return startNestedScroll(axes)
		    
		  #Else
		    
		    #Pragma Unused axes
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 53746F702061206E6573746564207363726F6C6C20696E2070726F67726573732E0A0A43616C6C696E672074686973206D6574686F64207768656E2061206E6573746564207363726F6C6C206973206E6F742063757272656E746C7920696E2070726F6772657373206973206861726D6C6573732E
		Sub StopNestedScrollXC(Extends ctrl As MobileScrollableArea)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub stopNestedScroll Lib "Object:ctrl:MobileScrollableArea"
		    stopNestedScroll
		    
		  #EndIf
		End Sub
	#tag EndMethod


	#tag ViewBehavior
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Module
#tag EndModule
