#tag MobileScreen
Begin TemplateScreen IndicatorScreen
   Compatibility   =   "(TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target64Bit)) or  (TargetAndroid and (Target64Bit))"
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
      HasGradient     =   True
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
   Begin AppearanceLabel DefaultLabel
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Alignment       =   1
      Enabled         =   True
      Height          =   30
      Left            =   20
      LineBreakMode   =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Scope           =   2
      Text            =   "Default"
      TextColor       =   &c00000000
      Top             =   64
      Visible         =   True
      Width           =   320
   End
   Begin MobileProgressBar DefaultProgressBar
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Enabled         =   True
      Height          =   20
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      MaximumValue    =   100.0
      MinimumValue    =   0.0
      Scope           =   2
      Top             =   102
      Value           =   50.0
      Visible         =   True
      Width           =   320
   End
   Begin MobileSlider DefaultSlider
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Enabled         =   True
      Height          =   30
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      MaximumValue    =   100.0
      MinimumValue    =   0.0
      Scope           =   2
      Top             =   130
      Value           =   50.0
      Visible         =   True
      Width           =   320
   End
   Begin AppearanceLabel CustomLabel
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Alignment       =   1
      Enabled         =   True
      Height          =   30
      Left            =   20
      LineBreakMode   =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Scope           =   2
      Text            =   "Global Custom Styles"
      TextColor       =   &c00000000
      Top             =   206
      Visible         =   True
      Width           =   320
   End
   Begin MobileProgressBar CustomProgressBar
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Enabled         =   True
      Height          =   20
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      MaximumValue    =   100.0
      MinimumValue    =   0.0
      Scope           =   2
      Top             =   244
      Value           =   50.0
      Visible         =   True
      Width           =   320
   End
   Begin MobileSlider CustomSlider
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Enabled         =   True
      Height          =   30
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      MaximumValue    =   100.0
      MinimumValue    =   0.0
      Scope           =   2
      Top             =   272
      Value           =   50.0
      Visible         =   True
      Width           =   320
   End
   Begin MobileSwitch DefaultSwitch
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Enabled         =   True
      Height          =   30
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   False
      Scope           =   2
      Top             =   168
      Value           =   False
      Visible         =   True
      Width           =   50
   End
   Begin MobileSwitch CustomSwitch
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Enabled         =   True
      Height          =   30
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   False
      Scope           =   2
      Top             =   310
      Value           =   False
      Visible         =   True
      Width           =   50
   End
   Begin AppearanceLabel CustomLabel1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Alignment       =   1
      Enabled         =   True
      Height          =   30
      Left            =   20
      LineBreakMode   =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Scope           =   2
      Text            =   "Individual Custom Styles"
      TextColor       =   &c00000000
      Top             =   348
      Visible         =   True
      Width           =   320
   End
   Begin MobileProgressBar CustomProgressBar1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Enabled         =   True
      Height          =   20
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      MaximumValue    =   100.0
      MinimumValue    =   0.0
      Scope           =   2
      Top             =   386
      Value           =   50.0
      Visible         =   True
      Width           =   320
   End
   Begin MobileSlider CustomSlider1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Enabled         =   True
      Height          =   30
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      MaximumValue    =   100.0
      MinimumValue    =   0.0
      Scope           =   2
      Top             =   414
      Value           =   50.0
      Visible         =   True
      Width           =   320
   End
   Begin AppearanceLabel InfoLabel
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Alignment       =   0
      Enabled         =   True
      Height          =   76
      Left            =   20
      LineBreakMode   =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   False
      Scope           =   2
      Text            =   "Since Xojo does not currently support dynamically generated Declares, these examples have no extension methods and the declares must be created manually in the Opening-Event."
      TextColor       =   &c00000000
      Top             =   452
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
		  Me.Text = "Indicators"
		End Sub
	#tag EndEvent
	#tag Event
		Sub Pressed()
		  Close
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events CustomProgressBar
	#tag Event
		Sub Opening()
		  Me.SetTintXC(Color.Red)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events CustomSlider
	#tag Event
		Sub Opening()
		  Me.SetTintXC(&c008F0000)
		  Me.SetThumbColorXC(&cFF930000)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events CustomSwitch
	#tag Event
		Sub Opening()
		  Me.SetTrackColorXC(&cFFD47900)
		  Me.SetThumbColorXC(&c94175100)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events CustomProgressBar1
	#tag Event
		Sub Opening()
		  Declare Sub setProgressBackgroundTintList Lib "Object:Me:MobileProgressBar" Alias "setProgressBackgroundTintList(android.content.res.ColorStateList.valueOf(android.graphics.Color.GREEN))"
		  setProgressBackgroundTintList
		  
		  Declare Sub setProgressTintList Lib "Object:Me:MobileProgressBar" Alias "setProgressTintList(android.content.res.ColorStateList.valueOf(android.graphics.Color.BLUE))"
		  setProgressTintList
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events CustomSlider1
	#tag Event
		Sub Opening()
		  Declare Sub setProgressBackgroundTintList Lib "Object:Me:MobileSlider" Alias "setProgressBackgroundTintList(android.content.res.ColorStateList.valueOf(android.graphics.Color.CYAN))"
		  setProgressBackgroundTintList
		  
		  Declare Sub setProgressTintList Lib "Object:Me:MobileSlider" Alias "setProgressTintList(android.content.res.ColorStateList.valueOf(android.graphics.Color.MAGENTA))"
		  setProgressTintList
		  
		  Var c As Color = &cFFD47900
		  
		  Declare Sub setTint Lib "Object:Me:MobileSlider" Alias "getThumb()!!.setTint" (tintColor As Integer)
		  setTint(c.ToInteger)
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