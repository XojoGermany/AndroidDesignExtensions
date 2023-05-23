#tag Module
Protected Module Screen
	#tag CompatibilityFlags = ( TargetAndroid and ( Target64Bit ) )
	#tag Method, Flags = &h0
		Sub BackgroundColor(Extends myScreen As MobileScreen, Assigns myColor As Color)
		  #Pragma Unused myScreen
		  
		  #If TargetAndroid
		    
		    Declare Sub setBackgroundColor Lib "Object:myScreen:MobileScreen" Alias "getWindow().getDecorView().setBackgroundColor" (aColor As Integer)
		    setBackgroundColor(myColor.ToInteger)
		    
		  #Else
		    
		    #Pragma Unused myColor
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub NavigationBarColor(Extends myScreen As MobileScreen, Assigns myColor As Color)
		  #Pragma Unused myScreen
		  
		  #If TargetAndroid
		    
		    Declare Sub setNavigationBarColor Lib "Object:myScreen:MobileScreen" Alias "getWindow().setNavigationBarColor" (aColor As Integer)
		    setNavigationBarColor(myColor.ToInteger)
		    
		  #Else
		    
		    #Pragma Unused myColor
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub NavigationBarDividerColor(Extends myScreen As MobileScreen, Assigns myColor As Color)
		  #Pragma Unused myScreen
		  
		  #If TargetAndroid
		    
		    Declare Sub setNavigationBarDividerColor Lib "Object:myScreen:MobileScreen" Alias "getWindow().setNavigationBarDividerColor" (aColor As Integer)
		    setNavigationBarDividerColor(myColor.ToInteger)
		    
		  #Else
		    
		    #Pragma Unused myColor
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub StatusBarColor(Extends myScreen As MobileScreen, Assigns myColor As Color)
		  #Pragma Unused myScreen
		  
		  #If TargetAndroid
		    
		    Declare Sub setStatusBarColor Lib "Object:myScreen:MobileScreen" Alias "getWindow().setStatusBarColor" (aType As Integer)
		    setStatusBarColor(myColor.ToInteger)
		    
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
