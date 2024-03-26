#tag MobileContainer
Begin MobileContainer TabPanelContainer
   AccessibilityHint=   ""
   AccessibilityLabel=   ""
   Compatibility   =   "(TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target64Bit)) or  (TargetAndroid and (Target64Bit))"
   Enabled         =   True
   Height          =   400
   LockBottom      =   False
   LockLeft        =   True
   LockRight       =   True
   LockTop         =   True
   Visible         =   True
   Width           =   360
   Begin MobileTabPanel BackgroundColorPanel
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Enabled         =   True
      Height          =   140
      LastAddedPanelIndex=   0
      LayoutTabIndex  =   0
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      PanelCount      =   0
      Scope           =   2
      SelectedPanelIndex=   0
      Tabs            =   "Background\n0\n1309796351\rColor\n0\n91045887"
      Top             =   30
      Visible         =   True
      Width           =   320
   End
   Begin MobileTabPanel TabModePanel
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Enabled         =   True
      Height          =   140
      LastAddedPanelIndex=   0
      LayoutTabIndex  =   0
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      PanelCount      =   0
      Scope           =   2
      SelectedPanelIndex=   0
      Tabs            =   "Tab 1\n0\n1309796351\rTab 2\n0\n91045887\rTab 3\n0\n\rTab 4\n0\n\rTab 5\n0\n\rTab 6\n0\n\rTab 7\n0\n\rTab 8\n0\n"
      Top             =   195
      Visible         =   True
      Width           =   320
   End
   Begin MobileCanvas FixBottomPaddingCanvas
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Enabled         =   True
      Height          =   22
      Left            =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Scope           =   2
      Top             =   348
      Visible         =   True
      Width           =   360
   End
End
#tag EndMobileContainer

#tag ScreenCode
#tag EndScreenCode

#tag Events BackgroundColorPanel
	#tag Event
		Sub Opening()
		  Me.IconAt(0) = Picture.SystemImage("format_paint", Picture.SystemImageSizes.dp18, Color.AccentThemeColor)
		  Me.IconAt(1) = Picture.SystemImage("format_color_fill", Picture.SystemImageSizes.dp18, Color.AccentThemeColor)
		  
		  Me.SetBackgroundColorXC(If(Color.IsDarkMode, &c46464600, &c76D6FF00))
		  Me.SetInlineLabelXC(False)
		  Me.SetTabTextColorsXC(Color.White, Color.AccentThemeColor)
		  Me.SetSelectedTabIndicatorColorXC(If(Color.IsDarkMode, Color.Red, &c94175100))
		  Me.SetSelectedTabIndicatorGravityXC(TabIndicatorGravityXC.Top)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events TabModePanel
	#tag Event
		Sub Opening()
		  Me.SetTabTextColorsXC(Color.LightGray, If(Color.IsDarkMode, Color.Orange, Color.Black))
		  Me.SetTabModeXC(TabModesXC.Scrollable)
		  Me.SetTabBackgroundColorAtXC(1, If(Color.IsDarkMode, Color.Yellow, &cFF7E7900))
		  Me.SetUnboundedRippleXC(True)
		  
		  Me.SetBadgeTextAtXC(0, "Xojo")
		  
		  Me.SetBadgeBackgroundColorAtXC(1, &c4F8F0000)
		  Me.SetBadgeNumberAtXC(1, 12)
		  Me.SetBadgeTextColorAtXC(1, &c73FA7900)
		  
		  Me.SetBadgeAlphaAtXC(3, 125)
		  Me.SetBadgeNumberAtXC(3, 4)
		  Me.SetBadgeGravityAtXC(3, BadgeGravityXC.TopStart)
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
		Name="Height"
		Visible=true
		Group="Position"
		InitialValue="400"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Width"
		Visible=true
		Group="Position"
		InitialValue="360"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="LockLeft"
		Visible=true
		Group="Behavior"
		InitialValue=""
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="LockRight"
		Visible=true
		Group="Behavior"
		InitialValue=""
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="LockTop"
		Visible=true
		Group="Behavior"
		InitialValue=""
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="LockBottom"
		Visible=true
		Group="Behavior"
		InitialValue=""
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Enabled"
		Visible=true
		Group="UI Control"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Visible"
		Visible=true
		Group="UI Control"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="AccessibilityHint"
		Visible=true
		Group="UI Control"
		InitialValue=""
		Type="String"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
	#tag ViewProperty
		Name="AccessibilityLabel"
		Visible=true
		Group="UI Control"
		InitialValue=""
		Type="String"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
	#tag ViewProperty
		Name="ControlCount"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
#tag EndViewBehavior
