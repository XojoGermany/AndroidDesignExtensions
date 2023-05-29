#tag Module
Protected Module Button
	#tag CompatibilityFlags = ( TargetAndroid and ( Target64Bit ) )
	#tag Method, Flags = &h0, Description = 536574732074686520636F726E65722072616469757320666F72207468697320627574746F6E2E
		Sub SetCornerRadiusXC(Extends ctrl As MobileButton, radius As Integer)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub setCornerRadius Lib "Object:ctrl:MobileButton" (myRadius As Integer)
		    setCornerRadius(radius)
		    
		  #Else
		    
		    #Pragma Unused radius
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 536574732074686520636F726E65722072616469757320666F72207468697320627574746F6E2E
		Sub SetCornerRadiusXC(Extends ctrl As MobileDateTimePicker, radius As Integer)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub setCornerRadius Lib "Object:ctrl:MobileDateTimePicker" (myRadius As Integer)
		    setCornerRadius(radius)
		    
		  #Else
		    
		    #Pragma Unused radius
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 536574732074686520627574746F6E20626F74746F6D20696E7365742E
		Sub SetInsetBottomXC(Extends ctrl As MobileButton, insetBottom As Integer)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub setInsetBottom Lib "Object:ctrl:MobileButton" (myInsetBottom As Integer)
		    setInsetBottom(insetBottom)
		    
		  #Else
		    
		    #Pragma Unused insetBottom
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 536574732074686520627574746F6E20626F74746F6D20696E7365742E
		Sub SetInsetBottomXC(Extends ctrl As MobileDateTimePicker, insetBottom As Integer)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub setInsetBottom Lib "Object:ctrl:MobileDateTimePicker" (myInsetBottom As Integer)
		    setInsetBottom(insetBottom)
		    
		  #Else
		    
		    #Pragma Unused insetBottom
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 536574732074686520627574746F6E20746F7020696E7365742E
		Sub SetInsetTopXC(Extends ctrl As MobileButton, insetTop As Integer)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub setInsetTop Lib "Object:ctrl:MobileButton" (myInsetTop As Integer)
		    setInsetTop(insetTop)
		    
		  #Else
		    
		    #Pragma Unused insetTop
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 536574732074686520627574746F6E20746F7020696E7365742E
		Sub SetInsetTopXC(Extends ctrl As MobileDateTimePicker, insetTop As Integer)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub setInsetTop Lib "Object:ctrl:MobileDateTimePicker" (myInsetTop As Integer)
		    setInsetTop(insetTop)
		    
		  #Else
		    
		    #Pragma Unused insetTop
		    
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
