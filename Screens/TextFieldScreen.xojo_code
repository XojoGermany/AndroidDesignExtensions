#tag MobileScreen
Begin TemplateScreen TextFieldScreen
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
   Begin MobileTextField DefaultField
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Alignment       =   0
      Enabled         =   True
      Height          =   44
      Hint            =   "Default TextField"
      InputType       =   0
      Left            =   80
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Password        =   False
      ReadOnly        =   False
      Scope           =   2
      SelectedText    =   ""
      SelectionLength =   0
      SelectionStart  =   0
      Text            =   ""
      TextColor       =   &c00000000
      Top             =   80
      Visible         =   True
      Width           =   200
   End
   Begin MobileTextField BackgroundColorField
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Alignment       =   0
      Enabled         =   True
      Height          =   44
      Hint            =   "Background Color"
      InputType       =   0
      Left            =   80
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Password        =   False
      ReadOnly        =   False
      Scope           =   2
      SelectedText    =   ""
      SelectionLength =   0
      SelectionStart  =   0
      Text            =   ""
      TextColor       =   &c00000000
      Top             =   184
      Visible         =   True
      Width           =   200
   End
   Begin MobileTextField TransparentField
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Alignment       =   0
      Enabled         =   True
      Height          =   44
      Hint            =   "Transparent"
      InputType       =   0
      Left            =   80
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Password        =   False
      ReadOnly        =   False
      Scope           =   2
      SelectedText    =   ""
      SelectionLength =   0
      SelectionStart  =   0
      Text            =   ""
      TextColor       =   &c00000000
      Top             =   236
      Visible         =   True
      Width           =   200
   End
   Begin MobileTextField PaddingField
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Alignment       =   0
      Enabled         =   True
      Height          =   44
      Hint            =   "Padding"
      InputType       =   0
      Left            =   80
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Password        =   False
      ReadOnly        =   False
      Scope           =   2
      SelectedText    =   ""
      SelectionLength =   0
      SelectionStart  =   0
      Text            =   ""
      TextColor       =   &c00000000
      Top             =   288
      Visible         =   True
      Width           =   200
   End
   Begin MobileTextField HighlightColorField
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Alignment       =   0
      Enabled         =   True
      Height          =   44
      Hint            =   "Highlight Color"
      InputType       =   0
      Left            =   80
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Password        =   False
      ReadOnly        =   False
      Scope           =   2
      SelectedText    =   ""
      SelectionLength =   0
      SelectionStart  =   0
      Text            =   ""
      TextColor       =   &c00000000
      Top             =   132
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
		  Me.Text = "Text Fields"
		End Sub
	#tag EndEvent
	#tag Event
		Sub Pressed()
		  Close
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events BackgroundColorField
	#tag Event
		Sub Opening()
		  Me.BackgroundColor = &cD6D6D600
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events TransparentField
	#tag Event
		Sub Opening()
		  Me.BackgroundColor = &c000000FF
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PaddingField
	#tag Event
		Sub Opening()
		  Me.SetPadding(0, 20, 0, 10)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events HighlightColorField
	#tag Event
		Sub Opening()
		  Me.HighlightColor = Color.Red
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
