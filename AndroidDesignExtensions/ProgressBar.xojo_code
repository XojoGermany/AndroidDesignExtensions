#tag Module
Protected Module ProgressBar
	#tag CompatibilityFlags = ( TargetAndroid and ( Target64Bit ) )
	#tag Method, Flags = &h0, Description = 4368616E67652074686520696E64657465726D696E617465206D6F646520666F7220746869732070726F6772657373206261722E20496E20696E64657465726D696E617465206D6F64652C207468652070726F67726573732069732069676E6F72656420616E64207468652070726F6772657373206261722073686F777320616E20696E66696E69746520616E696D6174696F6E20696E73746561642E0A0A496620746869732070726F6772657373206261722773207374796C65206F6E6C7920737570706F72747320696E64657465726D696E617465206D6F6465202873756368206173207468652063697263756C61722070726F67726573732062617273292C207468656E20746869732077696C6C2062652069676E6F7265642E
		Sub SetIndeterminateXC(Extends ctrl As MobileProgressBar, indeterminate As Boolean)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub setIndeterminate Lib "Object:ctrl:MobileProgressBar" (myIndeterminate As Boolean)
		    setIndeterminate(indeterminate)
		    
		  #Else
		    
		    #Pragma Unused indeterminate
		    
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
