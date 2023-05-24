#tag Module
Protected Module HTMLViewer
	#tag CompatibilityFlags = ( TargetAndroid and ( Target64Bit ) )
	#tag Method, Flags = &h0
		Sub BackgroundColor(Extends myHTMLViewer As MobileHTMLViewer, Assigns myColor As Color)
		  #Pragma Unused myHTMLViewer
		  
		  #If TargetAndroid
		    
		    Declare Sub setBackgroundColor Lib "Object:myHTMLViewer:MobileHTMLViewer" (aColor As Integer)
		    setBackgroundColor(myColor.ToInteger)
		    
		  #Else
		    
		    #Pragma Unused myColor
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Find(Extends myHTMLViewer As MobileHTMLViewer, value As String)
		  #Pragma Unused myHTMLViewer
		  
		  #If TargetAndroid
		    
		    Declare Sub findAllAsync Lib "Object:myHTMLViewer:MobileHTMLViewer" (find As CString)
		    findAllAsync(value)
		    
		  #Else
		    
		    #Pragma Unused value
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub GoBackOrForward(Extends myHTMLViewer As MobileHTMLViewer, steps As Integer)
		  #Pragma Unused myHTMLViewer
		  
		  #If TargetAndroid
		    
		    Declare Sub _goBackOrForward Lib "Object:myHTMLViewer:MobileHTMLViewer" Alias "goBackOrForward" (aSteps As Integer)
		    _goBackOrForward(steps)
		    
		  #Else
		    
		    #Pragma Unused steps
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub OverScrollMode(Extends myHTMLViewer As MobileHTMLViewer, Assigns overScrollMode As Integer)
		  #Pragma Unused myHTMLViewer
		  
		  #If TargetAndroid
		    
		    Declare Sub setOverScrollMode Lib "Object:myHTMLViewer:MobileHTMLViewer" (aOverScrollMode As Integer)
		    setOverScrollMode(overScrollMode)
		    
		  #Else
		    
		    #Pragma Unused overScrollMode
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SaveAsWebArchive(Extends myHTMLViewer As MobileHTMLViewer, filename As String)
		  #Pragma Unused myHTMLViewer
		  
		  #If TargetAndroid
		    
		    Declare Sub saveWebArchive Lib "Object:myHTMLViewer:MobileHTMLViewer" (filename As CString)
		    saveWebArchive(filename)
		    
		  #Else
		    
		    #Pragma Unused filename
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 436F6E74726F6C7320746865207363726F6C6C626172207374796C6520616E6420706F736974696F6E2E20546865207363726F6C6C626172732063616E206265206F7665726C616964206F7220696E7365742E205768656E20696E7365742C20746865792061646420746F207468652070616464696E67206F662074686520766965772E20416E6420746865207363726F6C6C626172732063616E20626520647261776E20696E73696465207468652070616464696E672061726561206F72206F6E207468652065646765206F662074686520766965772E20466F72206578616D706C652C20696620612076696577206861732061206261636B67726F756E64206472617761626C6520616E6420796F752077616E7420746F206472617720746865207363726F6C6C6261727320696E73696465207468652070616464696E672073706563696669656420627920746865206472617761626C652C20796F752063616E2075736520696E736964654F7665726C6179206F7220696E73696465496E7365742E20496620796F752077616E74207468656D20746F20617070656172206174207468652065646765206F662074686520766965772C2069676E6F72696E67207468652070616464696E672C207468656E20796F752063616E20757365206F7574736964654F7665726C6179206F72206F757473696465496E7365742E
		Sub ScrollBarStyle(Extends myHTMLViewer As MobileHTMLViewer, Assigns style As Integer)
		  #Pragma Unused myHTMLViewer
		  
		  #If TargetAndroid
		    
		    Declare Sub setScrollBarStyle Lib "Object:myHTMLViewer:MobileHTMLViewer" (aStyle As Integer)
		    setScrollBarStyle(style)
		    
		  #Else
		    
		    #Pragma Unused style
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ShadowColor(Extends myHTMLViewer As MobileHTMLViewer, Assigns myColor As Color)
		  #Pragma Unused myHTMLViewer
		  
		  #If TargetAndroid
		    
		    Declare Sub setOutlineSpotShadowColor Lib "Object:myHTMLViewer:MobileHTMLViewer" (aColor As Integer)
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
