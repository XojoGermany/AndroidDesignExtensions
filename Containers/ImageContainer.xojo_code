#tag MobileContainer
Begin MobileContainer ImageContainer
   AccessibilityHint=   ""
   AccessibilityLabel=   ""
   Compatibility   =   "(TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target64Bit)) or  (TargetAndroid and (Target64Bit))"
   Enabled         =   True
   Height          =   650
   LockBottom      =   False
   LockLeft        =   True
   LockRight       =   True
   LockTop         =   True
   Orientation     =   0
   Visible         =   True
   Width           =   360
   Begin AppearanceLabel AlphaLabel
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Alignment       =   1
      Enabled         =   True
      Height          =   40
      Left            =   91
      LineBreakMode   =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      MaximumCharactersAllowed=   0
      Scope           =   2
      Text            =   "Alpha: 255"
      TextColor       =   &c00000000
      Top             =   308
      Visible         =   True
      Width           =   177
   End
   Begin AppearanceSlider AlphaSlider
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Enabled         =   True
      Height          =   30
      Left            =   91
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      MaximumValue    =   255.0
      MinimumValue    =   0.0
      Scope           =   2
      Top             =   278
      Value           =   255.0
      Visible         =   True
      Width           =   177
   End
   Begin AppearanceButton BackgroundColor1Button
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Caption         =   "Yellow Background Color"
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
      Top             =   408
      Visible         =   True
      Width           =   200
   End
   Begin AppearanceButton BackgroundColor2Button
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Caption         =   "Red Background Color"
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
      Top             =   356
      Visible         =   True
      Width           =   200
   End
   Begin AppearanceButton ClearTintColorButton
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Caption         =   "Clear Tint Color"
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
      Top             =   564
      Visible         =   True
      Width           =   200
   End
   Begin MobileImageViewer Image1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      DisplayMode     =   1
      Enabled         =   True
      Height          =   240
      Image           =   241680383
      Left            =   91
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Scope           =   0
      Top             =   30
      Visible         =   True
      Width           =   177
   End
   Begin AppearanceButton ShadowColorButton
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Caption         =   "Orange Shadow"
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
      Top             =   460
      Visible         =   True
      Width           =   200
   End
   Begin AppearanceButton TintColorButton
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Caption         =   "Red Tint Color"
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
      Top             =   512
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
      Top             =   616
      Visible         =   True
      Width           =   360
   End
End
#tag EndMobileContainer

#tag ScreenCode
	#tag Event
		Sub Opening()
		  ' Call Opening-Event
		  RaiseEvent Opening
		  
		  For Each ctrl As MobileUIControl In Self.Controls
		    
		    If ctrl IsA MobileButton Then
		      
		      MobileButton(ctrl).SetElevationXC(0)
		      
		    End If
		    
		  Next
		End Sub
	#tag EndEvent


	#tag Hook, Flags = &h0
		Event Opening()
	#tag EndHook


#tag EndScreenCode

#tag Events AlphaSlider
	#tag Event
		Sub ValueChanged()
		  Image1.SetImageAlphaXC(Me.Value)
		  AlphaLabel.Text = "Alpha: " + Me.Value.ToString
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events BackgroundColor1Button
	#tag Event
		Sub Pressed()
		  Image1.SetBackgroundColorXC(Color.Yellow)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events BackgroundColor2Button
	#tag Event
		Sub Pressed()
		  Image1.SetBackgroundColorXC(Color.Red)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events ClearTintColorButton
	#tag Event
		Sub Pressed()
		  Image1.ClearColorFilterXC
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events ShadowColorButton
	#tag Event
		Sub Pressed()
		  Image1.SetOutlineSpotShadowColorXC(Color.Orange)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events TintColorButton
	#tag Event
		Sub Pressed()
		  Image1.SetColorFilterXC(Color.Red)
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
