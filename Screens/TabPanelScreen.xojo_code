#tag MobileScreen
Begin TemplateScreen TabPanelScreen
   Compatibility   =   ""
   HasNavigationBar=   False
   Modal           =   False
   Orientation     =   0
   Title           =   "Untitled"
   Begin NavigationBarContainer NavigationBarContainer1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      BackgroundColor =   &c00000000
      ControlCount    =   0
      Enabled         =   True
      HasBackButton   =   False
      HasBackgroundColor=   False
      HasGradient     =   False
      Height          =   56
      Left            =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Scope           =   2
      Text            =   ""
      Top             =   0
      Visible         =   True
      Width           =   360
   End
   Begin MobileTabPanel BackgroundColorPanel
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Count           =   0
      Enabled         =   True
      Height          =   140
      LastAddedTabIndex=   0
      LayoutTabIndex  =   0
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Scope           =   2
      SelectedTabIndex=   0
      Tabs            =   "Background\n0\n1309796351\rColor\n0\n91045887"
      Top             =   80
      Visible         =   True
      Width           =   320
   End
   Begin MobileTabPanel TabModePanel
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Count           =   0
      Enabled         =   True
      Height          =   140
      LastAddedTabIndex=   0
      LayoutTabIndex  =   0
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Scope           =   2
      SelectedTabIndex=   0
      Tabs            =   "Tab 1\n0\n1309796351\rTab 2\n0\n91045887\rTab 3\n0\n\rTab 4\n0\n\rTab 5\n0\n\rTab 6\n0\n\rTab 7\n0\n\rTab 8\n0\n"
      Top             =   245
      Visible         =   True
      Width           =   320
   End
End
#tag EndMobileScreen

#tag ScreenCode
#tag EndScreenCode

#tag Events NavigationBarContainer1
	#tag Event
		Sub Opening()
		  Me.Text = "Tab Panels"
		End Sub
	#tag EndEvent
	#tag Event
		Sub Pressed()
		  Close
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events BackgroundColorPanel
	#tag Event
		Sub Opening()
		  Me.IconAt(0) = Picture.SystemImage("format_paint", Picture.SystemImageSizes.dp36, Color.AccentThemeColor)
		  Me.IconAt(1) = Picture.SystemImage("format_color_fill", Picture.SystemImageSizes.dp36, Color.AccentThemeColor)
		  
		  Me.BackgroundColor = &c76D6FF00
		  Me.SetTextColors(Color.White, Color.AccentThemeColor)
		  Me.SelectedTabIndicatorColor = &c94175100
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events TabModePanel
	#tag Event
		Sub Opening()
		  Me.TabMode = 0
		End Sub
	#tag EndEvent
#tag EndEvents
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
