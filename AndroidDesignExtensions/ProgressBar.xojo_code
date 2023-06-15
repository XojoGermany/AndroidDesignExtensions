#tag Module
Protected Module ProgressBar
	#tag CompatibilityFlags = ( TargetAndroid and ( Target64Bit ) )
	#tag Method, Flags = &h0, Description = 476574207468652070726F67726573732062617227732063757272656E74206C6576656C206F66207365636F6E646172792070726F67726573732E2052657475726E2030207768656E207468652070726F67726573732062617220697320696E20696E64657465726D696E617465206D6F64652E
		Function GetSecondaryProgressXC(Extends ctrl As MobileProgressBar) As Integer
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Function getSecondaryProgress Lib "Object:ctrl:MobileProgressBar" As Integer
		    Return getSecondaryProgress
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 496E637265617365207468652070726F67726573732062617227732070726F6772657373206279207468652073706563696669656420616D6F756E742E
		Sub IncrementProgressByXC(Extends ctrl As MobileProgressBar, diff As Integer)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub incrementProgressBy Lib "Object:ctrl:MobileProgressBar" (myDiff As Integer)
		    incrementProgressBy(diff)
		    
		  #Else
		    
		    #Pragma Unused diff
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 496E637265617365207468652070726F67726573732062617227732070726F6772657373206279207468652073706563696669656420616D6F756E742E
		Sub IncrementSecondaryProgressByXC(Extends ctrl As MobileProgressBar, diff As Integer)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub incrementSecondaryProgressBy Lib "Object:ctrl:MobileProgressBar" (myDiff As Integer)
		    incrementSecondaryProgressBy(diff)
		    
		  #Else
		    
		    #Pragma Unused diff
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 476574207468652070726F67726573732062617227732063757272656E74206C6576656C206F66207365636F6E646172792070726F67726573732E2052657475726E2030207768656E207468652070726F67726573732062617220697320696E20696E64657465726D696E617465206D6F64652E
		Function IsAnimatingXC(Extends ctrl As MobileProgressBar) As Boolean
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Function isAnimating Lib "Object:ctrl:MobileProgressBar" As Boolean
		    Return isAnimating
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 476574207468652070726F67726573732062617227732063757272656E74206C6576656C206F66207365636F6E646172792070726F67726573732E2052657475726E2030207768656E207468652070726F67726573732062617220697320696E20696E64657465726D696E617465206D6F64652E
		Function IsIndeterminateXC(Extends ctrl As MobileProgressBar) As Boolean
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Function isIndeterminate Lib "Object:ctrl:MobileProgressBar" As Boolean
		    Return isIndeterminate
		    
		  #EndIf
		End Function
	#tag EndMethod

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

	#tag Method, Flags = &h0, Description = 53657473207468652063757272656E742070726F677265737320746F20746865207370656369666965642076616C75652C206F7074696F6E616C6C7920616E696D6174696E67207468652076697375616C20706F736974696F6E206265747765656E207468652063757272656E7420616E64207461726765742076616C7565732E0A0A416E696D6174696F6E20646F6573206E6F74206166666563742074686520726573756C74206F662067657450726F677265737328292C2077686963682077696C6C2072657475726E20746865207461726765742076616C756520696D6D6564696174656C792061667465722074686973206D6574686F642069732063616C6C65642E
		Sub SetProgressXC(Extends ctrl As MobileProgressBar, progress As Integer, animate As Boolean)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub setProgress Lib "Object:ctrl:MobileProgressBar" (myProgress As Integer, myAnimate As Boolean)
		    setProgress(progress, animate)
		    
		  #Else
		    
		    #Pragma Unused progress
		    #Pragma Unused animate
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 536574207468652063757272656E74207365636F6E646172792070726F677265737320746F20746865207370656369666965642076616C75652E20446F6573206E6F7420646F20616E797468696E67206966207468652070726F67726573732062617220697320696E20696E64657465726D696E617465206D6F64652E
		Sub SetSecondaryProgressXC(Extends ctrl As MobileProgressBar, secondaryProgress As Integer)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub setSecondaryProgress Lib "Object:ctrl:MobileProgressBar" (mySecondaryProgress As Integer)
		    setSecondaryProgress(secondaryProgress)
		    
		  #Else
		    
		    #Pragma Unused secondaryProgress
		    
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
