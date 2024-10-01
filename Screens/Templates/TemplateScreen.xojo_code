#tag Class
Protected Class TemplateScreen
Inherits MobileScreen
	#tag Event
		Sub Opening()
		  If Color.IsDarkMode Then
		    
		    Self.SetBackgroundColorXC(&c1A1B21)
		    
		  End If
		  
		  If Not Color.IsDarkMode Then
		    
		    ' Set System Bars Text Color to the dark mode one
		    
		    Var APIVersionString As String = System.Version.BuildVersion
		    Var APIVersion As Integer = APIVersionString.ToInteger
		    
		    ' Cast Android API Version
		    Select Case  APIVersion
		    Case Is <= 29
		      ' Use setSystemUiVisibility()
		      Self.SetSystemUiVisibilityXC(Self.GetSystemUiVisibilityXC + kSYSTEM_UI_FLAG_LIGHT_STATUS_BAR)
		    Case Is >= 30
		      ' Use WindowInsetsController.setSystemBarsAppearance()
		      Self.SetSystemBarsAppearanceXC(kAPPEARANCE_LIGHT_STATUS_BARS, kAPPEARANCE_LIGHT_STATUS_BARS)
		    End Select
		    
		  End If
		  
		  RaiseEvent Opening
		  
		  Self.SetMaterialToolbarElevationXC(0) ' remove the toolbars shadow
		  Self.SetMaterialToolbarBackgroundColorXC(ToolbarColor)
		  Self.SetTitleCenteredXC(TitleCentered)
		  Self.SetTitleTextColorXC(If(Color.IsDarkMode, &cF1F0F7, Color.Black))
		  Self.SetTitleTextSizeXC(If(Self IsA TemplateScreenWithBackButton, 1, 0), 17.5)
		  
		  If StatusBarColor <> Color.Clear Then
		    
		    Self.SetStatusBarColorXC(StatusBarColor)
		    
		  End If
		  
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


	#tag Property, Flags = &h0
		StatusBarColor As Color = Color.Clear
	#tag EndProperty

	#tag Property, Flags = &h0
		TitleCentered As Boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		ToolbarColor As Color
	#tag EndProperty


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
			Visible=true
			Group="Behavior"
			InitialValue="False"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="HasBackButton"
			Visible=true
			Group="Behavior"
			InitialValue="True"
			Type="Boolean"
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
			Name="NavigationBarHeight"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="ToolbarColor"
			Visible=false
			Group="Behavior"
			InitialValue="&c000000"
			Type="Color"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="TitleCentered"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="StatusBarColor"
			Visible=false
			Group="Behavior"
			InitialValue="Color.Clear"
			Type="Color"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
