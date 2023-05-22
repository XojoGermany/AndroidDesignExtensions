#tag MobileScreen
Begin TemplateScreen ButtonScreen
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
      Height          =   56
      Left            =   0
      LockBottom      =   False
      LockedInPosition=   True
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Scope           =   2
      Text            =   ""
      Top             =   0
      Visible         =   True
      Width           =   360
   End
   Begin MobileButton DefaultButton
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Caption         =   "Default Button"
      CaptionColor    =   &cFFFFFF00
      Enabled         =   True
      Height          =   44
      Left            =   80
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Scope           =   2
      Top             =   85
      Visible         =   True
      Width           =   200
   End
   Begin MobileButton BackgroundColorButton
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Caption         =   "Background Color"
      CaptionColor    =   &cFFFFFF00
      Enabled         =   True
      Height          =   44
      Left            =   80
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Scope           =   2
      Top             =   137
      Visible         =   True
      Width           =   200
   End
   Begin MobileButton CornerRadiusButton
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Caption         =   "Corner Radius"
      CaptionColor    =   &cFFFFFF00
      Enabled         =   True
      Height          =   44
      Left            =   80
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Scope           =   2
      Top             =   189
      Visible         =   True
      Width           =   200
   End
   Begin MobileButton CornerRadiusButton2
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Caption         =   "Corner Radius"
      CaptionColor    =   &cFFFFFF00
      Enabled         =   True
      Height          =   44
      Left            =   80
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Scope           =   2
      Top             =   241
      Visible         =   True
      Width           =   200
   End
   Begin MobileButton ShadowButton
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Caption         =   "Without Shadow"
      CaptionColor    =   &cFFFFFF00
      Enabled         =   True
      Height          =   44
      Left            =   80
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Scope           =   2
      Top             =   293
      Visible         =   True
      Width           =   200
   End
   Begin MobileButton ColoredShadowButton
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Caption         =   "Colored Shadow"
      CaptionColor    =   &cFFFFFF00
      Enabled         =   True
      Height          =   44
      Left            =   80
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Scope           =   2
      Top             =   345
      Visible         =   True
      Width           =   200
   End
End
#tag EndMobileScreen

#tag ScreenCode
#tag EndScreenCode

#tag Events NavigationBarContainer1
	#tag Event
		Sub Opening()
		  Me.Text = "Buttons"
		End Sub
	#tag EndEvent
	#tag Event
		Sub Pressed()
		  Close
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events BackgroundColorButton
	#tag Event
		Sub Opening()
		  Me.BackgroundColor = &c6AC4DC00
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events CornerRadiusButton
	#tag Event
		Sub Opening()
		  Me.BackgroundColor = &cFF375F00
		  Me.CornerRadius = 0
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events CornerRadiusButton2
	#tag Event
		Sub Opening()
		  Me.BackgroundColor = &c5E5CE600
		  Me.CornerRadius = 80
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events ShadowButton
	#tag Event
		Sub Opening()
		  Me.ShadowColor = &c000000FF
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events ColoredShadowButton
	#tag Event
		Sub Opening()
		  Me.ShadowColor = Color.Red
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
