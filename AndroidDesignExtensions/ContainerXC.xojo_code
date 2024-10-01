#tag Module
Protected Module ContainerXC
	#tag CompatibilityFlags = ( TargetAndroid and ( Target64Bit ) )
	#tag Method, Flags = &h0
		Function GetCurrentFocusedControlXC(Extends myContainer As MobileContainer) As MobileUIControl
		  #Pragma Unused myContainer
		  
		  #If TargetAndroid
		    
		    Var iCurrentFocusObjID As Integer = myContainer.GetCurrentFocusIDXC
		    Var iObjID As Integer
		    
		    For Each obj As MobileControl In myContainer.Controls
		      
		      '  Check for MobileUIControl
		      If Not (obj IsA MobileUIControl) Then Continue
		      
		      '  Check for MobileContainer
		      If obj IsA MobileContainer Then Continue
		      
		      iObjID = MobileUIControl(obj).GetIDXC
		      
		      If iCurrentFocusObjID = iObjID Then
		        
		        Return MobileUIControl(obj)
		        
		      End If
		      
		    Next
		    
		    Return Nil
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E73207468652063757272656E7420666F637573656420766965772773206964656E7469666965722E
		Function GetCurrentFocusIDXC(Extends myContainer As MobileContainer) As Integer
		  #Pragma Unused myContainer
		  
		  #If TargetAndroid
		    
		    Declare Function getCurrentFocusID Lib "Object:myContainer:MobileContainer" Alias "getActivity()!!.getCurrentFocus()!!.getId" As Int32
		    
		    Try
		      
		      Return getCurrentFocusID
		      
		    Catch error As NilObjectException
		      
		      Return -1 ' No selection
		      
		    End Try
		    
		  #EndIf
		End Function
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
