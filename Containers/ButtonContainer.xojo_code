#tag MobileContainer
Begin MobileContainer ButtonContainer
   AccessibilityHint=   ""
   AccessibilityLabel=   ""
   Compatibility   =   ""
   Enabled         =   True
   Height          =   410
   LockBottom      =   False
   LockLeft        =   True
   LockRight       =   True
   LockTop         =   True
   Visible         =   True
   Width           =   360
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
      Top             =   82
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
      Top             =   290
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
      Top             =   134
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
      Top             =   186
      Visible         =   True
      Width           =   200
   End
   Begin MobileDateTimePicker DateTimePicker1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      CaptionColor    =   &c00000000
      DateCaption     =   "Choose a Date"
      DisplayMode     =   1
      Enabled         =   True
      Height          =   44
      Left            =   80
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Scope           =   2
      TimeCaption     =   "Choose a Time"
      Top             =   342
      Visible         =   True
      Width           =   200
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
      Top             =   30
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
      Top             =   238
      Visible         =   True
      Width           =   200
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
      Top             =   385
      Visible         =   True
      Width           =   360
   End
End
#tag EndMobileContainer

#tag ScreenCode
#tag EndScreenCode

#tag Events BackgroundColorButton
	#tag Event
		Sub Opening()
		  Me.BackgroundColor = &c6AC4DC00
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
#tag Events DateTimePicker1
	#tag Event
		Sub Opening()
		  Me.BackgroundColor = &cFFD60A00
		  Me.CornerRadius = 0
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
