#tag Module
Protected Module ScrollableArea
	#tag CompatibilityFlags = ( TargetAndroid and ( Target64Bit ) )
	#tag Method, Flags = &h0
		Sub BackgroundColor(Extends myScrollableArea As MobileScrollableArea, Assigns myColor As Color)
		  #Pragma Unused myScrollableArea
		  
		  #If TargetAndroid
		    
		    Declare Sub setBackgroundColor Lib "Object:myScrollableArea:MobileScrollableArea" (aColor As Integer)
		    setBackgroundColor(myColor.ToInteger)
		    
		  #Else
		    
		    #Pragma Unused myColor
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ShadowColor(Extends myScrollableArea As MobileScrollableArea, Assigns myColor As Color)
		  #Pragma Unused myScrollableArea
		  
		  #If TargetAndroid
		    
		    Declare Sub setOutlineSpotShadowColor Lib "Object:myScrollableArea:MobileScrollableArea" (aColor As Integer)
		    setOutlineSpotShadowColor(myColor.ToInteger)
		    
		  #Else
		    
		    #Pragma Unused myColor
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SmoothScrollBy(Extends myScrollableArea As MobileScrollableArea, x As Integer, y As Integer)
		  #Pragma Unused myScrollableArea
		  
		  #If TargetAndroid
		    
		    Declare Sub smoothScrollBy Lib "Object:myScrollableArea:MobileScrollableArea" (aX As Integer, aY As Integer)
		    smoothScrollBy(x, y)
		    
		  #Else
		    
		    #Pragma Unused x
		    #Pragma Unused y
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SmoothScrollTo(Extends myScrollableArea As MobileScrollableArea, x As Integer, y As Integer)
		  #Pragma Unused myScrollableArea
		  
		  #If TargetAndroid
		    
		    Declare Sub smoothScrollTo Lib "Object:myScrollableArea:MobileScrollableArea" (aX As Integer, aY As Integer)
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
