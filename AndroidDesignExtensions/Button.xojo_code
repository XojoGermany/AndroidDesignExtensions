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

	#tag Method, Flags = &h0, Description = 4769766573207468652074657874206120736861646F77206F66207468652073706563696669656420626C75722072616469757320616E6420636F6C6F722C20746865207370656369666965642064697374616E63652066726F6D2069747320647261776E20706F736974696F6E2E0A0A546865207465787420736861646F772070726F647563656420646F6573206E6F7420696E7465726163742077697468207468652070726F70657274696573206F6E207669657720746861742061726520726573706F6E7369626C6520666F72207265616C2074696D6520736861646F77732C20656C65766174696F6E20616E64207472616E736C6174696F6E5A2E
		Sub SetShadowLayerXC(Extends ctrl As MobileButton, radius As Single, dX As Single, dY As Single, c As Color)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub setShadowLayer Lib "Object:ctrl:MobileButton" (myRadius As Single, mydX As Single, mydY As Single, myColor As Integer)
		    setShadowLayer(radius, dX, dX, c.ToInteger)
		    
		  #Else
		    
		    #Pragma Unused radius
		    #Pragma Unused dX
		    #Pragma Unused dY
		    #Pragma Unused c
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 4769766573207468652074657874206120736861646F77206F66207468652073706563696669656420626C75722072616469757320616E6420636F6C6F722C20746865207370656369666965642064697374616E63652066726F6D2069747320647261776E20706F736974696F6E2E0A0A546865207465787420736861646F772070726F647563656420646F6573206E6F7420696E7465726163742077697468207468652070726F70657274696573206F6E207669657720746861742061726520726573706F6E7369626C6520666F72207265616C2074696D6520736861646F77732C20656C65766174696F6E20616E64207472616E736C6174696F6E5A2E
		Sub SetShadowLayerXC(Extends ctrl As MobileDateTimePicker, radius As Single, dX As Single, dY As Single, c As Color)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub setShadowLayer Lib "Object:ctrl:MobileDateTimePicker" (myRadius As Single, mydX As Single, mydY As Single, myColor As Integer)
		    setShadowLayer(radius, dX, dX, c.ToInteger)
		    
		  #Else
		    
		    #Pragma Unused radius
		    #Pragma Unused dX
		    #Pragma Unused dY
		    #Pragma Unused c
		    
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
