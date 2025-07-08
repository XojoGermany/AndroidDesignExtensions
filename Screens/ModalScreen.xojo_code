#tag MobileScreen
Begin MobileScreen ModalScreen
   Compatibility   =   "(TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target64Bit)) or  (TargetAndroid and (Target64Bit))"
   Device          =   1
   HasBackButton   =   False
   HasNavigationBar=   False
   Modal           =   True
   Orientation     =   0
   SupportedOrientation=   0
   Title           =   "Untitled"
   Begin MobileButton CloseButton
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Caption         =   "Close"
      CaptionColor    =   &cFFFFFF00
      Enabled         =   True
      Height          =   44
      Left            =   240
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      Scope           =   2
      TextFont        =   ""
      TextSize        =   0
      Top             =   126
      Visible         =   True
      Width           =   100
   End
   Begin MobileImageViewer DimAmountImage1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      DisplayMode     =   0
      Enabled         =   True
      Height          =   24
      Image           =   0
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   False
      Scope           =   2
      Top             =   42
      Visible         =   True
      Width           =   24
   End
   Begin MobileSlider DimAmountSlider
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Enabled         =   True
      Height          =   30
      Left            =   44
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      MaximumValue    =   100.0
      MinimumValue    =   0.0
      Scope           =   2
      Top             =   39
      Value           =   50.0
      Visible         =   True
      Width           =   275
   End
   Begin MobileImageViewer DimAmountImage2
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      DisplayMode     =   0
      Enabled         =   True
      Height          =   24
      Image           =   0
      Left            =   316
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      Scope           =   2
      Top             =   42
      Visible         =   True
      Width           =   24
   End
   Begin MobileSlider ElevationSlider
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
      Top             =   97
      Value           =   0.0
      Visible         =   True
      Width           =   320
   End
   Begin AppearanceLabel DimAmountLabel
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Alignment       =   0
      Enabled         =   True
      Height          =   40
      Left            =   20
      LineBreakMode   =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   False
      MaximumCharactersAllowed=   0
      Scope           =   2
      Text            =   "Dim Amount"
      TextColor       =   &c00000000
      TextFont        =   ""
      TextSize        =   0
      Top             =   14
      Visible         =   True
      Width           =   100
   End
   Begin AppearanceLabel ElevationLabel
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Alignment       =   0
      Enabled         =   True
      Height          =   40
      Left            =   20
      LineBreakMode   =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   False
      MaximumCharactersAllowed=   0
      Scope           =   2
      Text            =   "Elevation"
      TextColor       =   &c00000000
      TextFont        =   ""
      TextSize        =   0
      Top             =   74
      Visible         =   True
      Width           =   100
   End
End
#tag EndMobileScreen

#tag ScreenCode
	#tag Event
		Sub Opening()
		  SetLayout
		End Sub
	#tag EndEvent

	#tag Event
		Sub OrientationChanged()
		  Timer.CallLater(500, AddressOf SetLayout)
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h21
		Private Sub SetLayout()
		  Self.SetLayoutXC(600, 500)
		End Sub
	#tag EndMethod


#tag EndScreenCode

#tag Events CloseButton
	#tag Event
		Sub Pressed()
		  Close
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events DimAmountImage1
	#tag Event
		Sub Opening()
		  Me.Image = Picture.SystemImage("vanish", 24)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events DimAmountSlider
	#tag Event
		Sub ValueChanged()
		  Self.SetDimAmountXC(Me.Value / 100)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events DimAmountImage2
	#tag Event
		Sub Opening()
		  Me.Image = Picture.SystemImage("white_balance_sunny", 24)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events ElevationSlider
	#tag Event
		Sub ValueChanged()
		  Self.SetElevationXC(Me.Value)
		End Sub
	#tag EndEvent
	#tag Event
		Sub Opening()
		  Self.SetElevationXC(0)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag ViewBehavior
	#tag ViewProperty
		Name="HasBackButton"
		Visible=true
		Group="Behavior"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="ScaleFactor"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="Double"
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
