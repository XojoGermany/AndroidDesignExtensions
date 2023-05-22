#tag Module
Protected Module TextField
	#tag CompatibilityFlags = ( TargetAndroid and ( Target64Bit ) )
	#tag Method, Flags = &h0
		Sub BackgroundColor(Extends myTextField As MobileTextField, Assigns myColor As Color)
		  #Pragma Unused myTextField
		  
		  #If TargetAndroid
		    
		    Declare Sub setBackgroundColor Lib "Object:myTextField:MobileTextField" (value As Integer)
		    setBackgroundColor(myColor.ToInteger) ' 0 = Transparent
		    
		  #Else
		    
		    #Pragma Unused myColor
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub HighlightColor(Extends myTextField As MobileTextField, Assigns myColor As Color)
		  #Pragma Unused myTextField
		  
		  #If TargetAndroid
		    
		    Declare Sub setHighlightColor Lib "Object:myTextField:MobileTextField" (aColor As Integer)
		    setHighlightColor(myColor.ToInteger)
		    
		  #Else
		    
		    #Pragma Unused myColor
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetPadding(Extends myTextField As MobileTextField, left As Integer, top As Integer, right As Integer, bottom As Integer)
		  #Pragma Unused myTextField
		  
		  #If TargetAndroid
		    
		    Declare Sub setPadding Lib "Object:myTextField:MobileTextField" (aLeft As Integer, aTop As Integer, aRight As Integer, aBottom As Integer)
		    setPadding(left, top, right, bottom)
		    
		  #Else
		    
		    #Pragma Unused left
		    #Pragma Unused top
		    #Pragma Unused right
		    #Pragma Unused bottom
		    
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
