#tag Module
Protected Module Button
	#tag CompatibilityFlags = ( TargetAndroid and ( Target64Bit ) )
	#tag Method, Flags = &h0
		Sub SetCornerRadiusXC(Extends myButton As MobileButton, myRadius As Integer)
		  #Pragma Unused myButton
		  
		  #If TargetAndroid
		    
		    Declare Sub setCornerRadius Lib "Object:myButton:MobileButton" (aRadius As Integer)
		    setCornerRadius(myRadius)
		    
		  #Else
		    
		    #Pragma Unused myRadius
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetCornerRadiusXC(Extends myButton As MobileDateTimePicker, myRadius As Integer)
		  #Pragma Unused myButton
		  
		  #If TargetAndroid
		    
		    Declare Sub setCornerRadius Lib "Object:myButton:MobileDateTimePicker" (aRadius As Integer)
		    setCornerRadius(myRadius)
		    
		  #Else
		    
		    #Pragma Unused myRadius
		    
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
