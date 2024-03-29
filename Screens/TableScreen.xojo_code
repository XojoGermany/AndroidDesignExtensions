#tag MobileScreen
Begin TemplateScreen TableScreen
   Compatibility   =   "(TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target64Bit)) or  (TargetAndroid and (Target64Bit))"
   HasBackButton   =   False
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
   Begin AndroidMobileTable Table1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Enabled         =   True
      HasHeader       =   False
      Header          =   ""
      Height          =   676
      InitialValue    =   "Background Color\n⭕️ Transparent\n⚪️ White\n🔴 Red\n🟢 Green\n🔵 Blue\nScrolling\nSmooth Scroll By\nSmooth Scroll To Position\nVertical Scrollbar Position\nDefault\nLeft\nRight\nScrollbar Style\nInside Inset\nInside Overlay\nOutside Inset\nOutside Overlay\nScrollbar Type\nDefault\nFast\nFruits\n🍏 Apple\n🍐 Pear\n🍋 Lemon\n🍌 Banana\n🍉 Melone\n🍇 Grapes\n🍓 Strawberry\n🫐 Blueberry\n🍒 Cherry\n🍑 Peach\n🥭 Mango\n🍍 Pineapple\n🥥 Coconut\n🥝 Kiwi\n🍅Tomato\n🥑 Avocado\n🥒 Cucumber\n🧅 Onion"
      LastAddedRowIndex=   0
      Left            =   0
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      RowCount        =   0
      Scope           =   2
      ScrollPosition  =   0
      SelectedRowIndex=   0
      SelectedRowText =   ""
      SeparatorColor  =   &c00000000
      SeparatorThickness=   0
      Top             =   80
      Visible         =   True
      Width           =   360
   End
End
#tag EndMobileScreen

#tag ScreenCode
	#tag Method, Flags = &h21
		Private Sub SetHeaderAt(row As Integer)
		  Table1.RowBackgroundColorAt(row) = Color.AccentThemeColor
		  Table1.RowBoldAt(row) = True
		  Table1.RowTextColorAt(row) = Color.White
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h21
		Private CheckBoxPic As Picture
	#tag EndProperty

	#tag Property, Flags = &h21
		Private CheckBoxPicBlank As Picture
	#tag EndProperty


#tag EndScreenCode

