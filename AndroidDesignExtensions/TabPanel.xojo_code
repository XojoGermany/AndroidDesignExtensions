#tag Module
Protected Module TabPanel
	#tag CompatibilityFlags = ( TargetAndroid and ( Target64Bit ) )
	#tag Method, Flags = &h0
		Sub BackgroundColor(Extends myTabPanel As MobileTabPanel, Assigns myColor As Color)
		  #Pragma Unused myTabPanel
		  
		  #If TargetAndroid
		    
		    Declare Sub setBackgroundColor Lib "Object:myTabPanel:MobileTabPanel" (aColor As Integer)
		    setBackgroundColor(myColor.ToInteger)
		    
		  #Else
		    
		    #Pragma Unused myColor
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SelectedTabIndicatorColor(Extends myTabPanel As MobileTabPanel, Assigns myColor As Color)
		  #Pragma Unused myTabPanel
		  
		  #If TargetAndroid
		    
		    Declare Sub setSelectedTabIndicatorColor Lib "Object:myTabPanel:MobileTabPanel" (aColor As Integer)
		    setSelectedTabIndicatorColor(myColor.ToInteger)
		    
		  #Else
		    
		    #Pragma Unused myColor
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetTextColors(Extends myTabPanel As MobileTabPanel, normalColor As Color, selectedColor As Color)
		  #Pragma Unused myTabPanel
		  
		  #If TargetAndroid
		    
		    Declare Sub setTabTextColors Lib "Object:myTabPanel:MobileTabPanel" (aNormalColor As Integer, aSelectedColor As Integer)
		    setTabTextColors(normalColor.ToInteger, selectedColor.ToInteger)
		    
		  #Else
		    
		    #Pragma Unused normalColor
		    #Pragma Unused selectedColor
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub TabIndicatorAnimationMode(Extends myTabPanel As MobileTabPanel, Assigns tabIndicatorAnimationMode As Integer)
		  #Pragma Unused myTabPanel
		  
		  #If TargetAndroid
		    
		    Declare Sub setTabIndicatorAnimationMode Lib "Object:myTabPanel:MobileTabPanel" (aTabIndicatorAnimationMode As Integer)
		    setTabIndicatorAnimationMode(tabIndicatorAnimationMode)
		    
		  #Else
		    
		    #Pragma Unused tabIndicatorAnimationMode
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub TabMode(Extends myTabPanel As MobileTabPanel, Assigns mode As Integer)
		  #Pragma Unused myTabPanel
		  
		  #If TargetAndroid
		    
		    Declare Sub setTabMode Lib "Object:myTabPanel:MobileTabPanel" (aMode As Integer)
		    setTabMode(mode)
		    
		  #Else
		    
		    #Pragma Unused mode
		    
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
