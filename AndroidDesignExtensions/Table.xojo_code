#tag Module
Protected Module Table
	#tag CompatibilityFlags = ( TargetAndroid and ( Target64Bit ) )
	#tag Method, Flags = &h0, CompatibilityFlags = (TargetConsole and (Target64Bit)) or  (TargetWeb and (Target64Bit)) or  (TargetDesktop and (Target64Bit)) or  (TargetAndroid and (Target64Bit))
		Sub BackgroundColor(Extends myTable As AndroidMobileTable, Assigns myColor As Color)
		  #Pragma Unused myTable
		  
		  #If TargetAndroid
		    
		    Declare Sub setBackgroundColor Lib "Object:myTable:AndroidMobileTable" (aColor As Integer)
		    setBackgroundColor(myColor.ToInteger)
		    
		  #Else
		    
		    #Pragma Unused myColor
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub OverScrollMode(Extends myTable As AndroidMobileTable, Assigns overScrollMode As Integer)
		  #Pragma Unused myTable
		  
		  #If TargetAndroid
		    
		    Declare Sub setOverScrollMode Lib "Object:myTable:AndroidMobileTable" (aOverScrollMode As Integer)
		    setOverScrollMode(overScrollMode)
		    
		  #Else
		    
		    #Pragma Unused overScrollMode
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 446566696E6573207468652064656C617920696E206D696C6C697365636F6E647320746861742061207363726F6C6C626172207761697473206265666F72652066616465206F75742E
		Sub ScrollBarDefaultDelayBeforeFade(Extends myTable As AndroidMobileTable, Assigns scrollBarDefaultDelayBeforeFade As Integer)
		  #Pragma Unused myTable
		  
		  #If TargetAndroid
		    
		    Declare Sub setScrollBarDefaultDelayBeforeFade Lib "Object:myTable:AndroidMobileTable" (aScrollBarDefaultDelayBeforeFade As Integer)
		    setScrollBarDefaultDelayBeforeFade(scrollBarDefaultDelayBeforeFade)
		    
		  #Else
		    
		    #Pragma Unused scrollBarDefaultDelayBeforeFade
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 446566696E6573207468652064656C617920696E206D696C6C697365636F6E647320746861742061207363726F6C6C6261722074616B657320746F2066616465206F75742E
		Sub ScrollBarFadeDuration(Extends myTable As AndroidMobileTable, Assigns scrollBarFadeDuration As Integer)
		  #Pragma Unused myTable
		  
		  #If TargetAndroid
		    
		    Declare Sub setScrollBarFadeDuration Lib "Object:myTable:AndroidMobileTable" (aScrollBarFadeDuration As Integer)
		    setScrollBarFadeDuration(scrollBarFadeDuration)
		    
		  #Else
		    
		    #Pragma Unused scrollBarFadeDuration
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 5365747320746865207769647468206F6620766572746963616C207363726F6C6C6261727320616E6420686569676874206F6620686F72697A6F6E74616C207363726F6C6C626172732E
		Sub ScrollBarSize(Extends myTable As AndroidMobileTable, Assigns scrollBarSize As Integer)
		  #Pragma Unused myTable
		  
		  #If TargetAndroid
		    
		    Declare Sub setScrollBarSize Lib "Object:myTable:AndroidMobileTable" (aScrollBarSize As Integer)
		    setScrollBarSize(scrollBarSize)
		    
		  #Else
		    
		    #Pragma Unused scrollBarSize
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 436F6E74726F6C7320746865207363726F6C6C626172207374796C6520616E6420706F736974696F6E2E20546865207363726F6C6C626172732063616E206265206F7665726C616964206F7220696E7365742E205768656E20696E7365742C20746865792061646420746F207468652070616464696E67206F662074686520766965772E20416E6420746865207363726F6C6C626172732063616E20626520647261776E20696E73696465207468652070616464696E672061726561206F72206F6E207468652065646765206F662074686520766965772E20466F72206578616D706C652C20696620612076696577206861732061206261636B67726F756E64206472617761626C6520616E6420796F752077616E7420746F206472617720746865207363726F6C6C6261727320696E73696465207468652070616464696E672073706563696669656420627920746865206472617761626C652C20796F752063616E2075736520696E736964654F7665726C6179206F7220696E73696465496E7365742E20496620796F752077616E74207468656D20746F20617070656172206174207468652065646765206F662074686520766965772C2069676E6F72696E67207468652070616464696E672C207468656E20796F752063616E20757365206F7574736964654F7665726C6179206F72206F757473696465496E7365742E
		Sub ScrollBarStyle(Extends myTable As AndroidMobileTable, Assigns style As Integer)
		  #Pragma Unused myTable
		  
		  #If TargetAndroid
		    
		    Declare Sub setScrollBarStyle Lib "Object:myTable:AndroidMobileTable" (aStyle As Integer)
		    setScrollBarStyle(style)
		    
		  #Else
		    
		    #Pragma Unused style
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, CompatibilityFlags = (TargetConsole and (Target64Bit)) or  (TargetWeb and (Target64Bit)) or  (TargetDesktop and (Target64Bit)) or  (TargetAndroid and (Target64Bit))
		Sub ShadowColor(Extends myTable As AndroidMobileTable, Assigns myColor As Color)
		  #Pragma Unused myTable
		  
		  #If TargetAndroid
		    
		    Declare Sub setOutlineSpotShadowColor Lib "Object:myTable:AndroidMobileTable" (aColor As Integer)
		    setOutlineSpotShadowColor(myColor.ToInteger)
		    
		  #Else
		    
		    #Pragma Unused myColor
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SmoothScrollBy(Extends myTable As AndroidMobileTable, distance As Integer, duration As Integer)
		  #Pragma Unused myTable
		  
		  #If TargetAndroid
		    
		    Declare Sub smoothScrollBy Lib "Object:myTable:AndroidMobileTable" (aDistance As Integer, aDuration As Integer)
		    smoothScrollBy(distance, duration)
		    
		  #Else
		    
		    #Pragma Unused distance
		    #Pragma Unused duration
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SmoothScrollToPosition(Extends myTable As AndroidMobileTable, position As Integer)
		  #Pragma Unused myTable
		  
		  #If TargetAndroid
		    
		    Declare Sub smoothScrollToPosition Lib "Object:myTable:AndroidMobileTable" (aPosition As Integer)
		    smoothScrollToPosition(position)
		    
		  #Else
		    
		    #Pragma Unused position
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub VerticalScrollbarPosition(Extends myTable As AndroidMobileTable, Assigns position As Integer)
		  #Pragma Unused myTable
		  
		  #If TargetAndroid
		    
		    Declare Sub setVerticalScrollbarPosition Lib "Object:myTable:AndroidMobileTable" (oPosition As Integer)
		    setVerticalScrollbarPosition(position)
		    
		  #Else
		    
		    #Pragma Unused position
		    
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
