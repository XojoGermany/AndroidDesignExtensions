#tag MobileScreen
Begin TemplateScreenWithBackButton SystemImagesScreen
   Compatibility   =   "(TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target64Bit)) or  (TargetAndroid and (Target64Bit))"
   Device          =   1
   HasBackButton   =   True
   HasNavigationBar=   True
   Modal           =   False
   Orientation     =   0
   Title           =   "System Images"
   Begin AndroidMobileTable Table1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Enabled         =   True
      HasHeader       =   False
      Header          =   ""
      Height          =   662
      InitialValue    =   ""
      LastAddedRowIndex=   0
      LastRowIndex    =   0
      Left            =   0
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      RowCount        =   0
      Scope           =   2
      ScrollPosition  =   0
      SelectedRowIndex=   0
      SelectedRowText =   ""
      SeparatorColor  =   &c00000000
      SeparatorThickness=   0
      Top             =   38
      Visible         =   True
      Width           =   360
   End
   Begin AppearanceLabel CountLabel
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Alignment       =   1
      Enabled         =   True
      Height          =   24
      Left            =   130
      LineBreakMode   =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      MaximumCharactersAllowed=   0
      Scope           =   2
      Text            =   "Untitled"
      TextColor       =   &c00000000
      Top             =   10
      Visible         =   True
      Width           =   100
   End
End
#tag EndMobileScreen

#tag ScreenCode
	#tag Event
		Sub Opening()
		  LoadSystemImages
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h21
		Private Sub LoadSystemImages()
		  For Each sImageName As String In App.SystemImages
		    
		    Table1.AddRow(sImageName)
		    Table1.RowTextColorAt(Table1.LastAddedRowIndex) = If(Color.IsDarkMode, Color.White, Color.Black)
		    Table1.RowPictureAt(Table1.LastAddedRowIndex) = Picture.SystemImage(sImageName, Picture.SystemImageSizes.dp48, If(Color.IsDarkMode, Color.White, Color.Black))
		    
		  Next
		  
		  CountLabel.Text = App.SystemImages.Count.ToString + " Images"
		End Sub
	#tag EndMethod


#tag EndScreenCode

#tag Events Table1
	#tag Event
		Sub Opening()
		  Me.SetFastScrollAlwaysVisibleXC(True)
		  Me.SetFastScrollEnabledXC(True)
		  
		  ' Working for API 29+ (Android 10+)
		  If System.Version.MajorVersion >= 10 And Color.IsDarkMode Then
		    
		    Me.SetVerticalScrollbarThumbColor(&c73737D)
		    
		  End If
		  
		  Me.SeparatorColor = If(Color.IsDarkMode, &c21212100, &cCACACC00)
		End Sub
	#tag EndEvent
	#tag Event
		Sub SelectionChanged()
		  Var cb As New Clipboard
		  
		  cb.Text = Me.SelectedRowText
		  cb.Close
		  
		  MobilePopupMessage.Show("Copied Image Name '" + Me.SelectedRowText + "' to clipboard.")
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events CountLabel
	#tag Event
		Sub Opening()
		  Me.TextFont = Font.SystemFont(14)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag ViewBehavior
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
	#tag ViewProperty
		Name="HasBackButton"
		Visible=true
		Group="Behavior"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
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
