#tag Class
Protected Class TemplateScreen
Inherits MobileScreen
	#tag CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target64Bit)) or  (TargetAndroid and (Target64Bit))
	#tag Event
		Sub Opening()
		  Self.SetBackgroundColorXC(If(Color.IsDarkMode, &c121212, Color.White))
		  Self.SetNavigationBarColorXC(If(Color.IsDarkMode, &c121212, Color.White))
		  Self.SetNavigationBarDividerColorXC(If(Color.IsDarkMode, &c121212, Color.White))
		  
		  If Color.IsDarkMode Then
		    
		    Self.SetStatusBarColorXC(&c121212)
		    
		  End If
		  
		  ' Call Opening-Event
		  RaiseEvent Opening
		  
		  For Each ctrl As MobileUIControl In Self.Controls
		    
		    If ctrl IsA MobileButton Then
		      
		      MobileButton(ctrl).SetElevationXC(0)
		      
		    End If
		    
		  Next
		End Sub
	#tag EndEvent


	#tag Hook, Flags = &h0
		Event Opening()
	#tag EndHook


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
		#tag ViewProperty
			Name="ControlCount"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Title"
			Visible=true
			Group="Behavior"
			InitialValue="Untitled"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="HasNavigationBar"
			Visible=true
			Group="Behavior"
			InitialValue="True"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Modal"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="NavigationBarHeight"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
