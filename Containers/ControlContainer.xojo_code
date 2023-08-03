#tag MobileContainer
Begin MobileContainer ControlContainer
   AccessibilityHint=   ""
   AccessibilityLabel=   ""
   Compatibility   =   "(TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target64Bit)) or  (TargetAndroid and (Target64Bit))"
   Enabled         =   True
   Height          =   588
   LockBottom      =   False
   LockLeft        =   True
   LockRight       =   True
   LockTop         =   True
   Visible         =   True
   Width           =   360
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
      Top             =   524
      Visible         =   True
      Width           =   360
   End
   Begin AppearanceLabel RotationLabel
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Alignment       =   0
      Enabled         =   True
      Height          =   28
      Left            =   20
      LineBreakMode   =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   False
      Scope           =   2
      Text            =   "Rotate"
      TextColor       =   &c00000000
      Top             =   36
      Visible         =   True
      Width           =   62
   End
   Begin MobileSlider DegreeSlider
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Enabled         =   True
      Height          =   30
      Left            =   90
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      MaximumValue    =   360.0
      MinimumValue    =   0.0
      Scope           =   2
      Top             =   30
      Value           =   0.0
      Visible         =   True
      Width           =   210
   End
   Begin AppearanceLabel DegreeLabel
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Alignment       =   2
      Enabled         =   True
      Height          =   28
      Left            =   298
      LineBreakMode   =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      Scope           =   2
      Text            =   "0°"
      TextColor       =   &c00000000
      Top             =   36
      Visible         =   True
      Width           =   42
   End
   Begin AppearanceLabel AlphaLabel
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Alignment       =   0
      Enabled         =   True
      Height          =   28
      Left            =   20
      LineBreakMode   =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   False
      Scope           =   2
      Text            =   "Alpha"
      TextColor       =   &c00000000
      Top             =   74
      Visible         =   True
      Width           =   62
   End
   Begin MobileSlider AlphaSlider
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Enabled         =   True
      Height          =   30
      Left            =   90
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      MaximumValue    =   100.0
      MinimumValue    =   0.0
      Scope           =   2
      Top             =   68
      Value           =   100.0
      Visible         =   True
      Width           =   210
   End
   Begin AppearanceLabel AlphaPercentageLabel
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Alignment       =   2
      Enabled         =   True
      Height          =   28
      Left            =   298
      LineBreakMode   =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      Scope           =   2
      Text            =   "100%"
      TextColor       =   &c00000000
      Top             =   74
      Visible         =   True
      Width           =   42
   End
   Begin AppearanceLabel ScaleXLabel
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Alignment       =   0
      Enabled         =   True
      Height          =   28
      Left            =   20
      LineBreakMode   =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   False
      Scope           =   2
      Text            =   "Scale X"
      TextColor       =   &c00000000
      Top             =   116
      Visible         =   True
      Width           =   62
   End
   Begin AppearanceLabel ScaleXPercentageLabel
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Alignment       =   2
      Enabled         =   True
      Height          =   28
      Left            =   298
      LineBreakMode   =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      Scope           =   2
      Text            =   "100%"
      TextColor       =   &c00000000
      Top             =   116
      Visible         =   True
      Width           =   42
   End
   Begin MobileSlider ScaleXSlider
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Enabled         =   True
      Height          =   30
      Left            =   90
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      MaximumValue    =   400.0
      MinimumValue    =   25.0
      Scope           =   2
      Top             =   110
      Value           =   100.0
      Visible         =   True
      Width           =   210
   End
   Begin AppearanceLabel PlaygroundLabel
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Alignment       =   0
      Enabled         =   True
      Height          =   33
      Left            =   20
      LineBreakMode   =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   False
      Scope           =   2
      Text            =   "Playground"
      TextColor       =   &c00000000
      Top             =   244
      Visible         =   True
      Width           =   137
   End
   Begin MobileButton PlaygroundButton
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Caption         =   "Playground Button"
      CaptionColor    =   &cFFFFFF00
      Enabled         =   True
      Height          =   44
      Left            =   92
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Scope           =   2
      Top             =   358
      Visible         =   True
      Width           =   175
   End
   Begin AppearanceLabel ScaleYLabel
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Alignment       =   0
      Enabled         =   True
      Height          =   28
      Left            =   20
      LineBreakMode   =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   False
      Scope           =   2
      Text            =   "Scale Y"
      TextColor       =   &c00000000
      Top             =   158
      Visible         =   True
      Width           =   62
   End
   Begin AppearanceLabel ScaleYPercentageLabel
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Alignment       =   2
      Enabled         =   True
      Height          =   28
      Left            =   298
      LineBreakMode   =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      Scope           =   2
      Text            =   "100%"
      TextColor       =   &c00000000
      Top             =   158
      Visible         =   True
      Width           =   42
   End
   Begin MobileSlider ScaleYSlider
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Enabled         =   True
      Height          =   30
      Left            =   90
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      MaximumValue    =   400.0
      MinimumValue    =   25.0
      Scope           =   2
      Top             =   152
      Value           =   100.0
      Visible         =   True
      Width           =   210
   End
   Begin AppearanceLabel ElevationLabel
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Alignment       =   0
      Enabled         =   True
      Height          =   28
      Left            =   20
      LineBreakMode   =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   False
      Scope           =   2
      Text            =   "Elevation"
      TextColor       =   &c00000000
      Top             =   200
      Visible         =   True
      Width           =   72
   End
   Begin AppearanceLabel ElevationValueLabel
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Alignment       =   2
      Enabled         =   True
      Height          =   28
      Left            =   298
      LineBreakMode   =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      Scope           =   2
      Text            =   "0"
      TextColor       =   &c00000000
      Top             =   200
      Visible         =   True
      Width           =   42
   End
   Begin MobileSlider ElevationSlider
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Enabled         =   True
      Height          =   30
      Left            =   90
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      MaximumValue    =   400.0
      MinimumValue    =   0.0
      Scope           =   2
      Top             =   194
      Value           =   0.0
      Visible         =   True
      Width           =   210
   End
