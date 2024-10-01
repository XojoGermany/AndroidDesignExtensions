#tag Module
Protected Module TabPanelXC
	#tag CompatibilityFlags = ( TargetAndroid and ( Target64Bit ) )
	#tag Method, Flags = &h21, Description = 52657475726E73206F72206372656174657320616E20696E7374616E6365206F662042616467654472617761626C65206966206E6F6E652065786973747320666F722074686520746162206174207468652073706563696669656420696E646578206F662061204D6F62696C6554616250616E656C2E
		Private Function BadgeAt(Extends ctrl As MobileTabPanel, index As Integer, getOrCreateBadge As Boolean = True) As Ptr
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    If getOrCreateBadge Then
		      
		      Declare Function getOrCreateBadgeAt Lib kLibMobileTabPanelKotlin Alias "getTabAt(myindex.toInt())!!.getOrCreateBadge()" (myIndex As Int32) As Ptr
		      Return getOrCreateBadgeAt(index)
		      
		    Else
		      
		      Declare Function getTabAt Lib kLibMobileTabPanelKotlin Alias "getTabAt(myindex.toInt())!!" (myIndex As Int32) As Ptr
		      Return getTabAt(index)
		      
		    End If
		    
		  #Else
		    
		    #Pragma Unused index
		    #Pragma Unused getOrCreateBadge
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 436C65617273207468652062616467652773206E756D6265722E
		Sub ClearBadgeNumberAtXC(Extends ctrl As MobileTabPanel, index As Integer)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub clearNumber Lib kBadgeDrawableInstance (obj As Ptr)
		    clearNumber(ctrl.BadgeAt(index))
		    
		  #Else
		    
		    #Pragma Unused index
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 436C6561727320746865206261646765277320746578742E
		Sub ClearBadgeTextAtXC(Extends ctrl As MobileTabPanel, index As Integer)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub clearText Lib kBadgeDrawableInstance (obj As Ptr)
		    clearText(ctrl.BadgeAt(index))
		    
		  #Else
		    
		    #Pragma Unused index
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetBadgeAlphaAtXC(Extends ctrl As MobileTabPanel, index As Integer) As Integer
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Function getAlpha Lib kBadgeDrawableInstance (obj As Ptr) As Int32
		    Return getAlpha(ctrl.BadgeAt(index))
		    
		  #Else
		    
		    #Pragma Unused index
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E7320746869732062616467652773206261636B67726F756E6420636F6C6F722E
		Function GetBadgeBackgroundColorAtXC(Extends ctrl As MobileTabPanel, index As Integer) As Color
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Function getBackgroundColor Lib kBadgeDrawableInstance (obj As Ptr) As Int32
		    Return getBackgroundColor(ctrl.BadgeAt(index)).ToColor
		    
		  #Else
		    
		    #Pragma Unused index
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetBadgeGravityAtXC(Extends ctrl As MobileTabPanel, index As Integer) As BadgeGravityXC
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Function getBadgeGravity Lib kBadgeDrawableInstance (obj As Ptr) As Integer
		    Return BadgeGravityXC(getBadgeGravity(ctrl.BadgeAt(index)))
		    
		  #Else
		    
		    #Pragma Unused index
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E7320686F77206D7563682028696E20706978656C73292074686973206261646765206973206265696E6720686F72697A6F6E74616C6C79206F666673657420746F7761726473207468652063656E746572206F662069747320616E63686F722E0A0A546869732072657475726E732074686520686F72697A6F6E74616C206F666673657420666F722062616467657320776974686F757420746578742E204966206F666673657420666F72206261646765732077697468207465787420616E6420776974686F757420746578742061726520646966666572656E7420636F6E7369646572207573696E6720676574486F72697A6F6E74616C4F6666736574576974686F7574546578742829206F7220676574486F72697A6F6E74616C4F6666736574576974685465787428292E
		Function GetBadgeHorizontalOffsetAtXC(Extends ctrl As MobileTabPanel, index As Integer) As Integer
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Function getHorizontalOffset Lib kBadgeDrawableInstance (obj As Ptr) As Int32
		    Return getHorizontalOffset(ctrl.BadgeAt(index))
		    
		  #Else
		    
		    #Pragma Unused index
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E7320686F77206D7563682028696E20706978656C73292074686973206261646765206973206265696E6720686F72697A6F6E74616C6C79206F666673657420746F7761726473207468652063656E746572206F662069747320616E63686F72207768656E207468697320626164676520646F6573206E6F742068617665207465787420286973206120646F74292E
		Function GetBadgeHorizontalOffsetWithoutTextAtXC(Extends ctrl As MobileTabPanel, index As Integer) As Integer
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Function getHorizontalOffsetWithoutText Lib kBadgeDrawableInstance (obj As Ptr) As Int32
		    Return getHorizontalOffsetWithoutText(ctrl.BadgeAt(index))
		    
		  #Else
		    
		    #Pragma Unused index
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E7320686F77206D7563682028696E20706978656C73292074686973206261646765206973206265696E6720686F72697A6F6E74616C6C79206F666673657420746F7761726473207468652063656E746572206F662069747320616E63686F72207768656E20746869732062616467652068617320746578742E
		Function GetBadgeHorizontalOffsetWithTextAtXC(Extends ctrl As MobileTabPanel, index As Integer) As Integer
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Function getHorizontalOffsetWithText Lib kBadgeDrawableInstance (obj As Ptr) As Int32
		    Return getHorizontalOffsetWithText(ctrl.BadgeAt(index))
		    
		  #Else
		    
		    #Pragma Unused index
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E732074686520626164676520686F72697A6F6E74616C2070616464696E6720696E20706978656C732E
		Function GetBadgeHorizontalPaddingAtXC(Extends ctrl As MobileTabPanel, index As Integer) As Integer
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Function getHorizontalPadding Lib kBadgeDrawableInstance (obj As Ptr) As Int32
		    Return getHorizontalPadding(ctrl.BadgeAt(index))
		    
		  #Else
		    
		    #Pragma Unused index
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E7320746869732062616467652773206D61782063686172616374657220636F756E742E
		Function GetBadgeMaxCharacterCountAtXC(Extends ctrl As MobileTabPanel, index As Integer) As Integer
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Function getMaxCharacterCount Lib kBadgeDrawableInstance (obj As Ptr) As Int32
		    Return getMaxCharacterCount(ctrl.BadgeAt(index))
		    
		  #Else
		    
		    #Pragma Unused index
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E7320746869732062616467652773206D6178206E756D6265722E204966206D6178436861726163746572436F756E74206973207365742C2069742077696C6C206F766572726964652074686973206E756D6265722E
		Function GetBadgeMaxNumberAtXC(Extends ctrl As MobileTabPanel, index As Integer) As Integer
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Function getMaxNumber Lib kBadgeDrawableInstance (obj As Ptr) As Int32
		    Return getMaxNumber(ctrl.BadgeAt(index))
		    
		  #Else
		    
		    #Pragma Unused index
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E7320686F77206D7563682028696E20706978656C73292074686973206261646765206973206265696E6720686F72697A6F6E74616C6C79206F666673657420746F7761726473207468652063656E746572206F662069747320616E63686F722E0A0A546869732072657475726E732074686520686F72697A6F6E74616C206F666673657420666F722062616467657320776974686F757420746578742E204966206F666673657420666F72206261646765732077697468207465787420616E6420776974686F757420746578742061726520646966666572656E7420636F6E7369646572207573696E6720676574486F72697A6F6E74616C4F6666736574576974686F7574546578742829206F7220676574486F72697A6F6E74616C4F6666736574576974685465787428292E
		Function GetBadgeNumberAtXC(Extends ctrl As MobileTabPanel, index As Integer) As Integer
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Function getNumber Lib kBadgeDrawableInstance (obj As Ptr) As Int32
		    Return getNumber(ctrl.BadgeAt(index))
		    
		  #Else
		    
		    #Pragma Unused index
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetBadgeOpacityAtXC(Extends ctrl As MobileTabPanel, index As Integer) As Integer
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Function getOpacity Lib kBadgeDrawableInstance (obj As Ptr) As Int32
		    Return getOpacity(ctrl.BadgeAt(index))
		    
		  #Else
		    
		    #Pragma Unused index
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E207468652074657874206F662074686973207461622E
		Function GetBadgeTextAtXC(Extends ctrl As MobileTabPanel, index As Integer) As String
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Function getText Lib kBadgeDrawableInstance (obj As Ptr) As CString
		    Return getText(ctrl.BadgeAt(index))
		    
		  #Else
		    
		    #Pragma Unused index
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E7320746869732062616467652773207465787420636F6C6F722E
		Function GetBadgeTextColorAtXC(Extends ctrl As MobileTabPanel, index As Integer) As Color
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Function getBadgeTextColor Lib kBadgeDrawableInstance (obj As Ptr) As Int32
		    Return getBadgeTextColor(ctrl.BadgeAt(index)).ToColor
		    
		  #Else
		    
		    #Pragma Unused index
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E7320686F77206D7563682028696E20706978656C73292074686973206261646765206973206265696E6720766572746963616C6C79206D6F76656420746F7761726473207468652063656E746572206F662069747320616E63686F722E0A0A546869732072657475726E732074686520766572746963616C206F666673657420666F722062616467657320776974686F757420746578742E204966206F666673657420666F72206261646765732077697468207465787420616E6420776974686F757420746578742061726520646966666572656E7420636F6E7369646572207573696E6720676574566572746963616C4F6666736574576974686F7574546578742829206F7220676574566572746963616C4F6666736574576974685465787428292E
		Function GetBadgeVerticalOffsetAtXC(Extends ctrl As MobileTabPanel, index As Integer) As Integer
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Function getVerticalOffset Lib kBadgeDrawableInstance (obj As Ptr) As Int32
		    Return getVerticalOffset(ctrl.BadgeAt(index))
		    
		  #Else
		    
		    #Pragma Unused index
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E7320686F77206D7563682028696E20706978656C73292074686973206261646765206973206265696E6720766572746963616C6C79206F666673657420746F7761726473207468652063656E746572206F662069747320616E63686F72207768656E207468697320626164676520646F6573206E6F742068617665207465787420286973206120646F74292E
		Function GetBadgeVerticalOffsetWithoutTextAtXC(Extends ctrl As MobileTabPanel, index As Integer) As Integer
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Function getVerticalOffsetWithoutText Lib kBadgeDrawableInstance (obj As Ptr) As Int32
		    Return getVerticalOffsetWithoutText(ctrl.BadgeAt(index))
		    
		  #Else
		    
		    #Pragma Unused index
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E7320686F77206D7563682028696E20706978656C73292074686973206261646765206973206265696E6720766572746963616C6C79206D6F76656420746F7761726473207468652063656E746572206F662069747320616E63686F72207768656E207468652062616467652068617320746578742E
		Function GetBadgeVerticalOffsetWithTextAtXC(Extends ctrl As MobileTabPanel, index As Integer) As Integer
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Function getVerticalOffsetWithText Lib kBadgeDrawableInstance (obj As Ptr) As Int32
		    Return getVerticalOffsetWithText(ctrl.BadgeAt(index))
		    
		  #Else
		    
		    #Pragma Unused index
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E732074686520626164676520766572746963616C2070616464696E6720696E20706978656C732E
		Function GetBadgeVerticalPaddingAtXC(Extends ctrl As MobileTabPanel, index As Integer) As Integer
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Function getVerticalPadding Lib kBadgeDrawableInstance (obj As Ptr) As Int32
		    Return getVerticalPadding(ctrl.BadgeAt(index))
		    
		  #Else
		    
		    #Pragma Unused index
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 476574207468652063757272656E7420696E64696361746F7220616E696D6174696F6E206D6F6465207573656420746F20616E696D617465207468652073656C656374696F6E20696E64696361746F72206265747765656E2064657374696E6174696F6E732E
		Function GetTabIndicatorAnimationModeXC(Extends ctrl As MobileTabPanel) As TabIndicatorAnimationModesXC
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Function getTabIndicatorAnimationMode Lib kLibMobileTabPanel As Integer
		    Return TabIndicatorAnimationModesXC(getTabIndicatorAnimationMode)
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 476574207468652063757272656E7420696E64696361746F722067726176697479207573656420746F20616C69676E20746865207461622073656C656374696F6E20696E64696361746F7220696E20746865205461624C61796F75742E
		Function GetTabIndicatorGravityXC(Extends ctrl As MobileTabPanel) As TabGravityXC
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Function getTabIndicatorGravity Lib kLibMobileTabPanel As Integer
		    Return TabGravityXC(getTabIndicatorGravity)
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E73207468652063757272656E74206D6F646520757365642062792074686973205461624C61796F75742E
		Function GetTabModeXC(Extends ctrl As MobileTabPanel) As TabModesXC
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Function getTabMode Lib kLibMobileTabPanel As Integer
		    Return TabModesXC(getTabMode)
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E73207768657468657220746869732062616467652077696C6C20646973706C61792061206E756D6265722E
		Function HasBadgeNumberAtXC(Extends ctrl As MobileTabPanel, index As Integer) As Boolean
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Function hasNumber Lib kBadgeDrawableInstance (obj As Ptr) As Boolean
		    Return hasNumber(ctrl.BadgeAt(index))
		    
		  #Else
		    
		    #Pragma Unused index
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E732077686574686572207468652062616467652077696C6C20646973706C6179206120746578742E
		Function HasBadgeTextAtXC(Extends ctrl As MobileTabPanel, index As Integer) As Boolean
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Function hasText Lib kBadgeDrawableInstance (obj As Ptr) As Boolean
		    Return hasText(ctrl.BadgeAt(index))
		    
		  #Else
		    
		    #Pragma Unused index
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E7320776865746865722074686973205461624C61796F75742068617320616E20756E626F756E64656420726970706C65206566666563742C206F7220696620726970706C6520697320626F756E6420746F2074686520746162206974656D2073697A652E
		Function HasUnboundedRippleXC(Extends ctrl As MobileTabPanel) As Boolean
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Function hasUnboundedRipple Lib kLibMobileTabPanel As Boolean
		    Return hasUnboundedRipple
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E73207768657468657220746162206C6162656C732077696C6C20626520646973706C6179656420696E6C696E652077697468207461622069636F6E732C206F7220696620746865792077696C6C20626520646973706C6179656420756E6465726E65617468207461622069636F6E732E
		Function IsInlineLabelXC(Extends ctrl As MobileTabPanel) As Boolean
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Function isInlineLabel Lib kLibMobileTabPanel As Boolean
		    Return isInlineLabel
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 4765742077686574686572206F72206E6F742073656C656374696F6E20696E64696361746F722077696474682069732066697420746F2066756C6C207769647468206F662074686520746162206974656D2C206F722066697420746F2074686520746162206974656D277320636F6E74656E742E
		Function IsTabIndicatorFullWidthXC(Extends ctrl As MobileTabPanel) As Boolean
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Function isTabIndicatorFullWidth Lib kLibMobileTabPanel As Boolean
		    Return isTabIndicatorFullWidth
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52656D6F766573207468652042616467654472617761626C652E20446F206E6F7468696E67206966206E6F6E65206578697374732E20436F6E7369646572206368616E67696E6720746865207669736962696C697479206F66207468652042616467654472617761626C6520696620796F75206F6E6C792077616E7420746F20686964652069742074656D706F726172696C792E
		Sub RemoveBadgeAtXC(Extends ctrl As MobileTabPanel, index As Integer)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub removeBadge Lib kTabLayoutInstance (obj As Ptr)
		    removeBadge(ctrl.BadgeAt(index, False))
		    
		  #Else
		    
		    #Pragma Unused index
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 536574732077686574686572206F72206E6F7420746F206175746F2061646A7573742074686520626164676520706C6163656D656E7420746F2077697468696E2074686520626164676520616E63686F722773206772616E64706172656E7420766965772E
		Sub SetAutoAdjustToWithinGrandparentBoundsXC(Extends ctrl As MobileTabPanel, index As Integer, autoAdjustToWithinGrandparentBounds As Boolean)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub setAutoAdjustToWithinGrandparentBounds Lib kBadgeDrawableInstance (obj As Ptr, myValue As Boolean)
		    setAutoAdjustToWithinGrandparentBounds(ctrl.BadgeAt(index), autoAdjustToWithinGrandparentBounds)
		    
		  #Else
		    
		    #Pragma Unused index
		    #Pragma Unused autoAdjustToWithinGrandparentBounds
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetBadgeAlphaAtXC(Extends ctrl As MobileTabPanel, index As Integer, alpha As Integer)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub setAlpha Lib kBadgeDrawableInstance (obj As Ptr, myAlpha As Int32)
		    setAlpha(ctrl.BadgeAt(index), alpha)
		    
		  #Else
		    
		    #Pragma Unused index
		    #Pragma Unused alpha
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 5365747320746869732062616467652773206261636B67726F756E6420636F6C6F722E
		Sub SetBadgeBackgroundColorAtXC(Extends ctrl As MobileTabPanel, index As Integer, backgroundColor As Color)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub setBackgroundColor Lib kBadgeDrawableInstance (obj As Ptr, myBackgroundColor As Int32)
		    setBackgroundColor(ctrl.BadgeAt(index), backgroundColor.ToInteger)
		    
		  #Else
		    
		    #Pragma Unused index
		    #Pragma Unused backgroundColor
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 5370656369666965732074686520636F6E74656E74206465736372697074696F6E2069662074686520746578742069732073657420666F72207468652062616467652E2049662074686520746578742069732073657420666F722074686520626164676520616E642074686520636F6E74656E74206465736372697074696F6E206973206E756C6C2C2074686520626164676520746578742077696C6C20626520757365642061732074686520636F6E74656E74206465736372697074696F6E2062792064656661756C742E
		Sub SetBadgeContentDescriptionForTextAtXC(Extends ctrl As MobileTabPanel, index As Integer, text As CString)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub setContentDescriptionForText Lib kBadgeDrawableInstance (obj As Ptr, myText As CString)
		    setContentDescriptionForText(ctrl.BadgeAt(index), text)
		    
		  #Else
		    
		    #Pragma Unused index
		    #Pragma Unused text
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 5370656369666965732074686520636F6E74656E74206465736372697074696F6E206966206E6F2074657874206F72206E756D6265722069732073657420666F72207468652062616467652E
		Sub SetBadgeContentDescriptionNumberlessXC(Extends ctrl As MobileTabPanel, index As Integer, text As CString)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub setContentDescriptionNumberless Lib kBadgeDrawableInstance (obj As Ptr, myText As CString)
		    setContentDescriptionNumberless(ctrl.BadgeAt(index), text)
		    
		  #Else
		    
		    #Pragma Unused index
		    #Pragma Unused text
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 536574732074686973206261646765277320677261766974792077697468207265737065637420746F2069747320616E63686F7220766965772E
		Sub SetBadgeGravityAtXC(Extends ctrl As MobileTabPanel, index As Integer, gravity As BadgeGravityXC)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub setBadgeGravity Lib kBadgeDrawableInstance (obj As Ptr, myGravity As Int32)
		    setBadgeGravity(ctrl.BadgeAt(index), Integer(gravity))
		    
		  #Else
		    
		    #Pragma Unused index
		    #Pragma Unused gravity
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 5365747320686F77206D7563682028696E20706978656C732920746F20686F72697A6F6E74616C6C79206D6F7665207468697320626164676520746F7761726473207468652063656E746572206F662069747320616E63686F722E0A0A5468697320736574732074686520686F72697A6F6E74616C206F666673657420666F722062616467657320776974686F757420746578742028646F74732920616E64207769746820746578742E
		Sub SetBadgeHorizontalOffsetAtXC(Extends ctrl As MobileTabPanel, index As Integer, px As Integer)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub setHorizontalOffset Lib kBadgeDrawableInstance (obj As Ptr, myPX As Int32)
		    setHorizontalOffset(ctrl.BadgeAt(index), px)
		    
		  #Else
		    
		    #Pragma Unused index
		    #Pragma Unused px
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 5365747320686F77206D7563682028696E20706978656C732920746F20686F72697A6F6E74616C6C79206D6F7665207468697320626164676520746F7761726473207468652063656E746572206F662069747320616E63686F72207768656E207468697320626164676520646F6573206E6F742068617665207465787420286973206120646F74292E
		Sub SetBadgeHorizontalOffsetWithoutTextAtXC(Extends ctrl As MobileTabPanel, index As Integer, px As Integer)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub setHorizontalOffsetWithoutText Lib kBadgeDrawableInstance (obj As Ptr, myPX As Int32)
		    setHorizontalOffsetWithoutText(ctrl.BadgeAt(index), px)
		    
		  #Else
		    
		    #Pragma Unused index
		    #Pragma Unused px
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 5365747320686F77206D7563682028696E20706978656C732920746F20686F72697A6F6E74616C6C79206D6F7665207468697320626164676520746F7761726473207468652063656E746572206F662069747320616E63686F72207768656E20746869732062616467652068617320746578742E
		Sub SetBadgeHorizontalOffsetWithTextAtXC(Extends ctrl As MobileTabPanel, index As Integer, px As Integer)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub setHorizontalOffsetWithText Lib kBadgeDrawableInstance (obj As Ptr, myPX As Int32)
		    setHorizontalOffsetWithText(ctrl.BadgeAt(index), px)
		    
		  #Else
		    
		    #Pragma Unused index
		    #Pragma Unused px
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 5365747320686F77206D7563682028696E20706978656C732920686F72697A6F6E74616C2070616464696E6720746F2061646420746F20746865206261646765207768656E20697420686173206C6162656C20636F6E74656E74732E204E6F746520746861742062616467657320686176652061206D696E696D756D2077696474682061732073706563696669656420627920636F6D2E676F6F676C652E616E64726F69642E6D6174657269616C2E522E7374796C6561626C652342616467655F626164676557696474682E
		Sub SetBadgeHorizontalPaddingAtXC(Extends ctrl As MobileTabPanel, index As Integer, horizontalPadding As Integer)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub setHorizontalPadding Lib kBadgeDrawableInstance (obj As Ptr, myHorizontalPadding As Int32)
		    setHorizontalPadding(ctrl.BadgeAt(index), horizontalPadding)
		    
		  #Else
		    
		    #Pragma Unused index
		    #Pragma Unused horizontalPadding
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 5365747320686F77206D7563682028696E20706978656C732920746F20766572746963616C6C79206D6F766520746869732062616467652061776179207468652063656E746572206F662069747320616E63686F72207768656E207468697320626164676520686173207465787420616E642074686520666F6E74207363616C65206973206174206D61782073697A652E205468697320697320696E20636F6E6A756E6374696F6E20776974682074686520766572746963616C206F6666736574207769746820746578742E
		Sub SetBadgeLargeFontVerticalOffsetAdjustmentXC(Extends ctrl As MobileTabPanel, index As Integer, px As Integer)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub setLargeFontVerticalOffsetAdjustment Lib kBadgeDrawableInstance (obj As Ptr, myPX As Int32)
		    setLargeFontVerticalOffsetAdjustment(ctrl.BadgeAt(index), px)
		    
		  #Else
		    
		    #Pragma Unused index
		    #Pragma Unused px
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 5365747320746869732062616467652773206D61782063686172616374657220636F756E742E
		Sub SetBadgeMaxCharacterCountAtXC(Extends ctrl As MobileTabPanel, index As Integer, maxCharacterCount As Integer)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub setMaxCharacterCount Lib kBadgeDrawableInstance (obj As Ptr, myMaxCharacterCount As Int32)
		    setMaxCharacterCount(ctrl.BadgeAt(index), maxCharacterCount)
		    
		  #Else
		    
		    #Pragma Unused index
		    #Pragma Unused maxCharacterCount
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 5365747320746869732062616467652773206D6178206E756D6265722E204966206D6178436861726163746572436F756E74206973207365742C2069742077696C6C206F766572726964652074686973206E756D6265722E
		Sub SetBadgeMaxNumberAtXC(Extends ctrl As MobileTabPanel, index As Integer, maxNumber As Integer)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub setMaxNumber Lib kBadgeDrawableInstance (obj As Ptr, myMaxNumber As Int32)
		    setMaxNumber(ctrl.BadgeAt(index), maxNumber)
		    
		  #Else
		    
		    #Pragma Unused index
		    #Pragma Unused maxNumber
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 53657473207468652062616467652773206E756D6265722E204F6E6C79206E6F6E2D6E6567617469766520696E7465676572206E756D626572732061726520737570706F727465642E20496620746865206E756D626572206973206E656761746976652C2069742077696C6C20626520636C616D70656420746F20302E20546865207370656369666965642076616C75652077696C6C20626520646973706C617965642C20756E6C65737320697473206E756D626572206F66206469676974732065786365656473206D6178436861726163746572436F756E7420696E20776869636820636173652061207472756E63617465642076657273696F6E2077696C6C2062652073686F776E2E
		Sub SetBadgeNumberAtXC(Extends ctrl As MobileTabPanel, index As Integer, number As Integer)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub setNumber Lib kBadgeDrawableInstance (obj As Ptr, myNumber As Int32)
		    setNumber(ctrl.BadgeAt(index), number)
		    
		  #Else
		    
		    #Pragma Unused index
		    #Pragma Unused number
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 5365747320746865206261646765277320746578742E205468652073706563696669656420746578742077696C6C20626520646973706C617965642C20756E6C65737320697473206C656E6774682065786365656473206D6178436861726163746572436F756E7420696E20776869636820636173652061207472756E63617465642076657273696F6E2077696C6C2062652073686F776E2E
		Sub SetBadgeTextAtXC(Extends ctrl As MobileTabPanel, index As Integer, text As String)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub setText Lib kBadgeDrawableInstance (obj As Ptr, myText As CString)
		    setText(ctrl.BadgeAt(index), text)
		    
		  #Else
		    
		    #Pragma Unused index
		    #Pragma Unused text
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 5365747320746869732062616467652773207465787420636F6C6F722E
		Sub SetBadgeTextColorAtXC(Extends ctrl As MobileTabPanel, index As Integer, badgeTextColor As Color)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub setBadgeTextColor Lib kBadgeDrawableInstance (obj As Ptr, myBadgeTextColor As Int32)
		    setBadgeTextColor(ctrl.BadgeAt(index), badgeTextColor.ToInteger)
		    
		  #Else
		    
		    #Pragma Unused index
		    #Pragma Unused badgeTextColor
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 5365747320686F77206D7563682028696E20706978656C732920746F20766572746963616C6C79206D6F7665207468697320626164676520746F7761726473207468652063656E746572206F662069747320616E63686F722E0A0A5468697320736574732074686520766572746963616C206F666673657420666F722062616467657320626F746820776974686F757420746578742028646F74732920616E64207769746820746578742E
		Sub SetBadgeVerticalOffsetAtXC(Extends ctrl As MobileTabPanel, index As Integer, px As Integer)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub setVerticalOffset Lib kBadgeDrawableInstance (obj As Ptr, myPX As Int32)
		    setVerticalOffset(ctrl.BadgeAt(index), px)
		    
		  #Else
		    
		    #Pragma Unused index
		    #Pragma Unused px
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 5365747320686F77206D7563682028696E20706978656C732920746F20766572746963616C6C79206D6F7665207468697320626164676520746F7761726473207468652063656E746572206F662069747320616E63686F72207768656E207468697320626164676520646F6573206E6F742068617665207465787420286973206120646F74292E
		Sub SetBadgeVerticalOffsetWithoutTextAtXC(Extends ctrl As MobileTabPanel, index As Integer, px As Integer)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub setVerticalOffsetWithoutText Lib kBadgeDrawableInstance (obj As Ptr, myPX As Int32)
		    setVerticalOffsetWithoutText(ctrl.BadgeAt(index), px)
		    
		  #Else
		    
		    #Pragma Unused index
		    #Pragma Unused px
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 5365747320686F77206D7563682028696E20706978656C732920746F20766572746963616C6C79206D6F7665207468697320626164676520746F7761726473207468652063656E746572206F662069747320616E63686F72207768656E20746869732062616467652068617320746578742E
		Sub SetBadgeVerticalOffsetWithTextAtXC(Extends ctrl As MobileTabPanel, index As Integer, px As Integer)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub setVerticalOffsetWithText Lib kBadgeDrawableInstance (obj As Ptr, myPX As Int32)
		    setVerticalOffsetWithText(ctrl.BadgeAt(index), px)
		    
		  #Else
		    
		    #Pragma Unused index
		    #Pragma Unused px
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 5365747320686F77206D7563682028696E20706978656C732920686F72697A6F6E74616C2070616464696E6720746F2061646420746F20746865206261646765207768656E20697420686173206C6162656C20636F6E74656E74732E204E6F746520746861742062616467657320686176652061206D696E696D756D2077696474682061732073706563696669656420627920636F6D2E676F6F676C652E616E64726F69642E6D6174657269616C2E522E7374796C6561626C652342616467655F626164676557696474682E
		Sub SetBadgeVerticalPaddingAtXC(Extends ctrl As MobileTabPanel, index As Integer, verticalPadding As Integer)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub setVerticalPadding Lib kBadgeDrawableInstance (obj As Ptr, myVerticalPadding As Int32)
		    setVerticalPadding(ctrl.BadgeAt(index), verticalPadding)
		    
		  #Else
		    
		    #Pragma Unused index
		    #Pragma Unused verticalPadding
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 536574207768657468657220746162206C6162656C732077696C6C20626520646973706C6179656420696E6C696E652077697468207461622069636F6E732C206F7220696620746865792077696C6C20626520646973706C6179656420756E6465726E65617468207461622069636F6E732E
		Sub SetInlineLabelXC(Extends ctrl As MobileTabPanel, value As Boolean)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub setInlineLabel Lib kLibMobileTabPanel (myInline As Boolean)
		    setInlineLabel(value)
		    
		  #Else
		    
		    #Pragma Unused value
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 53657420746865207363726F6C6C20706F736974696F6E206F6620746865205461624C61796F75742E
		Sub SetScrollPositionXC(Extends ctrl As MobileTabPanel, position As Integer, positionOffset As Single, updateSelectedTabView As Boolean)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub setScrollPosition Lib kLibMobileTabPanel (myPosition As Int32, myPositionOffset As Single, myUpdateSelectedTabView As Boolean)
		    setScrollPosition(position, positionOffset, updateSelectedTabView)
		    
		  #Else
		    
		    #Pragma Unused position
		    #Pragma Unused positionOffset
		    #Pragma Unused updateSelectedTabView
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 53657420746865207363726F6C6C20706F736974696F6E206F6620746865205461624C61796F75742E
		Sub SetScrollPositionXC(Extends ctrl As MobileTabPanel, position As Integer, positionOffset As Single, updateSelectedTabView As Boolean, updateIndicatorPosition As Boolean)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub setScrollPosition Lib kLibMobileTabPanel (myPosition As Int32, myPositionOffset As Single, myUpdateSelectedTabView As Boolean, myUpdateIndicatorPosition As Boolean)
		    setScrollPosition(position, positionOffset, updateSelectedTabView, updateIndicatorPosition)
		    
		  #Else
		    
		    #Pragma Unused position
		    #Pragma Unused positionOffset
		    #Pragma Unused updateSelectedTabView
		    #Pragma Unused updateIndicatorPosition
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 53657473207468652074616220696E64696361746F72277320636F6C6F7220666F72207468652063757272656E746C792073656C6563746564207461622E
		Sub SetSelectedTabIndicatorColorXC(Extends ctrl As MobileTabPanel, c As Color)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub setSelectedTabIndicatorColor Lib kLibMobileTabPanel (myColor As Int32)
		    setSelectedTabIndicatorColor(c.ToInteger)
		    
		  #Else
		    
		    #Pragma Unused c
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 5365742074686520696E64696361746F722067726176697479207573656420746F20616C69676E20746865207461622073656C656374696F6E20696E64696361746F7220696E20746865205461624C61796F75742E20596F75206D757374207365742074686520696E64696361746F7220686569676874207669612074686520637573746F6D20696E64696361746F72206472617761626C65277320696E7472696E736963206865696768742028707265666572726564292C207669612074686520746162496E64696361746F7248656967687420617474726962757465202864657072656361746564292C206F72207669612073657453656C6563746564546162496E64696361746F7248656967687428696E7429202864657072656361746564292E204F74686572776973652C2074686520696E64696361746F722077696C6C206E6F742062652073686F776E20756E6C65737320677261766974792069732073657420746F20494E44494341544F525F475241564954595F535452455443482C20696E20776869636820636173652069742077696C6C2069676E6F726520696E64696361746F722068656967687420616E642073747265746368206163726F73732074686520656E7469726520686569676874206F6620746865205461624C61796F75742E20546869732064656661756C747320746F20494E44494341544F525F475241564954595F424F54544F4D206966206E6F74207365742E
		Sub SetSelectedTabIndicatorGravityXC(Extends ctrl As MobileTabPanel, indicatorGravity As TabIndicatorGravityXC)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub setSelectedTabIndicatorGravity Lib kLibMobileTabPanel (myIndicatorGravity As Int32)
		    setSelectedTabIndicatorGravity(Integer(indicatorGravity))
		    
		  #Else
		    
		    #Pragma Unused indicatorGravity
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetTabBackgroundColorAtXC(Extends ctrl As MobileTabPanel, index As Integer, c As Color)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub setBackgroundColor Lib kLibMobileTabPanelKotlin Alias "getTabAt(myindex.toInt())!!.view.setBackgroundColor(mycolor.toInt())" (myIndex As Int32, myColor As Int32)
		    setBackgroundColor(index, c.ToInteger)
		    
		  #Else
		    
		    #Pragma Unused index
		    #Pragma Unused c
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 53657420746865206772617669747920746F20757365207768656E206C6179696E67206F75742074686520746162732E
		Sub SetTabGravityXC(Extends ctrl As MobileTabPanel, gravity As TabGravityXC)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub setTabGravity Lib kLibMobileTabPanel (myGravity As Int32)
		    setTabGravity(Integer(gravity))
		    
		  #Else
		    
		    #Pragma Unused gravity
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 53657420746865206D6F6465206279207768696368207468652073656C656374696F6E20696E64696361746F722073686F756C6420616E696D617465207768656E206D6F76696E67206265747765656E2064657374696E6174696F6E732E0A0A44656661756C747320746F20494E44494341544F525F414E494D4154494F4E5F4D4F44455F4C494E4541522E204368616E67696E6720746869732069732075736566756C2061732061207374796C69737469632063686F6963652E
		Sub SetTabIndicatorAnimationModeXC(Extends ctrl As MobileTabPanel, tabIndicatorAnimationMode As TabIndicatorAnimationModesXC)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub setTabIndicatorAnimationMode Lib kLibMobileTabPanel (myTabIndicatorAnimationMode As Int32)
		    setTabIndicatorAnimationMode(Integer(tabIndicatorAnimationMode))
		    
		  #Else
		    
		    #Pragma Unused tabIndicatorAnimationMode
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 456E61626C65206F722064697361626C65206F7074696F6E20746F2066697420746865207461622073656C656374696F6E20696E64696361746F7220746F207468652066756C6C207769647468206F662074686520746162206974656D20726174686572207468616E20746F2074686520746162206974656D277320636F6E74656E742E
		Sub SetTabIndicatorFullWidthXC(Extends ctrl As MobileTabPanel, tabIndicatorFullWidth As Boolean)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub setTabIndicatorFullWidth Lib kLibMobileTabPanel (myTabIndicatorFullWidth As Boolean)
		    setTabIndicatorFullWidth(tabIndicatorFullWidth)
		    
		  #Else
		    
		    #Pragma Unused tabIndicatorFullWidth
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 53657420746865206265686176696F72206D6F646520666F7220746865205461627320696E2074686973206C61796F75742E205468652076616C696420696E707574206F7074696F6E73206172653A0A0A4D4F44455F46495845443A204669786564207461627320646973706C617920616C6C207461627320636F6E63757272656E746C7920616E642061726520626573742075736564207769746820636F6E74656E7420746861742062656E65666974732066726F6D20717569636B207069766F7473206265747765656E20746162732E0A0A4D4F44455F5343524F4C4C41424C453A205363726F6C6C61626C65207461627320646973706C6179206120737562736574206F66207461627320617420616E7920676976656E206D6F6D656E742C20616E642063616E20636F6E7461696E206C6F6E67657220746162206C6162656C7320616E642061206C6172676572206E756D626572206F6620746162732E2054686579206172652062657374207573656420666F722062726F7773696E6720636F6E746578747320696E20746F75636820696E7465726661636573207768656E20757365727320646F6E2774206E65656420746F206469726563746C7920636F6D706172652074686520746162206C6162656C732E2054686973206D6F646520697320636F6D6D6F6E6C79207573656420776974682061205669657750616765722E
		Sub SetTabModeXC(Extends ctrl As MobileTabPanel, mode As TabModesXC)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub setTabMode Lib kLibMobileTabPanel (myMode As Int32)
		    setTabMode(Integer(mode))
		    
		  #Else
		    
		    #Pragma Unused mode
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 5365747320746865207465787420636F6C6F727320666F722074686520646966666572656E742073746174657320286E6F726D616C2C2073656C656374656429207573656420666F722074686520746162732E
		Sub SetTabTextColorsXC(Extends ctrl As MobileTabPanel, normalColor As Color, selectedColor As Color)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub setTabTextColors Lib kLibMobileTabPanel (myNormalColor As Int32, mySelectedColor As Int32)
		    setTabTextColors(normalColor.ToInteger, selectedColor.ToInteger)
		    
		  #Else
		    
		    #Pragma Unused normalColor
		    #Pragma Unused selectedColor
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 53657420776865746865722074686973205461624C61796F75742077696C6C206861766520616E20756E626F756E64656420726970706C6520656666656374206F7220696620726970706C652077696C6C20626520626F756E6420746F2074686520746162206974656D2073697A652E0A0A44656661756C747320746F2066616C73652E
		Sub SetUnboundedRippleXC(Extends ctrl As MobileTabPanel, unboundedRipple As Boolean)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub setUnboundedRipple Lib kLibMobileTabPanel (myUnboundedRipple As Boolean)
		    setUnboundedRipple(unboundedRipple)
		    
		  #Else
		    
		    #Pragma Unused unboundedRipple
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 456E61626C65206F722064697361626C65207573657220696E69746961746564207363726F6C6C696E672E205468697320696E636C7564657320746F75636820696E70757420287363726F6C6C20616E6420666C696E672067657374757265732920616E64206163636573736962696C69747920696E7075742E2044697361626C696E67206B6579626F61726420696E707574206973206E6F742079657420737570706F727465642E205768656E207573657220696E69746961746564207363726F6C6C696E672069732064697361626C65642C2070726F6772616D6D61746963207363726F6C6C73207468726F7567682073657443757272656E744974656D207374696C6C20776F726B2E2042792064656661756C742C207573657220696E69746961746564207363726F6C6C696E6720697320656E61626C65642E
		Sub SetUserInputEnabledXC(Extends ctrl As MobileTabPanel, enabled As Boolean)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub setUserInputEnabled Lib kLibMobileTabPanel Alias "_tabPager!!.setUserInputEnabled" (myEnabled As Boolean)
		    setUserInputEnabled(enabled)
		    
		  #Else
		    
		    #Pragma Unused enabled
		    
		  #EndIf
		End Sub
	#tag EndMethod


	#tag Constant, Name = kBadgeDrawableInstance, Type = String, Dynamic = False, Default = \"com.google.android.material.badge.BadgeDrawable.instance", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kLibMobileTabPanel, Type = String, Dynamic = False, Default = \"Object:ctrl:MobileTabPanel", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kLibMobileTabPanelKotlin, Type = String, Dynamic = False, Default = \"Object:ctrl:MobileTabPanel:Kotlin", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kTabLayoutInstance, Type = String, Dynamic = False, Default = \"com.google.android.material.tabs.TabLayout.Tab.instance", Scope = Private
	#tag EndConstant


	#tag Enum, Name = BadgeGravityXC, Type = Integer, Flags = &h0
		TopStart = 8388659
		TopEnd = 8388661
	#tag EndEnum

	#tag Enum, Name = TabGravityXC, Type = Integer, Flags = &h0
		Fill = 0
		  Center = 1
		Start = 2
	#tag EndEnum

	#tag Enum, Name = TabIndicatorAnimationModesXC, Type = Integer, Flags = &h0
		Linear = 0
		  Elastic = 1
		Fade = 2
	#tag EndEnum

	#tag Enum, Name = TabIndicatorGravityXC, Type = Integer, Flags = &h0
		Bottom = 0
		  Center = 1
		  Top = 2
		Stretch = 3
	#tag EndEnum

	#tag Enum, Name = TabModesXC, Type = Integer, Flags = &h0
		Scrollable = 0
		  Fixed = 1
		Auto = 2
	#tag EndEnum


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
	#tag EndViewBehavior
End Module
#tag EndModule
