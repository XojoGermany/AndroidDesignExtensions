#tag Module
Protected Module ImageViewer
	#tag CompatibilityFlags = ( TargetAndroid and ( Target64Bit ) )
	#tag Method, Flags = &h0
		Sub AlphaValue(Extends myImageViewer As MobileImageViewer, Assigns myAlpha As Integer)
		  #Pragma Unused myImageViewer
		  
		  #If TargetAndroid
		    
		    Declare Sub setImageAlpha Lib "Object:myImageViewer:MobileImageViewer" (aAlpha As Integer)
		    setImageAlpha(myAlpha)
		    
		  #Else
		    
		    #Pragma Unused myAlpha
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub BackgroundColor(Extends myImageViewer As MobileImageViewer, Assigns myColor As Color)
		  #Pragma Unused myImageViewer
		  
		  #If TargetAndroid
		    
		    Declare Sub setBackgroundColor Lib "Object:myImageViewer:MobileImageViewer" (aColor As Integer)
		    setBackgroundColor(myColor.ToInteger)
		    
		  #Else
		    
		    #Pragma Unused myColor
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, CompatibilityFlags = (TargetConsole and (Target64Bit)) or  (TargetWeb and (Target64Bit)) or  (TargetDesktop and (Target64Bit)) or  (TargetAndroid and (Target64Bit))
		Sub ShadowColor(Extends myImageViewer As MobileImageViewer, Assigns myColor As Color)
		  #Pragma Unused myImageViewer
		  
		  #If TargetAndroid
		    
		    Declare Sub setOutlineSpotShadowColor Lib "Object:myImageViewer:MobileImageViewer" (aColor As Integer)
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
