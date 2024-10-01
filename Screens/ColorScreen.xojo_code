#tag MobileScreen
Begin TemplateScreenWithBackButton ColorScreen
   Compatibility   =   "(TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target64Bit)) or  (TargetAndroid and (Target64Bit))"
   Device          =   1
   HasBackButton   =   True
   HasNavigationBar=   True
   Modal           =   False
   Orientation     =   0
   Title           =   "System Colors"
   Begin AndroidMobileTable Table1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Enabled         =   True
      HasHeader       =   False
      Header          =   ""
      Height          =   700
      InitialValue    =   ""
      LastAddedRowIndex=   0
      LastRowIndex    =   0
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
      Top             =   0
      Visible         =   True
      Width           =   360
   End
End
#tag EndMobileScreen

#tag ScreenCode
	#tag Method, Flags = &h21
		Private Sub AddRow(col As Color, value As String)
		  Var oPic As New Picture(32, 28)
		  Var g As Graphics = oPic.Graphics
		  
		  g.DrawingColor = col
		  g.FillOval(4, 1, 26, 26)
		  
		  g.DrawingColor = If(Color.IsDarkMode, &c21212100, &cCACACC00)
		  g.DrawOval(4, 1, 26, 26)
		  
		  Table1.AddRow(value.ReplaceAllBytes("_", " "))
		  Table1.RowPictureAt(Table1.LastAddedRowIndex) = oPic
		  Table1.RowTextColorAt(Table1.LastAddedRowIndex) = Color.TextColor
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub AddSection(value As String)
		  Static oFont As Font
		  
		  If oFont Is Nil Then
		    
		    oFont = Font.BoldSystemFont
		    
		  End If
		  
		  Table1.AddRow(" ", value.Uppercase)
		  
		  If Not Color.IsDarkMode Then
		    
		    Table1.RowBackgroundColorAt(Table1.LastAddedRowIndex) = Color.White
		    
		  End If
		  
		  Table1.RowDetailFont = oFont
		  Table1.RowDetailColorAt(Table1.LastAddedRowIndex) = &c0096FF00
		End Sub
	#tag EndMethod


#tag EndScreenCode

