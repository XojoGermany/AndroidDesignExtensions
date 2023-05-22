#tag Module
Protected Module Container
	#tag CompatibilityFlags = ( TargetAndroid and ( Target64Bit ) )
	#tag Method, Flags = &h0
		Sub SetBackgroundColor(Extends myContainer As MobileContainer, myColor As Color)
		  ' We can't use Assign here since it results in a Compiler Error.
		  
		  #Pragma Unused myContainer
		  
		  #If TargetAndroid
		    
		    Declare Sub setBackgroundColor Lib "Object:myContainer:MobileContainer" Alias "getView()!!.setBackgroundColor" (aColor As Integer)
		    setBackgroundColor(myColor.ToInteger)
		    
		  #Else
		    
		    #Pragma Unused myColor
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, CompatibilityFlags = (TargetConsole and (Target64Bit)) or  (TargetWeb and (Target64Bit)) or  (TargetDesktop and (Target64Bit)) or  (TargetAndroid and (Target64Bit))
		Sub ShadowColor(Extends myContainer As MobileContainer, Assigns myColor As Color)
		  #Pragma Unused myContainer
		  
		  #If TargetAndroid
		    
		    Declare Sub setOutlineSpotShadowColor Lib "Object:myContainer:MobileContainer" Alias "getView()!!.setOutlineSpotShadowColor" (aColor As Integer)
		    setOutlineSpotShadowColor(myColor.ToInteger)
		    
		  #Else
		    
		    #Pragma Unused myColor
		    
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