#tag Events NavigationBarContainer1
	#tag Event
		Sub Opening()
		  Me.Text = "Tables"
		End Sub
	#tag EndEvent
	#tag Event
		Sub Pressed()
		  Close
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Table1
	#tag Event
		Sub Opening()
		  CheckBoxPicBlank = Picture.SystemImage("checkbox_blank_circle_outline", Picture.SystemImageSizes.dp24, Color.LightGray)
		  CheckBoxPic = Picture.SystemImage("checkbox_marked_circle", Picture.SystemImageSizes.dp24, Color.AccentThemeColor)
		  
		  Me.SetScrollBarSizeXC(20)
		  Me.SetOverScrollModeXC(OverScrollModesXC.Never)
		  
		  Me.SetOutlineSpotShadowColorXC(Color.Clear) ' no shadow
		  Me.SetScrollBarFadeDurationXC(0) ' make Scrollbar always visible
		  Me.SetVerticalScrollbarThumbColor(Color.Orange)
		  
		  Me.RowTextFont = Font.SystemFont(17)
		  Me.SeparatorColor = If(Color.IsDarkMode, &c21212100, &cCACACC00)
		  
		  For row As Integer = 0 To Me.LastAddedRowIndex
		    
		    If row >= 22 And row <= Me.RowCount - 1 Then
		      
		      Me.RowPictureAt(row, True) = CheckBoxPicBlank
		      Me.RowTagAt(row) = False
		      
		    End If
		    
		  Next
		  
		  Var headers() As Integer = Array(0, 6, 9, 13, 18, 21)
		  
		  For Each header As Integer in headers
		    
		    SetHeaderAt(header)
		    
		  Next
		  
		  ' Background Color
		  Me.RowTagAt(1) = "transparent"
		  Me.RowTagAt(2) = "white"
		  Me.RowTagAt(3) = "red"
		  Me.RowTagAt(4) = "green"
		  Me.RowTagAt(5) = "blue"
		  
		  ' Scrolling
		  Me.RowTagAt(7) = "scrollBy"
		  Me.RowTagAt(8) = "scrollTo"
		  
		  ' Vertical Scrollbar Position
		  Me.RowTagAt(10) = "positionDefault"
		  Me.RowTagAt(11) = "positionLeft"
		  Me.RowTagAt(12) = "positionRight"
		  
		  ' Scrollbar Styles
		  Me.RowTagAt(14) = "insideInset"
		  Me.RowTagAt(15) = "insideOverlay"
		  Me.RowTagAt(16) = "outsideInset"
		  Me.RowTagAt(17) = "outsideOverlay"
		  
		  ' Scrollbar Types
		  Me.RowTagAt(19) = "default"
		  Me.RowTagAt(20) = "fast"
		  
		  If Color.IsDarkMode Then
		    
		    For index As Integer = 0 To Me.LastAddedRowIndex
		      
		      If Me.RowBackgroundColorAt(index) = Color.Clear Then
		        
		        Me.RowTextColorAt(index) = &cD3D3D3
		        
		      End If
		      
		    Next
		    
		  End If
		  
		  Me.SetDividerXC(SpecialFolder.Resource("Divider.png"))
		End Sub
	#tag EndEvent
	#tag Event
		Sub SelectionChanged()
		  Var oRowTag As Variant = Me.RowTagAt(Me.SelectedRowIndex)
		  
		  If Me.SelectedRowIndex >= 22 And Me.SelectedRowIndex <= Me.RowCount - 1 Then
		    
		    Me.RowPictureAt(Me.SelectedRowIndex, True) = If(oRowTag.BooleanValue, CheckBoxPicBlank, CheckBoxPic)
		    Me.RowTagAt(Me.SelectedRowIndex) = Not oRowTag.BooleanValue
		    Return
		    
		  End If
		  
		  If oRowTag = Nil Then Return
		  
		  Select Case oRowTag
		  Case "blue"
		    
		    Me.SetBackgroundColorXC(&c0A84FF00)
		    
		  Case "default"
		    
		    Me.SetFastScrollAlwaysVisibleXC(False)
		    Me.SetFastScrollEnabledXC(False)
		    
		  Case "fast"
		    
		    Me.SetFastScrollAlwaysVisibleXC(True)
		    Me.SetFastScrollEnabledXC(True)
		    
		  Case "green"
		    
		    Me.SetBackgroundColorXC(&c32D74B00)
		    
		  Case "insideInset"
		    
		    Me.SetScrollBarStyleXC(ScrollbarStylesXC.InsideInset)
		    
		  Case "insideOverlay"
		    
		    Me.SetScrollBarStyleXC(ScrollbarStylesXC.InsideOverlay)
		    
		  Case "outsideInset"
		    
		    Me.SetScrollBarStyleXC(ScrollbarStylesXC.OutsideInset)
		    
		  Case "outsideOverlay"
		    
		    Me.SetScrollBarStyleXC(ScrollbarStylesXC.OutsideOverlay)
		    
		  Case "positionDefault"
		    
		    Me.SetVerticalScrollBarPositionXC(ScrollbarPositionsXC.Default)
		    
		  Case "positionLeft"
		    
		    Me.SetVerticalScrollBarPositionXC(ScrollbarPositionsXC.Left)
		    
		  Case "positionRight"
		    
		    Me.SetVerticalScrollBarPositionXC(ScrollbarPositionsXC.Right)
		    
		  Case "red"
		    
		    Me.SetBackgroundColorXC(&cFF453A00)
		    
		  Case "scrollBy"
		    
		    Me.SmoothScrollByXC(120, 2000) ' 2000 ms
		    
		  Case "scrollTo"
		    
		    Me.SmoothScrollToPositionXC(32)
		    
		  Case "transparent"
		    
		    Me.SetBackgroundColorXC(Color.Clear)
		    
		  Case "white"
		    
		    Me.SetBackgroundColorXC(Color.White)
		    
		  End Select
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
