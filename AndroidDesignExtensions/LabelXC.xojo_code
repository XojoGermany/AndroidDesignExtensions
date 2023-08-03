#tag Module
Protected Module LabelXC
	#tag CompatibilityFlags = ( TargetAndroid and ( Target64Bit ) )
	#tag Method, Flags = &h0, Description = 4769766573207468652074657874206120736861646F77206F66207468652073706563696669656420626C75722072616469757320616E6420636F6C6F722C20746865207370656369666965642064697374616E63652066726F6D2069747320647261776E20706F736974696F6E2E0A0A546865207465787420736861646F772070726F647563656420646F6573206E6F7420696E7465726163742077697468207468652070726F70657274696573206F6E207669657720746861742061726520726573706F6E7369626C6520666F72207265616C2074696D6520736861646F77732C20656C65766174696F6E20616E64207472616E736C6174696F6E5A2E
		Sub SetShadowLayerXC(Extends ctrl As MobileLabel, radius As Single, dX As Single, dY As Single, c As Color)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub setShadowLayer Lib "Object:ctrl:MobileLabel" (myRadius As Single, mydX As Single, mydY As Single, myColor As Integer)
		    setShadowLayer(radius, dX, dY, c.ToInteger)
		    
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
