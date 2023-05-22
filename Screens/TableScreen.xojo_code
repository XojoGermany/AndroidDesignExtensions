#tag MobileScreen
Begin TemplateScreen TableScreen
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
   Begin AndroidMobileTable Table1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Enabled         =   True
      HasHeader       =   False
      Header          =   ""
      Height          =   646
      InitialValue    =   "Background Color\n⭕️ Transparent\n⚪️ White\n🔴 Red\n🟢 Green\n🔵 Blue\nScrolling\nSmooth Scroll By\nSmooth Scroll To Position\nVertical Scrollbar Position\nDefault\nLeft\nRight\nScrollbar Style\nInside Inset\nInside Overlay\nOutside Inset\nOutside Overlay\nFruits\n🍏 Apple\n🍐 Pear\n🍋 Lemon\n🍌 Banana\n🍉 Melone\n🍇 Grapes\n🍓 Strawberry\n🫐 Blueberry\n🍒 Cherry\n🍑 Peach\n🥭 Mango\n🍍 Pineapple\n🥥 Coconut\n🥝 Kiwi\n🍅Tomato\n🥑 Avocado\n🥒 Cucumber\n🧅 Onion"
      LastAddedRowIndex=   0
      Left            =   20
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
      Width           =   320
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
		  Me.ShadowColor = &c000000FF ' no shadow
		  Me.ScrollBarFadeDuration = 0 ' make Scrollbar always visible
		  
		  Me.RowTextFont = Font.SystemFont(17)
		  Me.SeparatorColor = &cCACACC00
		  
		  For row As Integer = 0 To Me.LastAddedRowIndex
		    
		    Me.RowBackgroundColorAt(row) = &c000000FF ' transparent
		    
		  Next
		  
		  Var headers() As Integer = Array(0, 6, 9, 13, 18)
		  
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
		End Sub
	#tag EndEvent
	#tag Event
		Sub SelectionChanged()
		  Var oRowTag As Variant = Me.RowTagAt(Me.SelectedRowIndex)
		  
		  If oRowTag = Nil Then Return
		  
		  Select Case oRowTag
		  Case "blue"
		    
		    Me.BackgroundColor = &c0A84FF00
		    
		  Case "green"
		    
		    Me.BackgroundColor = &c32D74B00
		    
		  Case "insideInset"
		    
		    Me.ScrollBarStyle = 16777216
		    
		  Case "insideOverlay"
		    
		    Me.ScrollBarStyle = 0
		    
		  Case "outsideInset"
		    
		    Me.ScrollBarStyle = 50331648
		    
		  Case "outsideOverlay"
		    
		    Me.ScrollBarStyle = 33554432
		    
		  Case "positionDefault"
		    
		    Me.VerticalScrollbarPosition = 0
		    
		  Case "positionLeft"
		    
		    Me.VerticalScrollbarPosition = 1
		    
		  Case "positionRight"
		    
		    Me.VerticalScrollbarPosition = 2
		    
		  Case "red"
		    
		    Me.BackgroundColor = &cFF453A00
		    
		  Case "scrollBy"
		    
		    Me.SmoothScrollBy(120, 2000) ' 2000 ms
		    
		  Case "scrollTo"
		    
		    Me.SmoothScrollToPosition(5)
		    
		  Case "transparent"
		    
		    Me.BackgroundColor = &c000000FF
		    
		  Case "white"
		    
		    Me.BackgroundColor = Color.White
		    
		  End Select
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
