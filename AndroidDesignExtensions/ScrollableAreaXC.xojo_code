#tag Module
Protected Module ScrollableAreaXC
	#tag CompatibilityFlags = ( TargetAndroid and ( Target64Bit ) )
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
