#tag Module
Protected Module SwitchXC
	#tag CompatibilityFlags = (TargetAndroid and (Target64Bit))
	#tag Method, Flags = &h0, Description = 52657475726E7320747275652069662074686973205377697463684D6174657269616C2064656661756C747320746F20636F6C6F72732066726F6D2061204D6174657269616C205468656D652E
		Function IsUseMaterialThemeColorsXC(Extends ctrl As MobileSwitch) As Boolean
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Function isUseMaterialThemeColors Lib "Object:ctrl:MobileSwitch" As Boolean
		    Return isUseMaterialThemeColors
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 5370656369666965732074696E7420636F6C6F7220666F722074686973206472617761626C652E
		Sub SetThumbColorXC(Extends ctrl As MobileSwitch, c As Color)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub setTint Lib "Object:ctrl:MobileSwitch" Alias "getThumbDrawable()!!.setTint" (myTintColor As Integer)
		    setTint(c.ToInteger)
		    
		  #Else
		    
		    #Pragma Unused c
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 5370656369666965732074696E7420636F6C6F7220666F722074686973206472617761626C652E
		Sub SetTrackColorXC(Extends ctrl As MobileSwitch, c As Color)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub setTint Lib "Object:ctrl:MobileSwitch" Alias "getTrackDrawable()!!.setTint" (myTintColor As Integer)
		    setTint(c.ToInteger)
		    
		  #Else
		    
		    #Pragma Unused c
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 466F7263657320746865205377697463684D6174657269616C20746F2075736520636F6C6F72732066726F6D2061204D6174657269616C205468656D652E204F766572726964657320616E79207370656369666965642074696E74206C69737420666F722074686520747261636B20616E64207468756D622E2049662073657420746F2066616C73652C2073657473207468652074696E747320746F206E756C6C2E
		Sub SetUseMaterialThemeColorsXC(Extends ctrl As MobileSwitch, useMaterialThemeColors As Boolean)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub setUseMaterialThemeColors Lib "Object:ctrl:MobileSwitch" (myUseMaterialThemeColors As Boolean)
		    setUseMaterialThemeColors(useMaterialThemeColors)
		    
		  #Else
		    
		    #Pragma Unused useMaterialThemeColors
		    
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
