#tag MobileContainer
Begin MobileContainer LabelContainer
   AccessibilityHint=   ""
   AccessibilityLabel=   ""
   Compatibility   =   "(TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target64Bit)) or  (TargetAndroid and (Target64Bit))"
   Enabled         =   True
   Height          =   360
   LockBottom      =   False
   LockLeft        =   True
   LockRight       =   True
   LockTop         =   True
   Visible         =   True
   Width           =   360
   Begin AppearanceLabel BackgroundColorLabel
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Alignment       =   1
      Enabled         =   True
      Height          =   40
      Left            =   80
      LineBreakMode   =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Scope           =   2
      Text            =   "Background Color"
      TextColor       =   &c00000000
      Top             =   78
      Visible         =   True
      Width           =   200
   End
   Begin AppearanceLabel BackgroundShadowLabel
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Alignment       =   1
      Enabled         =   True
      Height          =   40
      Left            =   80
      LineBreakMode   =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Scope           =   2
      Text            =   "With Green Shadow"
      TextColor       =   &c00000000
      Top             =   152
      Visible         =   True
      Width           =   200
   End
   Begin AppearanceLabel DefaultLabel
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Alignment       =   1
      Enabled         =   True
      Height          =   40
      Left            =   80
      LineBreakMode   =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Scope           =   2
      Text            =   "Default Label"
      TextColor       =   &c00000000
      Top             =   30
      Visible         =   True
      Width           =   200
   End
   Begin AppearanceLabel ShadowLabel
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Alignment       =   1
      Enabled         =   True
      Height          =   40
      Left            =   80
      LineBreakMode   =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Scope           =   2
      Text            =   "Shadow Label"
      TextColor       =   &c00000000
      Top             =   216
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
      Top             =   328
      Visible         =   True
      Width           =   360
   End
   Begin AppearanceLabel EditableLabel
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Alignment       =   1
      Enabled         =   True
      Height          =   40
      Left            =   80
      LineBreakMode   =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Scope           =   2
      Text            =   "Click me to edit Text"
      TextColor       =   &c00000000
      Top             =   280
      Visible         =   True
      Width           =   200
   End
End
#tag EndMobileContainer

#tag ScreenCode
#tag EndScreenCode

#tag Events BackgroundColorLabel
	#tag Event
		Sub Opening()
		  Me.SetBackgroundColorXC(&cFFD60A00)
		  Me.SetOutlineSpotShadowColorXC(Color.Clear)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events BackgroundShadowLabel
	#tag Event
		Sub Opening()
		  Me.SetBackgroundColorXC(Color.White)
		  Me.SetOutlineSpotShadowColorXC(Color.Green)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events ShadowLabel
	#tag Event
		Sub Opening()
		  Me.TextFont = Font.BoldSystemFont(24)
		  Me.TextColor = Color.Red
		  
		  Me.SetShadowLayerXC(10, 1, 1, Color.Blue)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EditableLabel
	#tag Event
		Sub Opening()
		  Me.SetInputTypeXC(1) ' Text
		  Me.SetShowSoftInputOnFocusXC(True)
		  Me.SetTextIsSelectableXC(True)
		  Me.SetErrorXC("Error")
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