End
#tag EndMobileContainer

#tag ScreenCode
	#tag Event
		Sub Opening()
		  For Each ctrl As MobileUIControl In Self.Controls
		    
		    If ctrl IsA MobileButton Then
		      
		      ctrl.SetElevationXC(0)
		      
		    End If
		    
		  Next
		End Sub
	#tag EndEvent


#tag EndScreenCode

#tag Events DegreeSlider
	#tag Event
		Sub ValueChanged()
		  DegreeLabel.Text = Me.Value.ToString + "°"
		  
		  PlaygroundButton.SetRotationXC(Me.Value)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events AlphaSlider
	#tag Event
		Sub ValueChanged()
		  Var value As Single = Me.Value / 100
		  
		  AlphaPercentageLabel.Text = Me.Value.ToString + "%"
		  
		  PlaygroundButton.SetAlphaXC(value)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events ScaleXSlider
	#tag Event
		Sub ValueChanged()
		  ScaleXPercentageLabel.Text = Me.Value.ToString + "%"
		  
		  PlaygroundButton.SetScaleXXC(Me.Value / 100)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PlaygroundLabel
	#tag Event
		Sub Opening()
		  Me.TextFont = Font.BoldSystemFont
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events ScaleYSlider
	#tag Event
		Sub ValueChanged()
		  ScaleYPercentageLabel.Text = Me.Value.ToString + "%"
		  
		  PlaygroundButton.SetScaleYXC(Me.Value / 100)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events ElevationSlider
	#tag Event
		Sub ValueChanged()
		  ElevationValueLabel.Text = Me.Value.ToString
		  
		  PlaygroundButton.SetElevationXC(Me.Value)
		End Sub
	#tag EndEvent
	#tag Event
		Sub Opening()
		  Me.Value = PlaygroundButton.GetElevationXC
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
