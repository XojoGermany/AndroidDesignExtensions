#tag Module
Protected Module SegmentedButtonXC
	#tag CompatibilityFlags = (TargetAndroid and (Target64Bit))
	#tag Method, Flags = &h0, Description = 436C65617273207468652073656C656374696F6E732E205768656E207468652073656C656374696F6E732061726520636C65617265642C206E6F204D6174657269616C427574746F6E20696E20746869732067726F757020697320636865636B656420616E6420676574436865636B6564427574746F6E49647328292072657475726E7320616E20656D707479206C6973742E
		Sub ClearCheckedXC(Extends ctrl As MobileSegmentedButton)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub clearChecked Lib "Object:ctrl:MobileSegmentedButton"
		    clearChecked
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 5365747320776865746865722077652070726576656E7420616C6C206368696C6420627574746F6E732066726F6D206265696E6720646573656C65637465642E
		Sub SetSelectionRequiredXC(Extends ctrl As MobileSegmentedButton, selectionRequired As Boolean)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub setSelectionRequired Lib "Object:ctrl:MobileSegmentedButton" (mySelectionRequired As Boolean)
		    setSelectionRequired(selectionRequired)
		    
		  #Else
		    
		    #Pragma Unused selectionRequired
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 53657473207768657468657220746869732067726F7570206F6E6C7920616C6C6F777320612073696E676C6520627574746F6E20746F20626520636865636B65642E0A0A43616C6C696E672074686973206D6574686F6420726573756C747320696E20616C6C2074686520627574746F6E7320696E20746869732067726F757020746F206265636F6D6520756E636865636B65642E
		Sub SetSingleSelectionXC(Extends ctrl As MobileSegmentedButton, singleSelection As Boolean)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub setSingleSelection Lib "Object:ctrl:MobileSegmentedButton" (mySingleSelection As Boolean)
		    setSingleSelection(singleSelection)
		    
		  #Else
		    
		    #Pragma Unused singleSelection
		    
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
