#tag MobileContainer
Begin MobileContainer ImageContainer
   AccessibilityHint=   ""
   AccessibilityLabel=   ""
   Compatibility   =   "(TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target64Bit)) or  (TargetAndroid and (Target64Bit))"
   Enabled         =   True
   Height          =   638
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
      AdjustTextSizeToFit=   False
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
      UseAccessibiltyFontSize=   False
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
      TintColor       =   
      Top             =   278
      Value           =   255.0
      Visible         =   True
      Width           =   177
   End
   Begin AppearanceButton BackgroundColor1Button
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AdjustTextSizeToFit=   False
      BackgroundColor =   
      BorderColor     =   
      BorderWidth     =   0
      Caption         =   "Yellow Background Color"
      CaptionColor    =   &cFFFFFF00
      CornerSize      =   0
      DisplayMenuAsAction=   False
      Enabled         =   True
      Height          =   44
      Icon            =   0
      Left            =   80
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Scope           =   2
      Symbol          =   ""
      Top             =   408
      UseAccessibiltyFontSize=   False
      Visible         =   True
      Width           =   200
   End
   Begin AppearanceButton BackgroundColor2Button
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AdjustTextSizeToFit=   False
      BackgroundColor =   
      BorderColor     =   
      BorderWidth     =   0
      Caption         =   "Red Background Color"
      CaptionColor    =   &cFFFFFF00
      CornerSize      =   0
      DisplayMenuAsAction=   False
      Enabled         =   True
      Height          =   44
      Icon            =   0
      Left            =   80
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Scope           =   2
      Symbol          =   ""
      Top             =   356
      UseAccessibiltyFontSize=   False
      Visible         =   True
      Width           =   200
   End
   Begin AppearanceButton ClearTintColorButton
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AdjustTextSizeToFit=   False
      BackgroundColor =   
      BorderColor     =   
      BorderWidth     =   0
      Caption         =   "Clear Tint Color"
      CaptionColor    =   &cFFFFFF00
      CornerSize      =   0
      DisplayMenuAsAction=   False
      Enabled         =   True
      Height          =   44
      Icon            =   0
      Left            =   80
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Scope           =   2
      Symbol          =   ""
      Top             =   564
      UseAccessibiltyFontSize=   False
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
      URL             =   ""
      Visible         =   True
      Width           =   177
   End
   Begin AppearanceButton ShadowColorButton
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AdjustTextSizeToFit=   False
      BackgroundColor =   
      BorderColor     =   
      BorderWidth     =   0
      Caption         =   "Orange Shadow"
      CaptionColor    =   &cFFFFFF00
      CornerSize      =   0
      DisplayMenuAsAction=   False
      Enabled         =   True
      Height          =   44
      Icon            =   0
      Left            =   80
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Scope           =   2
      Symbol          =   ""
      Top             =   460
      UseAccessibiltyFontSize=   False
      Visible         =   True
      Width           =   200
   End
   Begin AppearanceButton TintColorButton
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AdjustTextSizeToFit=   False
      BackgroundColor =   
      BorderColor     =   
      BorderWidth     =   0
      Caption         =   "Red Tint Color"
      CaptionColor    =   &cFFFFFF00
      CornerSize      =   0
      DisplayMenuAsAction=   False
      Enabled         =   True
      Height          =   44
      Icon            =   0
      Left            =   80
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Scope           =   2
      Symbol          =   ""
      Top             =   512
      UseAccessibiltyFontSize=   False
      Visible         =   True
      Width           =   200
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
		  ' Working for API 28+ (Android 9+)
		  If System.Version.MajorVersion >= 9 Then
		    
		    Image1.SetOutlineSpotShadowColorXC(Color.Orange)
		    
		  End If
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
	#tag ViewProperty
		Name="LastControlIndex"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
#tag EndViewBehavior