#tag Events Table1
	#tag Event
		Sub Opening()
		  Me.RowTextFont = Font.SystemFont(18)
		  Me.SeparatorColor = If(Color.IsDarkMode, &c21212100, &cCACACC00)
		  
		  Me.SetFastScrollAlwaysVisibleXC(True)
		  Me.SetFastScrollEnabledXC(True)
		  
		  AddRow(ColorXC.Background_Dark, "Background_Dark")
		  AddRow(ColorXC.Background_Light, "Background_Light")
		  AddRow(ColorXC.Black, "Black")
		  AddRow(ColorXC.Darker_Gray, "Darker_Gray")
		  
		  AddRow(ColorXC.Holo_Blue_Bright, "Holo_Blue_Bright")
		  AddRow(ColorXC.Holo_Blue_Light, "Holo_Blue_Light")
		  
		  AddRow(ColorXC.Holo_Green_Dark, "Holo_Green_Dark")
		  AddRow(ColorXC.Holo_Green_Light, "Holo_Green_Light")
		  
		  AddRow(ColorXC.Holo_Orange_Dark, "Holo_Orange_Dark")
		  AddRow(ColorXC.Holo_Orange_Light, "Holo_Orange_Light")
		  
		  AddRow(ColorXC.Holo_Purple, "Holo_Purple")
		  
		  AddRow(ColorXC.Holo_Red_Dark, "Holo_Red_Dark")
		  AddRow(ColorXC.Holo_Red_Light, "Holo_Red_Light")
		  
		  ' Working for API 31+ (Android 12+)
		  If System.Version.MajorVersion >= 12 Then
		    
		    AddSection("Android 12+ (API 31)")
		    
		    AddRow(ColorXC.System_Accent1_0, "System_Accent1_0")
		    AddRow(ColorXC.System_Accent1_10, "System_Accent1_10")
		    AddRow(ColorXC.System_Accent1_50, "System_Accent1_50")
		    AddRow(ColorXC.System_Accent1_100, "System_Accent1_100")
		    AddRow(ColorXC.System_Accent1_200, "System_Accent1_200")
		    AddRow(ColorXC.System_Accent1_300, "System_Accent1_300")
		    AddRow(ColorXC.System_Accent1_400, "System_Accent1_400")
		    AddRow(ColorXC.System_Accent1_500, "System_Accent1_500")
		    AddRow(ColorXC.System_Accent1_600, "System_Accent1_600")
		    AddRow(ColorXC.System_Accent1_700, "System_Accent1_700")
		    AddRow(ColorXC.System_Accent1_800, "System_Accent1_800")
		    AddRow(ColorXC.System_Accent1_900, "System_Accent1_900")
		    AddRow(ColorXC.System_Accent1_1000, "System_Accent1_1000")
		    
		    AddRow(ColorXC.System_Accent2_0, "System_Accent2_0")
		    AddRow(ColorXC.System_Accent2_10, "System_Accent2_10")
		    AddRow(ColorXC.System_Accent2_50, "System_Accent2_50")
		    AddRow(ColorXC.System_Accent2_100, "System_Accent2_100")
		    AddRow(ColorXC.System_Accent2_200, "System_Accent2_200")
		    AddRow(ColorXC.System_Accent2_300, "System_Accent2_300")
		    AddRow(ColorXC.System_Accent2_400, "System_Accent2_400")
		    AddRow(ColorXC.System_Accent2_500, "System_Accent2_500")
		    AddRow(ColorXC.System_Accent2_600, "System_Accent2_600")
		    AddRow(ColorXC.System_Accent2_700, "System_Accent2_700")
		    AddRow(ColorXC.System_Accent2_800, "System_Accent2_800")
		    AddRow(ColorXC.System_Accent2_900, "System_Accent2_900")
		    AddRow(ColorXC.System_Accent2_1000, "System_Accent2_1000")
		    
		    AddRow(ColorXC.System_Accent3_0, "System_Accent3_0")
		    AddRow(ColorXC.System_Accent3_10, "System_Accent3_10")
		    AddRow(ColorXC.System_Accent3_50, "System_Accent3_50")
		    AddRow(ColorXC.System_Accent3_100, "System_Accent3_100")
		    AddRow(ColorXC.System_Accent3_200, "System_Accent3_200")
		    AddRow(ColorXC.System_Accent3_300, "System_Accent3_300")
		    AddRow(ColorXC.System_Accent3_400, "System_Accent3_400")
		    AddRow(ColorXC.System_Accent3_500, "System_Accent3_500")
		    AddRow(ColorXC.System_Accent3_600, "System_Accent3_600")
		    AddRow(ColorXC.System_Accent3_700, "System_Accent3_700")
		    AddRow(ColorXC.System_Accent3_800, "System_Accent3_800")
		    AddRow(ColorXC.System_Accent3_900, "System_Accent3_900")
		    AddRow(ColorXC.System_Accent3_1000, "System_Accent3_1000")
		    
		  End If
		  
		  ' Working for API 34+ (Android 14+)
		  If System.Version.MajorVersion >= 14 Then
		    
		    AddSection("Android 14+ (API 34)")
		    
		    AddRow(ColorXC.System_Background_Dark, "System_Background_Dark")
		    AddRow(ColorXC.System_Background_Light, "System_Background_Light")
		    
		    AddRow(ColorXC.System_Control_Activated_Dark, "System_Control_Activated_Dark")
		    AddRow(ColorXC.System_Control_Activated_Light, "System_Control_Activated_Light")
		    
		    AddRow(ColorXC.System_Control_Highlight_Dark, "System_Control_Highlight_Dark")
		    AddRow(ColorXC.System_Control_Highlight_Light, "System_Control_Highlight_Light")
		    
		    AddRow(ColorXC.System_Control_Normal_Dark, "System_Control_Normal_Dark")
		    AddRow(ColorXC.System_Control_Normal_Light, "System_Control_Normal_Light")
		    
		    AddRow(ColorXC.System_Error_Container_Dark, "System_Error_Container_Dark")
		    AddRow(ColorXC.System_Error_Container_Light, "System_Error_Container_Light")
		    
		    AddRow(ColorXC.System_Error_Dark, "System_Error_Dark")
		    AddRow(ColorXC.System_Error_Light, "System_Error_Light")
		    
		  End If
		  
		  ' Working for API 31+ (Android 12+)
		  If System.Version.MajorVersion >= 12 Then
		    
		    AddSection("Android 12+ (API 31)")
		    
		    AddRow(ColorXC.System_Neutral1_0, "System_Neutral1_0")
		    AddRow(ColorXC.System_Neutral1_10, "System_Neutral1_10")
		    AddRow(ColorXC.System_Neutral1_50, "System_Neutral1_50")
		    AddRow(ColorXC.System_Neutral1_100, "System_Neutral1_100")
		    AddRow(ColorXC.System_Neutral1_200, "System_Neutral1_200")
		    AddRow(ColorXC.System_Neutral1_300, "System_Neutral1_300")
		    AddRow(ColorXC.System_Neutral1_400, "System_Neutral1_400")
		    AddRow(ColorXC.System_Neutral1_500, "System_Neutral1_500")
		    AddRow(ColorXC.System_Neutral1_600, "System_Neutral1_600")
		    AddRow(ColorXC.System_Neutral1_700, "System_Neutral1_700")
		    AddRow(ColorXC.System_Neutral1_800, "System_Neutral1_800")
		    AddRow(ColorXC.System_Neutral1_900, "System_Neutral1_900")
		    AddRow(ColorXC.System_Neutral1_1000, "System_Neutral1_1000")
		    
		    AddRow(ColorXC.System_Neutral2_0, "System_Neutral2_0")
		    AddRow(ColorXC.System_Neutral2_10, "System_Neutral2_10")
		    AddRow(ColorXC.System_Neutral2_50, "System_Neutral2_50")
		    AddRow(ColorXC.System_Neutral2_100, "System_Neutral2_100")
		    AddRow(ColorXC.System_Neutral2_200, "System_Neutral2_200")
		    AddRow(ColorXC.System_Neutral2_300, "System_Neutral2_300")
		    AddRow(ColorXC.System_Neutral2_400, "System_Neutral2_400")
		    AddRow(ColorXC.System_Neutral2_500, "System_Neutral2_500")
		    AddRow(ColorXC.System_Neutral2_600, "System_Neutral2_600")
		    AddRow(ColorXC.System_Neutral2_700, "System_Neutral2_700")
		    AddRow(ColorXC.System_Neutral2_800, "System_Neutral2_800")
		    AddRow(ColorXC.System_Neutral2_900, "System_Neutral2_900")
		    AddRow(ColorXC.System_Neutral2_1000, "System_Neutral2_1000")
		    
		  End If 
		  
		  ' Working for API 34+ (Android 14+)
		  If System.Version.MajorVersion >= 14 Then
		    
		    AddSection("Android 14+ (API 34)")
		    
		    AddRow(ColorXC.System_On_Background_Dark, "System_On_Background_Dark")
		    AddRow(ColorXC.System_On_Background_Light, "System_On_Background_Light")
		    
		    AddRow(ColorXC.System_On_Error_Container_Dark, "System_On_Error_Container_Dark")
		    AddRow(ColorXC.System_On_Error_Container_Light, "System_On_Error_Container_Light")
		    
		    AddRow(ColorXC.System_On_Error_Dark, "System_On_Error_Dark")
		    AddRow(ColorXC.System_On_Error_Light, "System_On_Error_Light")
		    
		    AddRow(ColorXC.System_On_Primary_Container_Dark, "System_On_Primary_Container_Dark")
		    AddRow(ColorXC.System_On_Primary_Container_Light, "System_On_Primary_Container_Light")
		    
		    AddRow(ColorXC.System_On_Primary_Dark, "System_On_Primary_Dark")
		    AddRow(ColorXC.System_On_Primary_Fixed, "System_On_Primary_Fixed")
		    AddRow(ColorXC.System_On_Primary_Fixed_Variant, "System_On_Primary_Fixed_Variant")
		    AddRow(ColorXC.System_On_Primary_Light, "System_On_Primary_Light")
		    
		    AddRow(ColorXC.System_On_Secondary_Container_Dark, "System_On_Secondary_Container_Dark")
		    AddRow(ColorXC.System_On_Secondary_Container_Light, "System_On_Secondary_Container_Light")
		    
		    AddRow(ColorXC.System_On_Secondary_Dark, "System_On_Secondary_Dark")
		    AddRow(ColorXC.System_On_Secondary_Fixed, "System_On_Secondary_Fixed")
		    AddRow(ColorXC.System_On_Secondary_Fixed_Variant, "System_On_Secondary_Fixed_Variant")
		    AddRow(ColorXC.System_On_Secondary_Light, "System_On_Secondary_Light")
		    
		    AddRow(ColorXC.System_On_Surface_Dark, "System_On_Surface_Dark")
		    AddRow(ColorXC.System_On_Surface_Light, "System_On_Surface_Light")
		    AddRow(ColorXC.System_On_Surface_Variant_Dark, "System_On_Surface_Variant_Dark")
		    AddRow(ColorXC.System_On_Surface_Variant_Light, "System_On_Surface_Variant_Light")
		    
		    AddRow(ColorXC.System_On_Tertiary_Container_Dark, "System_On_Tertiary_Container_Dark")
		    AddRow(ColorXC.System_On_Tertiary_Container_Light, "System_On_Tertiary_Container_Light")
		    
		    AddRow(ColorXC.System_On_Tertiary_Dark, "System_On_Tertiary_Dark")
		    AddRow(ColorXC.System_On_Tertiary_Fixed, "System_On_Tertiary_Fixed")
		    AddRow(ColorXC.System_On_Tertiary_Fixed_Variant, "System_On_Tertiary_Fixed_Variant")
		    AddRow(ColorXC.System_On_Tertiary_Light, "System_On_Tertiary_Light")
		    
		    AddRow(ColorXC.System_Outline_Dark, "System_Outline_Dark")
		    AddRow(ColorXC.System_Outline_Light, "System_Outline_Light")
		    AddRow(ColorXC.System_Outline_Variant_Dark, "System_Outline_Variant_Dark")
		    AddRow(ColorXC.System_Outline_Variant_Light, "System_Outline_Variant_Light")
		    
		    AddRow(ColorXC.System_Palette_Key_Color_Neutral_Dark, "System_Palette_Key_Color_Neutral_Dark")
		    AddRow(ColorXC.System_Palette_Key_Color_Neutral_Light, "System_Palette_Key_Color_Neutral_Light")
		    AddRow(ColorXC.System_Palette_Key_Color_Neutral_Variant_Dark, "System_Palette_Key_Color_Neutral_Variant_Dark")
		    AddRow(ColorXC.System_Palette_Key_Color_Neutral_Variant_Light, "System_Palette_Key_Color_Neutral_Variant_Light")
		    
		    AddRow(ColorXC.System_Palette_Key_Color_Primary_Dark, "System_Palette_Key_Color_Primary_Dark")
		    AddRow(ColorXC.System_Palette_Key_Color_Primary_Light, "System_Palette_Key_Color_Primary_Light")
		    
		    AddRow(ColorXC.System_Palette_Key_Color_Secondary_Dark, "System_Palette_Key_Color_Secondary_Dark")
		    AddRow(ColorXC.System_Palette_Key_Color_Secondary_Light, "System_Palette_Key_Color_Secondary_Light")
		    
		    AddRow(ColorXC.System_Palette_Key_Color_Tertiary_Dark, "System_Palette_Key_Color_Tertiary_Dark")
		    AddRow(ColorXC.System_Palette_Key_Color_Tertiary_Light, "System_Palette_Key_Color_Tertiary_Light")
		    
		    AddRow(ColorXC.System_Primary_Container_Dark, "System_Primary_Container_Dark")
		    AddRow(ColorXC.System_Primary_Container_Light, "System_Primary_Container_Light")
		    
		    AddRow(ColorXC.System_Primary_Dark, "System_Primary_Dark")
		    AddRow(ColorXC.System_Primary_Fixed, "System_Primary_Fixed")
		    AddRow(ColorXC.System_Primary_Fixed_Dim, "System_Primary_Fixed_Dim")
		    AddRow(ColorXC.System_Primary_Light, "System_Primary_Light")
		    
		    AddRow(ColorXC.System_Secondary_Container_Dark, "System_Secondary_Container_Dark")
		    AddRow(ColorXC.System_Secondary_Container_Light, "System_Secondary_Container_Light")
		    AddRow(ColorXC.System_Secondary_Dark, "System_Secondary_Dark")
		    AddRow(ColorXC.System_Secondary_Fixed, "System_Secondary_Fixed")
		    AddRow(ColorXC.System_Secondary_Fixed_Dim, "System_Secondary_Fixed_Dim")
		    AddRow(ColorXC.System_Secondary_Light, "System_Secondary_Light")
		    
		    AddRow(ColorXC.System_Surface_Bright_Dark, "System_Surface_Bright_Dark")
		    AddRow(ColorXC.System_Surface_Bright_Light, "System_Surface_Bright_Light")
		    
		    AddRow(ColorXC.System_Surface_Container_Dark, "System_Surface_Container_Dark")
		    AddRow(ColorXC.System_Surface_Container_High_Dark, "System_Surface_Container_High_Dark")
		    AddRow(ColorXC.System_Surface_Container_High_Light, "System_Surface_Container_High_Light")
		    AddRow(ColorXC.System_Surface_Container_Highest_Dark, "System_Surface_Container_Highest_Dark")
		    AddRow(ColorXC.System_Surface_Container_Highest_Light, "System_Surface_Container_Highest_Light")
		    AddRow(ColorXC.System_Surface_Container_Light, "System_Surface_Container_Light")
		    AddRow(ColorXC.System_Surface_Container_Low_Dark, "System_Surface_Container_Low_Dark")
		    AddRow(ColorXC.System_Surface_Container_Low_Light, "System_Surface_Container_Low_Light")
		    AddRow(ColorXC.System_Surface_Container_Lowest_Dark, "System_Surface_Container_Lowest_Dark")
		    AddRow(ColorXC.System_Surface_Container_Lowest_Light, "System_Surface_Container_Lowest_Light")
		    
		    AddRow(ColorXC.System_Surface_Dark, "System_Surface_Dark")
		    AddRow(ColorXC.System_Surface_Dim_Dark, "System_Surface_Dim_Dark")
		    AddRow(ColorXC.System_Surface_Dim_Light, "System_Surface_Dim_Light")
		    AddRow(ColorXC.System_Surface_Light, "System_Surface_Light")
		    AddRow(ColorXC.System_Surface_Variant_Dark, "System_Surface_Variant_Dark")
		    AddRow(ColorXC.System_Surface_Variant_Light, "System_Surface_Variant_Light")
		    
		    AddRow(ColorXC.System_Tertiary_Container_Dark, "System_Tertiary_Container_Dark")
		    AddRow(ColorXC.System_Tertiary_Container_Light, "System_Tertiary_Container_Light")
		    AddRow(ColorXC.System_Tertiary_Dark, "System_Tertiary_Dark")
		    AddRow(ColorXC.System_Tertiary_Fixed, "System_Tertiary_Fixed")
		    AddRow(ColorXC.System_Tertiary_Fixed_Dim, "System_Tertiary_Fixed_Dim")
		    AddRow(ColorXC.System_Tertiary_Light, "System_Tertiary_Light")
		    
		    AddRow(ColorXC.System_Text_Hint_Inverse_Dark, "System_Text_Hint_Inverse_Dark")
		    AddRow(ColorXC.System_Text_Hint_Inverse_Light, "System_Text_Hint_Inverse_Light")
		    AddRow(ColorXC.System_Text_Primary_Inverse_Dark, "System_Text_Primary_Inverse_Dark")
		    AddRow(ColorXC.System_Text_Primary_Inverse_Disable_Only_Dark, "System_Text_Primary_Inverse_Disable_Only_Dark")
		    AddRow(ColorXC.System_Text_Primary_Inverse_Disable_Only_Light, "System_Text_Primary_Inverse_Disable_Only_Light")
		    AddRow(ColorXC.System_Text_Primary_Inverse_Light, "System_Text_Primary_Inverse_Light")
		    AddRow(ColorXC.System_Text_Secondary_And_Tertiary_Inverse_Dark, "System_Text_Secondary_And_Tertiary_Inverse_Dark")
		    AddRow(ColorXC.System_Text_Secondary_And_Tertiary_Inverse_Disabled_Dark, "System_Text_Secondary_And_Tertiary_Inverse_Disabled_Dark")
		    AddRow(ColorXC.System_Text_Secondary_And_Tertiary_Inverse_Disabled_Light, "System_Text_Secondary_And_Tertiary_Inverse_Disabled_Light")
		    AddRow(ColorXC.System_Text_Secondary_And_Tertiary_Inverse_Light, "System_Text_Secondary_And_Tertiary_Inverse_Light")
		    
		    AddRow(ColorXC.Tab_Indicator_Text, "Tab_Indicator_Text")
		    
		    AddRow(ColorXC.Widget_Edittext_Dark, "Widget_Edittext_Dark")
		    
		  End If
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
		Visible=true
		Group="Behavior"
		InitialValue="False"
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
	#tag ViewProperty
		Name="HasBackButton"
		Visible=true
		Group="Behavior"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
#tag EndViewBehavior
