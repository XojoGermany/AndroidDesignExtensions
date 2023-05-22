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

	#tag Method, Flags = &h0, Description = 546865207363726F6C6C6261722066616465206475726174696F6E2C20696E206D696C6C697365636F6E64732E
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

	#tag Method, Flags = &h0
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
