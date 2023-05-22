#tag Module
Protected Module TextArea
	#tag CompatibilityFlags = ( TargetAndroid and ( Target64Bit ) )
	#tag Method, Flags = &h0
		Sub BackgroundColor(Extends myTextArea As MobileTextArea, Assigns myColor As Color)
		  #Pragma Unused myTextArea
		  
		  #If TargetAndroid
		    
		    Declare Sub setBackgroundColor Lib "Object:myTextArea:MobileTextArea" (aColor As Integer)
		    setBackgroundColor(myColor.ToInteger) ' 0 = Transparent
		    
		  #Else
		    
		    #Pragma Unused myColor
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 557064617465732074686520746F702070616464696E67206F662074686520546578745669657720736F2074686174204669727374426173656C696E65546F546F70486569676874206973207468652064697374616E6365206265747765656E2074686520746F70206F662074686520546578745669657720616E64206669727374206C696E65277320626173656C696E652E
		Sub FirstBaselineToTopHeight(Extends myTextArea As MobileTextArea, Assigns firstBaselineToTopHeight As Integer)
		  #Pragma Unused myTextArea
		  
		  #If TargetAndroid
		    
		    Declare Sub setFirstBaselineToTopHeight Lib "Object:myTextArea:MobileTextArea" (aFirstBaselineToTopHeight As Integer)
		    setFirstBaselineToTopHeight(firstBaselineToTopHeight)
		    
		  #Else
		    
		    #Pragma Unused firstBaselineToTopHeight
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub HighlightColor(Extends myTextArea As MobileTextArea, Assigns myColor As Color)
		  #Pragma Unused myTextArea
		  
		  #If TargetAndroid
		    
		    Declare Sub setHighlightColor Lib "Object:myTextArea:MobileTextArea" (aColor As Integer)
		    setHighlightColor(myColor.ToInteger)
		    
		  #Else
		    
		    #Pragma Unused myColor
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 557064617465732074686520626F74746F6D2070616464696E67206F662074686520546578745669657720736F2074686174204C617374426173656C696E65546F426F74746F6D486569676874206973207468652064697374616E6365206265747765656E2074686520626F74746F6D206F662074686520546578745669657720616E6420746865206C617374206C696E65277320626173656C696E652E
		Sub LastBaselineToBottomHeight(Extends myTextArea As MobileTextArea, Assigns lastBaselineToBottomHeight As Integer)
		  #Pragma Unused myTextArea
		  
		  #If TargetAndroid
		    
		    Declare Sub setLastBaselineToBottomHeight Lib "Object:myTextArea:MobileTextArea" (aLastBaselineToBottomHeight As Integer)
		    setLastBaselineToBottomHeight(lastBaselineToBottomHeight)
		    
		  #Else
		    
		    #Pragma Unused lastBaselineToBottomHeight
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 5365747320616E206578706C69636974206C696E652068656967687420666F72207468697320546578745669657720696E20506978656C732E
		Sub LineHeight(Extends myTextArea As MobileTextArea, Assigns lineHeight As Integer)
		  #Pragma Unused myTextArea
		  
		  #If TargetAndroid
		    
		    Declare Sub setLineHeight Lib "Object:myTextArea:MobileTextArea" (aLineHeight As Integer)
		    setLineHeight(lineHeight)
		    
		  #Else
		    
		    #Pragma Unused lineHeight
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetPadding(Extends myTextArea As MobileTextArea, left As Integer, top As Integer, right As Integer, bottom As Integer)
		  #Pragma Unused myTextArea
		  
		  #If TargetAndroid
		    
		    Declare Sub setPadding Lib "Object:myTextArea:MobileTextArea" (aLeft As Integer, aTop As Integer, aRight As Integer, aBottom As Integer)
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
