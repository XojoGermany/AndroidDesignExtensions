#tag Module
Protected Module TextFieldXC
	#tag CompatibilityFlags = ( TargetAndroid and ( Target64Bit ) )
	#tag Method, Flags = &h0, Description = 436F6E76656E69656E6365206D6574686F6420746F20617070656E642074686520737065636966696564207465787420746F20746865205465787456696577277320646973706C6179206275666665722C20757067726164696E6720697420746F2054657874566965772E427566666572547970652E4544495441424C4520696620697420776173206E6F7420616C7265616479206564697461626C652E
		Sub AppendXC(Extends ctrl As MobileTextField, text As String)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub append Lib kLibMobileTextField (myText As CString)
		    append(text)
		    
		  #Else
		    
		    #Pragma Unused text
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 436F6E76656E69656E6365206D6574686F6420746F20617070656E642074686520737065636966696564207465787420736C69636520746F20746865205465787456696577277320646973706C6179206275666665722C20757067726164696E6720697420746F2054657874566965772E427566666572547970652E4544495441424C4520696620697420776173206E6F7420616C7265616479206564697461626C652E0A0A73746172743A0974686520696E646578206F66207468652066697273742063686172616374657220696E2074686520746578740A656E643A090974686520696E646578206F66207468652063686172616374657220666F6C6C6F77696E6720746865206C6173742063686172616374657220696E207468652074657874
		Sub AppendXC(Extends ctrl As MobileTextField, text As String, start As Integer, stop As Integer)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub append Lib kLibMobileTextField (myText As CString, myStart As Int32, myStop As Int32)
		    append(text, start, stop)
		    
		  #Else
		    
		    #Pragma Unused text
		    #Pragma Unused start
		    #Pragma Unused stop
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E73207468652066696C6C656420626F7827732064656661756C74206261636B67726F756E6420636F6C6F722E
		Function GetBoxBackgroundColorXC(Extends ctrl As MobileTextField) As Color
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Function getBoxBackgroundColor Lib kTextInputLayoutLib (obj As Ptr) As Int32
		    Return getBoxBackgroundColor(ctrl.Layout).ToColor
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 4765742074686520626F78206261636B67726F756E64206D6F6465202866696C6C65642C206F75746C696E652C206F72206E6F6E65292E
		Function GetBoxBackgroundModeXC(Extends ctrl As MobileTextField) As BoxBackgroundModesXC
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Function getBoxBackgroundMode Lib kTextInputLayoutLib (obj As Ptr) As Integer
		    Return BoxBackgroundModesXC(getBoxBackgroundMode(ctrl.Layout))
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E732074686520626F78277320626F74746F6D20656E6420636F726E6572207261646975732E
		Function GetBoxCornerRadiusBottomEndXC(Extends ctrl As MobileTextField) As Single
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Function getBoxCornerRadiusBottomEnd Lib kTextInputLayoutLib (obj As Ptr) As Single
		    Return getBoxCornerRadiusBottomEnd(ctrl.Layout)
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E732074686520626F78277320626F74746F6D20737461727420636F726E6572207261646975732E
		Function GetBoxCornerRadiusBottomStartXC(Extends ctrl As MobileTextField) As Single
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Function getBoxCornerRadiusBottomStart Lib kTextInputLayoutLib (obj As Ptr) As Single
		    Return getBoxCornerRadiusBottomStart(ctrl.Layout)
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E732074686520626F78277320746F7020656E6420636F726E6572207261646975732E
		Function GetBoxCornerRadiusTopEndXC(Extends ctrl As MobileTextField) As Single
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Function getBoxCornerRadiusTopEnd Lib kTextInputLayoutLib (obj As Ptr) As Single
		    Return getBoxCornerRadiusTopEnd(ctrl.Layout)
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E732074686520626F78277320746F7020737461727420636F726E6572207261646975732E
		Function GetBoxCornerRadiusTopStartXC(Extends ctrl As MobileTextField) As Single
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Function getBoxCornerRadiusTopStart Lib kTextInputLayoutLib (obj As Ptr) As Single
		    Return getBoxCornerRadiusTopStart(ctrl.Layout)
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E732074686520626F782773207374726F6B6520666F637573656420636F6C6F722E
		Function GetBoxStrokeColorXC(Extends ctrl As MobileTextField) As Color
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Function getBoxStrokeColor Lib kTextInputLayoutLib (obj As Ptr) As Int32
		    Return getBoxStrokeColor(ctrl.Layout).ToColor
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E732074686520626F782773207374726F6B6520666F63757365642077696474682E
		Function GetBoxStrokeWidthFocusedXC(Extends ctrl As MobileTextField) As Integer
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Function getBoxStrokeWidthFocused Lib kTextInputLayoutLib (obj As Ptr) As Int32
		    Return getBoxStrokeWidthFocused(ctrl.Layout)
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E732074686520626F782773207374726F6B652077696474682E
		Function GetBoxStrokeWidthXC(Extends ctrl As MobileTextField) As Integer
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Function getBoxStrokeWidth Lib kTextInputLayoutLib (obj As Ptr) As Int32
		    Return getBoxStrokeWidth(ctrl.Layout)
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E7320746865206D6178206C656E6774682073686F776E206174207468652063686172616374657220636F756E7465722E
		Function GetCounterMaxLengthXC(Extends ctrl As MobileTextField) As Integer
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Function getCounterMaxLength Lib kTextInputLayoutLib (obj As Ptr) As Int32
		    Return getCounterMaxLength(ctrl.Layout)
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 657475726E73207468652063757272656E746C7920636F6E6669677572656420636F6E74656E74206465736372697074696F6E20666F722074686520656E642069636F6E2E0A0A546869732077696C6C206265207573656420746F20646573637269626520746865206E617669676174696F6E20616374696F6E20746F207573657273207468726F756768206D656368616E69736D7320737563682061732073637265656E20726561646572732E
		Function GetEndIconContentDescriptionXC(Extends ctrl As MobileTextField) As CString
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Function getEndIconContentDescription Lib kTextInputLayoutLib (obj As Ptr) As CString
		    Return getEndIconContentDescription(ctrl.Layout)
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E732074686520626F782773207374726F6B652077696474682E
		Function GetEndIconModeXC(Extends ctrl As MobileTextField) As EndIconModesXC
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Function getEndIconMode Lib kTextInputLayoutLib (obj As Ptr) As Integer
		    Return EndIconModesXC(getEndIconMode(ctrl.Layout))
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E7320746865207465787420636F6C6F72207573656420627920746865206572726F72206D65737361676520696E2063757272656E742073746174652E
		Function GetErrorCurrentTextColorsXC(Extends ctrl As MobileTextField) As Color
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Function getErrorCurrentTextColors Lib kTextInputLayoutLib (obj As Ptr) As Int32
		    Return getErrorCurrentTextColors(ctrl.Layout).ToColor
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E7320746865206572726F72206D6573736167652074686174207761732073657420746F20626520646973706C617965642077697468207365744572726F72284368617253657175656E6365292C206F72206E756C6C206966206E6F206572726F722077617320736574206F72206966206572726F7220646973706C6179696E67206973206E6F7420656E61626C65642E
		Function GetErrorXC(Extends ctrl As MobileTextField) As CString
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Function getError Lib kTextInputLayoutLib (obj As Ptr) As CString
		    Return getError(ctrl.Layout)
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E7320746865207465787420636F6C6F722075736564206279207468652068656C706572207465787420696E207468652063757272656E74207374617465732E
		Function GetHelperTextCurrentTextColorXC(Extends ctrl As MobileTextField) As Color
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Function getHelperTextCurrentTextColor Lib kTextInputLayoutLib (obj As Ptr) As Int32
		    Return getHelperTextCurrentTextColor(ctrl.Layout).ToColor
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E73207468652068656C706572206D6573736167652074686174207761732073657420746F20626520646973706C6179656420776974682073657448656C70657254657874284368617253657175656E6365292C206F72206E756C6C206966206E6F2068656C70657220746578742077617320736574206F722069662068656C70657220746578742066756E6374696F6E616C697479206973206E6F7420656E61626C65642E
		Function GetHelperTextXC(Extends ctrl As MobileTextField) As CString
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Function getHelperText Lib kTextInputLayoutLib (obj As Ptr) As CString
		    Return getHelperText(ctrl.Layout)
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 476574207468652074797065206F6620746865206564697461626C6520636F6E74656E742E
		Function GetInputTypeXC(Extends ctrl As MobileTextField) As Integer
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Function getInputType Lib kLibMobileTextField As Int32
		    Return getInputType
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E73207468652070726566697820746578742074686174207761732073657420746F20626520646973706C6179656420776974682073657450726566697854657874284368617253657175656E6365292C206F72206E756C6C206966207468657265206973206E6F2070726566697820746578742E
		Function GetPrefixTextXC(Extends ctrl As MobileTextField) As CString
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Function getPrefixText Lib kTextInputLayoutLib (obj As Ptr) As CString
		    Return getPrefixText(ctrl.Layout)
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E73207468652063757272656E746C7920636F6E6669677572656420636F6E74656E74206465736372697074696F6E20666F72207468652073746172742069636F6E2E0A0A546869732077696C6C206265207573656420746F20646573637269626520746865206E617669676174696F6E20616374696F6E20746F207573657273207468726F756768206D656368616E69736D7320737563682061732073637265656E20726561646572732E
		Function GetStartIconContentDescriptionXC(Extends ctrl As MobileTextField) As CString
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Function getStartIconContentDescription Lib kTextInputLayoutLib (obj As Ptr) As CString
		    Return getStartIconContentDescription(ctrl.Layout)
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E73207468652073756666697820746578742074686174207761732073657420746F20626520646973706C6179656420776974682073657453756666697854657874284368617253657175656E6365292C206F72206E756C6C206966207468657265206973206E6F2073756666697820746578742E
		Function GetSuffixTextXC(Extends ctrl As MobileTextField) As CString
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Function getSuffixText Lib kTextInputLayoutLib (obj As Ptr) As CString
		    Return getSuffixText(ctrl.Layout)
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E20747275652069666620746865726520697320612073656C656374696F6E206F66206E6F6E7A65726F206C656E67746820696E736964652074686973207465787420766965772E
		Function HasSelectionXC(Extends ctrl As MobileTextField) As Boolean
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Function hasSelection Lib kLibMobileTextField As Boolean
		    Return hasSelection
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E732077686574686572207468652063686172616374657220636F756E7465722066756E6374696F6E616C69747920697320656E61626C6564206F72206E6F7420696E2074686973206C61796F75742E
		Function IsCounterEnabledXC(Extends ctrl As MobileTextField) As Boolean
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Function isCounterEnabled Lib kTextInputLayoutLib (obj As Ptr) As Boolean
		    Return isCounterEnabled(ctrl.Layout)
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E732077686574686572206F72206E6F742074686520637572736F722069732076697369626C652028617373756D696E672074686973205465787456696577206973206564697461626C65292E2054686973206D6574686F64206D61792072657475726E2066616C7365207768656E2074686520494D4520697320636F6E73756D696E672074686520696E707574206576656E20696620746865206D456469746F722E6D437572736F7256697369626C65206174747269627574652069732074727565206F722023736574437572736F7256697369626C652874727565292069732063616C6C65642E
		Function IsCursorVisibleXC(Extends ctrl As MobileTextField) As Boolean
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Function isCursorVisible Lib kLibMobileTextField As Boolean
		    Return isCursorVisible
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E7320776865746865722074686520656E642069636F6E20697320636865636B61626C652E
		Function IsEndIconCheckableXC(Extends ctrl As MobileTextField) As Boolean
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Function isEndIconCheckable Lib kTextInputLayoutLib (obj As Ptr) As Boolean
		    Return isEndIconCheckable(ctrl.Layout)
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E732077686574686572207468652063757272656E7420656E642069636F6E2069732076697369626C652E
		Function IsEndIconVisibleXC(Extends ctrl As MobileTextField) As Boolean
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Function isEndIconVisible Lib kTextInputLayoutLib (obj As Ptr) As Boolean
		    Return isEndIconVisible(ctrl.Layout)
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E73207768657468657220746865206572726F722066756E6374696F6E616C69747920697320656E61626C6564206F72206E6F7420696E2074686973206C61796F75742E
		Function IsErrorEnabledXC(Extends ctrl As MobileTextField) As Boolean
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Function isErrorEnabled Lib kTextInputLayoutLib (obj As Ptr) As Boolean
		    Return isErrorEnabled(ctrl.Layout)
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E732077686574686572207468652068696E7420657870616E647320746F206F63637570792074686520696E7075742061726561207768656E207468652074657874206669656C6420697320756E706F70756C6174656420616E64206E6F7420666F63757365642E
		Function IsExpandedHintEnabledXC(Extends ctrl As MobileTextField) As Boolean
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Function isExpandedHintEnabled Lib kTextInputLayoutLib (obj As Ptr) As Boolean
		    Return isExpandedHintEnabled(ctrl.Layout)
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E732077686574686572207468652068656C70657220746578742066756E6374696F6E616C69747920697320656E61626C6564206F72206E6F7420696E2074686973206C61796F75742E
		Function IsHelperTextEnabledXC(Extends ctrl As MobileTextField) As Boolean
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Function isHelperTextEnabled Lib kTextInputLayoutLib (obj As Ptr) As Boolean
		    Return isHelperTextEnabled(ctrl.Layout)
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E73207768657468657220616E792068696E74207374617465206368616E6765732C2064756520746F206265696E6720666F6375736564206F72206E6F6E2D656D70747920746578742C2061726520616E696D617465642E
		Function IsHintAnimationEnabledXC(Extends ctrl As MobileTextField) As Boolean
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Function isHintAnimationEnabled Lib kTextInputLayoutLib (obj As Ptr) As Boolean
		    Return isHintAnimationEnabled(ctrl.Layout)
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E7320776865746865722074686520666C6F6174696E67206C6162656C2066756E6374696F6E616C69747920697320656E61626C6564206F72206E6F7420696E2074686973206C61796F75742E
		Function IsHintEnabledXC(Extends ctrl As MobileTextField) As Boolean
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Function isHintEnabled Lib kTextInputLayoutLib (obj As Ptr) As Boolean
		    Return isHintEnabled(ctrl.Layout)
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E732077686574686572207468652073746172742069636F6E20697320636865636B61626C652E
		Function IsStartIconCheckableXC(Extends ctrl As MobileTextField) As Boolean
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Function isStartIconCheckable Lib kTextInputLayoutLib (obj As Ptr) As Boolean
		    Return isStartIconCheckable(ctrl.Layout)
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E732077686574686572207468652063757272656E742073746172742069636F6E2069732076697369626C652E
		Function IsStartIconVisibleXC(Extends ctrl As MobileTextField) As Boolean
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Function isStartIconVisible Lib kTextInputLayoutLib (obj As Ptr) As Boolean
		    Return isStartIconVisible(ctrl.Layout)
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E7320746865207374617465206F66207468652074657874497353656C65637461626C6520666C616720285365652073657454657874497353656C65637461626C652829292E20416C74686F75676820796F75206861766520746F20736574207468697320666C616720746F20616C6C6F7720757365727320746F2073656C65637420616E6420636F7079207465787420696E2061206E6F6E2D6564697461626C652054657874566965772C2074686520636F6E74656E74206F6620616E2045646974546578742063616E20616C776179732062652073656C65637465642C20696E646570656E64656E746C79206F66207468652076616C7565206F66207468697320666C61672E
		Function IsTextSelectableXC(Extends ctrl As MobileTextField) As Boolean
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Function isTextSelectable Lib kLibMobileTextField As Boolean
		    Return isTextSelectable
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21, Description = 52657475726E73207468652054657874496E7075744C61796F757420696E7374616E636520666F7220746865204D6F62696C65546578744669656C642E
		Private Function Layout(Extends ctrl As MobileTextField) As Ptr
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Function getTextInputLayoutInstance Lib kLibMobileTextField Alias "_parentLayout!!" As Ptr
		    Return getTextInputLayoutInstance
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 53657473207468652066696C6C656420626F7827732064656661756C74206261636B67726F756E6420636F6C6F722E2043616C6C696E672074686973206D6574686F642077696C6C206D616B6520746865206261636B67726F756E6420636F6C6F72206E6F7420626520737461746566756C2C20696620697420776173206265666F72652E0A0A4E6F74653A20546865206261636B67726F756E6420636F6C6F72206973206F6E6C7920737570706F7274656420666F722066696C6C656420626F7865732E205768656E2075736564207769746820626F782076617269616E7473206F74686572207468616E20424F585F4241434B47524F554E445F46494C4C45442C2074686520626F78206261636B67726F756E6420636F6C6F72206D6179206E6F7420776F726B20617320696E74656E6465642E
		Sub SetBoxBackgroundColorXC(Extends ctrl As MobileTextField, c As Color)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub setBoxBackgroundColor Lib kTextInputLayoutLib (obj As Ptr, myBoxBackgroundColor As Int32)
		    setBoxBackgroundColor(ctrl.Layout, c.ToInteger)
		    
		  #Else
		    
		    #Pragma Unused c
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 5365742074686520626F78206261636B67726F756E64206D6F6465202866696C6C65642C206F75746C696E652C206F72206E6F6E65292E0A0A4D6179206265206F6E65206F6620424F585F4241434B47524F554E445F4E4F4E452C20424F585F4241434B47524F554E445F46494C4C45442C206F7220424F585F4241434B47524F554E445F4F55544C494E452E0A0A4E6F74653A2054686973206D6574686F6420646566696E65732054657874496E7075744C61796F7574277320696E7465726E616C206265686176696F722028666F72206578616D706C652C20697420616C6C6F7773207468652068696E7420746F20626520646973706C6179656420696E6C696E65207769746820746865207374726F6B6520696E2061206375746F7574292C2062757420646F65736E27742073657420616C6C20617474726962757465732074686174206172652073657420696E20746865207374796C65732070726F766964656420666F722074686520626F78206261636B67726F756E64206D6F6465732E20546F206163686965766520746865206C6F6F6B206F6620616E206F75746C696E6564206F722066696C6C65642074657874206669656C642C20737570706C656D656E742074686973206D6574686F642077697468206F74686572206D6574686F64732074686174206D6F646966792074686520626F782C207375636820617320736574426F785374726F6B65436F6C6F7228696E742920616E6420736574426F784261636B67726F756E64436F6C6F7228696E74292E
		Sub SetBoxBackgroundModeXC(Extends ctrl As MobileTextField, mode As BoxBackgroundModesXC)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub setBoxBackgroundMode Lib kTextInputLayoutLib (obj As Ptr, myBoxBackgroundMode As Int32)
		    setBoxBackgroundMode(ctrl.Layout, Integer(mode))
		    
		  #Else
		    
		    #Pragma Unused mode
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 536574732074686520626F78277320636F726E65722066616D696C7920666F7220616C6C20636F726E657273206F66207468652074657874206669656C642E
		Sub SetBoxCornerFamilyXC(Extends ctrl As MobileTextField, cornerFamily As BoxCornerFamilyXC)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub setBoxCornerFamily Lib kTextInputLayoutLib (obj As Ptr, myCornerFamily As Int32)
		    setBoxCornerFamily(ctrl.Layout, Integer(cornerFamily))
		    
		  #Else
		    
		    #Pragma Unused cornerFamily
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 5365742074686520626F78277320636F726E65722072616469692E
		Sub SetBoxCornerRadiiXC(Extends ctrl As MobileTextField, boxCornerRadiusTopStart As Single, boxCornerRadiusTopEnd As Single, boxCornerRadiusBottomStart As Single, boxCornerRadiusBottomEnd As Single)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub setBoxCornerRadii Lib kTextInputLayoutLib (obj As Ptr,myBoxCornerRadiusTopStart As Single, myBoxCornerRadiusTopEnd As Single, myBoxCornerRadiusBottomStart As Single, myBoxCornerRadiusBottomEnd As Single)
		    setBoxCornerRadii(ctrl.Layout, boxCornerRadiusTopStart, boxCornerRadiusTopEnd, boxCornerRadiusBottomStart, boxCornerRadiusBottomEnd)
		    
		  #Else
		    
		    #Pragma Unused boxCornerRadiusTopStart
		    #Pragma Unused boxCornerRadiusTopEnd
		    #Pragma Unused boxCornerRadiusBottomStart
		    #Pragma Unused boxCornerRadiusBottomEnd)
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 53657420746865206F75746C696E6520626F782773207374726F6B6520666F637573656420636F6C6F722E0A0A43616C6C696E672074686973206D6574686F64207768656E206E6F7420696E206F75746C696E6520626F78206D6F64652077696C6C20646F206E6F7468696E672E
		Sub SetBoxStrokeColorXC(Extends ctrl As MobileTextField, c As Color)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub setBoxStrokeColor Lib kTextInputLayoutLib (obj As Ptr, myColor As Int32)
		    setBoxStrokeColor(ctrl.Layout, c.ToInteger)
		    
		  #Else
		    
		    #Pragma Unused c
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 53657420746865206F75746C696E6520626F782773207374726F6B6520636F6C6F72207768656E20616E206572726F72206973206265696E6720646973706C617965642E0A0A43616C6C696E672074686973206D6574686F64207768656E206E6F7420696E206F75746C696E6520626F78206D6F64652077696C6C20646F206E6F7468696E672E
		Sub SetBoxStrokeErrorColorXC(Extends ctrl As MobileTextField, c As Color)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub setBoxStrokeErrorColor Lib kLibMobileTextFieldKotlin Alias _
		    "_parentLayout!!.setBoxStrokeErrorColor(strokeerrorcolor as android.content.res.ColorStateList)" (strokeErrorColor As Ptr)
		    setBoxStrokeErrorColor(c.ToColorStateList)
		    
		  #Else
		    
		    #Pragma Unused c
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 536574207468652076616C756520746F2075736520666F722074686520666F637573656420626F782773207374726F6B65207768656E20696E206F75746C696E6520626F78206D6F64652C206F7220666F722074686520666F637573656420756E6465726C696E65207374726F6B6520696E2066696C6C6564206D6F64652E
		Sub SetBoxStrokeWidthFocusedXC(Extends ctrl As MobileTextField, boxStrokeWidthFocused As Integer)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub setBoxStrokeWidthFocused Lib kTextInputLayoutLib (obj As Ptr, myBoxStrokeWidthFocused As Int32)
		    setBoxStrokeWidthFocused(ctrl.Layout, boxStrokeWidthFocused)
		    
		  #Else
		    
		    #Pragma Unused boxStrokeWidthFocused
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 536574207468652076616C756520746F2075736520666F722074686520626F782773207374726F6B65207768656E20696E206F75746C696E6520626F78206D6F64652C206F7220666F722074686520756E6465726C696E65207374726F6B6520696E2066696C6C6564206D6F64652E
		Sub SetBoxStrokeWidthXC(Extends ctrl As MobileTextField, boxStrokeWidth As Integer)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub setBoxStrokeWidth Lib kTextInputLayoutLib (obj As Ptr, myBoxStrokeWidth As Int32)
		    setBoxStrokeWidth(ctrl.Layout, boxStrokeWidth)
		    
		  #Else
		    
		    #Pragma Unused boxStrokeWidth
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 57686574686572207468652063686172616374657220636F756E7465722066756E6374696F6E616C69747920697320656E61626C6564206F72206E6F7420696E2074686973206C61796F75742E
		Sub SetCounterEnabledXC(Extends ctrl As MobileTextField, enabled As Boolean)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub setCounterEnabled Lib kTextInputLayoutLib (obj As Ptr, myEnabled As Boolean)
		    setCounterEnabled(ctrl.Layout, enabled)
		    
		  #Else
		    
		    #Pragma Unused enabled
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 5365747320746865206D6178206C656E67746820746F20646973706C6179206174207468652063686172616374657220636F756E7465722E
		Sub SetCounterMaxLengthXC(Extends ctrl As MobileTextField, maxLength As Integer)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub setCounterMaxLength Lib kTextInputLayoutLib (obj As Ptr, myMaxLength As Int32)
		    setCounterMaxLength(ctrl.Layout, maxLength)
		    
		  #Else
		    
		    #Pragma Unused maxLength
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 5365747320746865207465787420636F6C6F7220666F7220746865206F766572666C6F7765642063686172616374657220636F756E746572207573696E67206120436F6C6F7253746174654C6973742E0A0A54686973207465787420636F6C6F722074616B657320707265636564656E6365206F7665722061207465787420636F6C6F722073657420696E20636F756E7465724F766572666C6F7754657874417070656172616E63652E
		Sub SetCounterOverflowTextColorXC(Extends ctrl As MobileTextField, c As Color)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub setCounterOverflowTextColor Lib kLibMobileTextFieldKotlin Alias _
		    "_parentLayout!!.setCounterOverflowTextColor(counteroverflowtextcolor as android.content.res.ColorStateList)" (counterOverflowTextColor As Ptr)
		    setCounterOverflowTextColor(c.ToColorStateList)
		    
		  #Else
		    
		    #Pragma Unused c
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 5365747320746865207465787420636F6C6F7220666F72207468652063686172616374657220636F756E746572207573696E67206120436F6C6F7253746174654C6973742E0A0A54686973207465787420636F6C6F722074616B657320707265636564656E6365206F7665722061207465787420636F6C6F722073657420696E20636F756E74657254657874417070656172616E63652E
		Sub SetCounterTextColorXC(Extends ctrl As MobileTextField, c As Color)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub setCounterTextColor Lib kLibMobileTextFieldKotlin Alias _
		    "_parentLayout!!.setCounterTextColor(countertextcolor as android.content.res.ColorStateList)" (counterTextColor As Ptr)
		    setCounterTextColor(c.ToColorStateList)
		    
		  #Else
		    
		    #Pragma Unused c
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 536574732074686520637572736F7220636F6C6F722E205573696E672074686973206D6574686F642077696C6C2074616B6520707265636564656E6365206F766572207573696E67207468652076616C7565206F66203F617474722F636F6C6F72436F6E74726F6C4163746976617465642E0A0A4E6F74653A2054686973206D6574686F64206F6E6C792068617320656666656374206F6E20415049206C6576656C732032382B2E204F6E206C6F77657220415049206C6576656C73203F617474722F636F6C6F72436F6E74726F6C4163746976617465642077696C6C206265207573656420666F722074686520637572736F7220636F6C6F722E
		Sub SetCursorColorXC(Extends ctrl As MobileTextField, c As Color)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub setCursorColor Lib kLibMobileTextFieldKotlin Alias _
		    "_parentLayout!!.setCursorColor(cursorcolor as android.content.res.ColorStateList)" (cursorColor As Ptr)
		    setCursorColor(c.ToColorStateList)
		    
		  #Else
		    
		    #Pragma Unused c
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 536574732074686520637572736F7220636F6C6F72207768656E20616E206572726F72206973206265696E6720646973706C617965642E204966206E756C6C2C2074686520637572736F7220646F65736E2774206368616E67652069747320636F6C6F72207768656E207468652074657874206669656C6420697320696E20616E206572726F722073746174652E0A0A4E6F74653A2054686973206D6574686F64206F6E6C792068617320656666656374206F6E20415049206C6576656C732032382B2E204F6E206C6F77657220415049206C6576656C73203F617474722F636F6C6F72436F6E74726F6C4163746976617465642077696C6C206265207573656420666F722074686520637572736F7220636F6C6F722E
		Sub SetCursorErrorColorXC(Extends ctrl As MobileTextField, c As Color)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub setCursorErrorColor Lib kLibMobileTextFieldKotlin Alias _
		    "_parentLayout!!.setCursorErrorColor(cursorerrorcolor as android.content.res.ColorStateList)" (cursorErrorColor As Ptr)
		    setCursorErrorColor(c.ToColorStateList)
		    
		  #Else
		    
		    #Pragma Unused c
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 5365747320746865207465787420636F6C6F722075736564206279207468652068696E7420696E20626F74682074686520636F6C6C617073656420616E6420657870616E646564207374617465732E
		Sub SetDefaultHintTextColorXC(Extends ctrl As MobileTextField, c As Color)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub setDefaultHintTextColor Lib kLibMobileTextFieldKotlin Alias _
		    "_parentLayout!!.setDefaultHintTextColor(textcolor as android.content.res.ColorStateList)" (textColor As Ptr)
		    setDefaultHintTextColor(c.ToColorStateList)
		    
		  #Else
		    
		    #Pragma Unused c
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 53657420746865205465787456696577277320656C6567616E7420686569676874206D65747269637320666C61672E20546869732073657474696E672073656C6563747320666F6E742076617269616E747320746861742068617665206E6F74206265656E20636F6D70616374656420746F20666974204C6174696E2D626173656420766572746963616C206D6574726963732C20616E6420616C736F20696E6372656173657320746F7020616E6420626F74746F6D20626F756E647320746F2070726F76696465206D6F72652073706163652E
		Sub SetElegantTextHeightXC(Extends ctrl As MobileTextField, elegant As Boolean)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub setElegantTextHeight Lib kLibMobileTextField (myElegant As Boolean)
		    setElegantTextHeight(elegant)
		    
		  #Else
		    
		    #Pragma Unused elegant
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 53657473207468652063757272656E7420656E642069636F6E277320737461746520746F20626520616374697661746564206F72206E6F742E
		Sub SetEndIconActivatedXC(Extends ctrl As MobileTextField, endIconActivated As Boolean)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub setEndIconActivated Lib kTextInputLayoutLib (obj As Ptr, myEndIconActivated As Boolean)
		    setEndIconActivated(ctrl.Layout, endIconActivated)
		    
		  #Else
		    
		    #Pragma Unused endIconActivated
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 53657473207468652063757272656E7420656E642069636F6E20746F20626520636865636B61626C65206F72206E6F742E0A0A4966207468652069636F6E20776F726B73206A757374206173206120627574746F6E20616E642074686520666163742074686174206974277320636865636B6564206F72206E6F7420646F65736E27742061666665637420697473206265686176696F722C20737563682061732074686520636C656172207465787420656E642069636F6E2C2063616C6C696E672074686973206D6574686F6420697320656E636F75726167656420736F20746861742073637265656E20726561646572732077696C6C206E6F7420616E6E6F756E6365207468652069636F6E277320636865636B65642073746174652E
		Sub SetEndIconCheckableXC(Extends ctrl As MobileTextField, endIconCheckable As Boolean)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub setEndIconCheckable Lib kTextInputLayoutLib (obj As Ptr, myEndIconCheckable As Boolean)
		    setEndIconCheckable(ctrl.Layout, endIconCheckable)
		    
		  #Else
		    
		    #Pragma Unused endIconCheckable
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 536574206120636F6E74656E74206465736372697074696F6E20666F722074686520656E642069636F6E2E0A0A54686520636F6E74656E74206465736372697074696F6E2077696C6C2062652072656164207669612073637265656E2072656164657273206F72206F74686572206163636573736962696C6974792073797374656D7320746F206578706C61696E2074686520616374696F6E206F66207468652069636F6E2E
		Sub SetEndIconContentDescriptionXC(Extends ctrl As MobileTextField, endIconContentDescription As CString)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub setEndIconContentDescription Lib kTextInputLayoutLib (obj As Ptr, myEndIconContentDescription As CString)
		    setEndIconContentDescription(ctrl.Layout, endIconContentDescription)
		    
		  #Else
		    
		    #Pragma Unused endIconContentDescription
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 536574732074686520776964746820616E6420686569676874206F662074686520656E642069636F6E2E
		Sub SetEndIconMinSizeXC(Extends ctrl As MobileTextField, iconSize As Integer)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub setEndIconMinSize Lib kTextInputLayoutLib (obj As Ptr, myIconSize As Int32)
		    setEndIconMinSize(ctrl.Layout, iconSize)
		    
		  #Else
		    
		    #Pragma Unused iconSize
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 5365742075702074686520656E642069636F6E206D6F64652E205768656E207365742C206120627574746F6E20697320706C616365642061742074686520656E64206F662074686520456469745465787420776869636820656E61626C657320746865207573657220746F20706572666F726D207468652073706563696669632069636F6E27732066756E6374696F6E616C6974792E
		Sub SetEndIconModeXC(Extends ctrl As MobileTextField, mode As EndIconModesXC)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub setEndIconMode Lib kTextInputLayoutLib (obj As Ptr, myEndIconMode As Int32)
		    setEndIconMode(ctrl.Layout, Integer(mode))
		    
		  #Else
		    
		    #Pragma Unused mode
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 4170706C69657320612074696E7420746F2074686520656E642069636F6E206472617761626C652E20446F6573206E6F74206D6F64696679207468652063757272656E742074696E74206D6F64652C20776869636820697320506F72746572447566662E4D6F64652E5352435F494E2062792064656661756C742E0A0A53756273657175656E742063616C6C7320746F20736574456E6449636F6E4472617761626C65284472617761626C65292077696C6C206175746F6D61746963616C6C79206D757461746520746865206472617761626C6520616E64206170706C7920746865207370656369666965642074696E7420616E642074696E74206D6F6465207573696E67204472617761626C65436F6D7061742E73657454696E744C697374284472617761626C652C20436F6C6F7253746174654C697374292E
		Sub SetEndIconTintListXC(Extends ctrl As MobileTextField, c As Color)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub setEndIconTintList Lib kLibMobileTextFieldKotlin Alias _
		    "_parentLayout!!.setEndIconTintList(endicontintlist as android.content.res.ColorStateList)" (endIconTintList As Ptr)
		    setEndIconTintList(c.ToColorStateList)
		    
		  #Else
		    
		    #Pragma Unused c
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 5370656369666965732074686520626C656E64696E67206D6F6465207573656420746F206170706C79207468652074696E742073706563696669656420627920736574456E6449636F6E54696E744C69737428436F6C6F7253746174654C6973742920746F2074686520656E642069636F6E206472617761626C652E205468652064656661756C74206D6F646520697320506F72746572447566662E4D6F64652E5352435F494E2E
		Sub SetEndIconTintModeXC(Extends ctrl As MobileTextField, mode As PorterDuffModesXC)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub setEndIconTintMode Lib kLibMobileTextFieldKotlin Alias "_parentLayout!!.setEndIconTintMode(android.graphics.PorterDuff.Mode.valueOf(mymode.toString()))" (myMode As CString)
		    setEndIconTintMode(mode.ToString)
		    
		  #Else
		    
		    #Pragma Unused mode
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 53657473207468652063757272656E7420656E642069636F6E20746F2062652056495349424C45206F7220474F4E452E
		Sub SetEndIconVisibleXC(Extends ctrl As MobileTextField, visible As Boolean)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub setEndIconVisible Lib kTextInputLayoutLib (obj As Ptr, myVisible As Boolean)
		    setEndIconVisible(ctrl.Layout, visible)
		    
		  #Else
		    
		    #Pragma Unused visible
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 536574207468652069636F6E20746F2075736520666F722074686520656E642069636F6E2E2054686973206D6574686F642073686F756C642062652063616C6C65642061667465722073706563696679696E6720616E2054657874496E7075744C61796F75742E456E6449636F6E4D6F64652076696120736574456E6449636F6E4D6F646528696E74292E0A0A496620796F752075736520616E2069636F6E20796F752073686F756C6420616C736F207365742061206465736372697074696F6E20666F722069747320616374696F6E207573696E6720736574456E6449636F6E436F6E74656E744465736372697074696F6E284368617253657175656E6365292E2054686973206973207573656420666F72206163636573736962696C6974792E
		Attributes( Deprecated = "SetEndIconXC(icon As Picture)" )  Sub SetEndIconXC(Extends ctrl As MobileTextField, file As FolderItem)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub setEndIconDrawable Lib kLibMobileTextFieldKotlin Alias "_parentLayout!!.setEndIconDrawable(android.graphics.drawable.Drawable.createFromPath(myicon.toString()))" (myIcon As CString)
		    setEndIconDrawable(file.NativePath)
		    
		  #Else
		    
		    #Pragma Unused file
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 536574207468652069636F6E20746F2075736520666F722074686520656E642069636F6E2E2054686973206D6574686F642073686F756C642062652063616C6C65642061667465722073706563696679696E6720616E2054657874496E7075744C61796F75742E456E6449636F6E4D6F64652076696120736574456E6449636F6E4D6F646528696E74292E0A0A496620796F752075736520616E2069636F6E20796F752073686F756C6420616C736F207365742061206465736372697074696F6E20666F722069747320616374696F6E207573696E6720736574456E6449636F6E436F6E74656E744465736372697074696F6E284368617253657175656E6365292E2054686973206973207573656420666F72206163636573736962696C6974792E
		Sub SetEndIconXC(Extends ctrl As MobileTextField, icon As Picture)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub setEndIconDrawable Lib kLibMobileTextFieldKotlin Alias "_parentLayout!!.setEndIconDrawable(icon as android.graphics.drawable.Drawable)" (icon As Ptr)
		    setEndIconDrawable(icon.ToDrawable)
		    
		  #Else
		    
		    #Pragma Unused icon
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 53657473206120636F6E74656E74206465736372697074696F6E20666F7220746865206572726F72206D6573736167652E0A0A4120636F6E74656E74206465736372697074696F6E2073686F756C6420626520736574207768656E20746865206572726F72206D65737361676520636F6E7461696E73207370656369616C206368617261637465727320746861742073637265656E2072656164657273206F72206F74686572206163636573736962696C6974792073797374656D7320617265206E6F742061626C6520746F20726561642C20736F2074686174207468657920616E6E6F756E63652074686520636F6E74656E74206465736372697074696F6E20696E73746561642E
		Sub SetErrorContentDescriptionXC(Extends ctrl As MobileTextField, errorContentDescription As CString)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub setErrorContentDescription Lib kTextInputLayoutLib (obj As Ptr, myErrorContentDescription As CString)
		    setErrorContentDescription(ctrl.Layout, errorContentDescription)
		    
		  #Else
		    
		    #Pragma Unused errorContentDescription
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 5768657468657220746865206572726F722066756E6374696F6E616C69747920697320656E61626C6564206F72206E6F7420696E2074686973206C61796F75742E20456E61626C696E6720746869732066756E6374696F6E616C697479206265666F72652073657474696E6720616E206572726F72206D65737361676520766961207365744572726F72284368617253657175656E6365292C2077696C6C206D65616E20746861742074686973206C61796F75742077696C6C206E6F74206368616E67652073697A65207768656E20616E206572726F7220697320646973706C617965642E
		Sub SetErrorEnabledXC(Extends ctrl As MobileTextField, enabled As Boolean)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub setErrorEnabled Lib kTextInputLayoutLib (obj As Ptr, myEnabled As Boolean)
		    setErrorEnabled(ctrl.Layout, enabled)
		    
		  #Else
		    
		    #Pragma Unused enabled
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 53657473207468652073746172742069636F6E2E0A0A496620796F752075736520616E2069636F6E20796F752073686F756C6420616C736F207365742061206465736372697074696F6E20666F722069747320616374696F6E207573696E6720736574537461727449636F6E436F6E74656E744465736372697074696F6E284368617253657175656E6365292E2054686973206973207573656420666F72206163636573736962696C6974792E
		Attributes( Deprecated = "SetErrorIconXC(icon As Picture)" )  Sub SetErrorIconXC(Extends ctrl As MobileTextField, file As FolderItem)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub setErrorIconDrawable Lib kLibMobileTextFieldKotlin Alias "_parentLayout!!.setErrorIconDrawable(android.graphics.drawable.Drawable.createFromPath(myicon.toString()))" (myIcon As CString)
		    setErrorIconDrawable(file.NativePath)
		    
		  #Else
		    
		    #Pragma Unused file
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 53657473207468652073746172742069636F6E2E0A0A496620796F752075736520616E2069636F6E20796F752073686F756C6420616C736F207365742061206465736372697074696F6E20666F722069747320616374696F6E207573696E6720736574537461727449636F6E436F6E74656E744465736372697074696F6E284368617253657175656E6365292E2054686973206973207573656420666F72206163636573736962696C6974792E
		Sub SetErrorIconXC(Extends ctrl As MobileTextField, icon As Picture)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub setErrorIconDrawable Lib kLibMobileTextFieldKotlin Alias "_parentLayout!!.setErrorIconDrawable(icon as android.graphics.drawable.Drawable)" (icon As Ptr)
		    setErrorIconDrawable(icon.ToDrawable)
		    
		  #Else
		    
		    #Pragma Unused icon
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 5365747320746865207465787420636F6C6F72207573656420627920746865206572726F72206D65737361676520696E20616C6C207374617465732E
		Sub SetErrorTextColorXC(Extends ctrl As MobileTextField, c As Color)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub setErrorTextColor Lib kLibMobileTextFieldKotlin Alias _
		    "_parentLayout!!.setErrorTextColor(errortextcolor as android.content.res.ColorStateList)" (errorTextColor As Ptr)
		    setErrorTextColor(c.ToColorStateList)
		    
		  #Else
		    
		    #Pragma Unused c
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 53657473207468652072696768742D68616E6420636F6D706F756E64206472617761626C65206F662074686520546578745669657720746F2074686520226572726F72222069636F6E20616E64207365747320616E206572726F72206D65737361676520746861742077696C6C20626520646973706C6179656420696E206120706F707570207768656E207468652054657874566965772068617320666F6375732E205468652069636F6E20616E64206572726F72206D6573736167652077696C6C20626520726573657420746F206E756C6C207768656E20616E79206B6579206576656E7473206361757365206368616E67657320746F20746865205465787456696577277320746578742E20496620746865206572726F72206973206E756C6C2C20746865206572726F72206D65737361676520616E642069636F6E2077696C6C20626520636C65617265642E
		Sub SetErrorXC(Extends ctrl As MobileTextField, error As CString)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub setError Lib kLibMobileTextField (myError As CString)
		    setError(error)
		    
		  #Else
		    
		    #Pragma Unused error
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 536574732077686574686572207468652068696E742073686F756C6420657870616E6420746F206F63637570792074686520696E7075742061726561207768656E207468652074657874206669656C6420697320756E706F70756C6174656420616E64206E6F7420666F63757365642E
		Sub SetExpandedHintEnabledXC(Extends ctrl As MobileTextField, enabled As Boolean)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub setExpandedHintEnabled Lib kTextInputLayoutLib (obj As Ptr, myEnabled As Boolean)
		    setExpandedHintEnabled(ctrl.Layout, enabled)
		    
		  #Else
		    
		    #Pragma Unused enabled
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 5365747320746865207465787420636F6C6F722075736564206279207468652068656C706572207465787420696E20616C6C207374617465732E
		Sub SetHelperTextColorXC(Extends ctrl As MobileTextField, c As Color)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub setHelperTextColor Lib kLibMobileTextFieldKotlin Alias _
		    "_parentLayout!!.setHelperTextColor(helpertextcolor as android.content.res.ColorStateList)" (helperTextColor As Ptr)
		    setHelperTextColor(c.ToColorStateList)
		    
		  #Else
		    
		    #Pragma Unused c
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 57686574686572207468652068656C70657220746578742066756E6374696F6E616C69747920697320656E61626C6564206F72206E6F7420696E2074686973206C61796F75742E20456E61626C696E6720746869732066756E6374696F6E616C697479206265666F72652073657474696E6720612068656C706572206D657373616765207669612073657448656C70657254657874284368617253657175656E6365292077696C6C206D65616E20746861742074686973206C61796F75742077696C6C206E6F74206368616E67652073697A65207768656E20612068656C706572206D65737361676520697320646973706C617965642E
		Sub SetHelperTextEnabledXC(Extends ctrl As MobileTextField, enabled As Boolean)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub setHelperTextEnabled Lib kTextInputLayoutLib (obj As Ptr, myEnabled As Boolean)
		    setHelperTextEnabled(ctrl.Layout, enabled)
		    
		  #Else
		    
		    #Pragma Unused enabled
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 5365747320612068656C706572206D65737361676520746861742077696C6C20626520646973706C617965642062656C6F77207468652045646974546578742E204966207468652068656C706572206973206E756C6C2C207468652068656C70657220746578742066756E6374696F6E616C6974792077696C6C2062652064697361626C656420616E64207468652068656C706572206D6573736167652077696C6C2062652068696464656E2E0A0A4966207468652068656C70657220746578742066756E6374696F6E616C69747920686173206E6F74206265656E20656E61626C6564207669612073657448656C70657254657874456E61626C656428626F6F6C65616E292C207468656E2069742077696C6C206265206175746F6D61746963616C6C7920656E61626C65642069662068656C706572206973206E6F7420656D7074792E
		Sub SetHelperTextXC(Extends ctrl As MobileTextField, helperText As CString)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub setHelperText Lib kTextInputLayoutLib (obj As Ptr, myHelperText As CString)
		    setHelperText(ctrl.Layout, helperText)
		    
		  #Else
		    
		    #Pragma Unused helperText
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 536574732074686520636F6C6F72207573656420746F20646973706C6179207468652073656C656374696F6E20686967686C696768742E
		Sub SetHighlightColorXC(Extends ctrl As MobileTextField, c As Color)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub setHighlightColor Lib kLibMobileTextField (myColor As Int32)
		    setHighlightColor(c.ToInteger)
		    
		  #Else
		    
		    #Pragma Unused c
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 536574207768657468657220616E792068696E74207374617465206368616E6765732C2064756520746F206265696E6720666F6375736564206F72206E6F6E2D656D70747920746578742C2061726520616E696D617465642E
		Sub SetHintAnimationEnabledXC(Extends ctrl As MobileTextField, enabled As Boolean)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub setHintAnimationEnabled Lib kTextInputLayoutLib (obj As Ptr, myEnabled As Boolean)
		    setHintAnimationEnabled(ctrl.Layout, enabled)
		    
		  #Else
		    
		    #Pragma Unused enabled
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 5365747320776865746865722074686520666C6F6174696E67206C6162656C2066756E6374696F6E616C69747920697320656E61626C6564206F72206E6F7420696E2074686973206C61796F75742E0A0A496620656E61626C65642C20616E79206E6F6E2D656D7074792068696E7420696E20746865206368696C642045646974546578742077696C6C206265206D6F76656420696E746F2074686520666C6F6174696E672068696E742C20616E6420697473206578697374696E672068696E742077696C6C20626520636C65617265642E2049662064697361626C65642C207468656E20616E79206E6F6E2D656D70747920666C6F6174696E672068696E7420696E2074686973206C61796F75742077696C6C206265206D6F76656420696E746F207468652045646974546578742C20616E642074686973206C61796F757427732068696E742077696C6C20626520636C65617265642E
		Sub SetHintEnabledXC(Extends ctrl As MobileTextField, enabled As Boolean)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub setHintEnabled Lib kTextInputLayoutLib (obj As Ptr, myEnabled As Boolean)
		    setHintEnabled(ctrl.Layout, enabled)
		    
		  #Else
		    
		    #Pragma Unused enabled
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 536574732074686520636F6C6C61707365642068696E74207465787420636F6C6F722066726F6D207468652073706563696669656420436F6C6F7253746174654C697374207265736F757263652E
		Sub SetHintTextColorXC(Extends ctrl As MobileTextField, c As Color)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub setHintTextColor Lib kLibMobileTextFieldKotlin Alias _
		    "_parentLayout!!.setHintTextColor(hinttextcolor as android.content.res.ColorStateList)" (hintTextColor As Ptr)
		    setHintTextColor(c.ToColorStateList)
		    
		  #Else
		    
		    #Pragma Unused c
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 536574207468652068696E7420746F20626520646973706C6179656420696E2074686520666C6F6174696E67206C6162656C2C20696620656E61626C65642E
		Sub SetHintXC(Extends ctrl As MobileTextField, hint As CString)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub setHint Lib kTextInputLayoutLib (obj As Ptr, myHint As CString)
		    setHint(ctrl.Layout, hint)
		    
		  #Else
		    
		    #Pragma Unused hint
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 536574207468652074797065206F662074686520636F6E74656E742077697468206120636F6E7374616E7420617320646566696E656420666F7220456469746F72496E666F23696E707574547970652E20546869732077696C6C2074616B652063617265206F66206368616E67696E6720746865206B6579206C697374656E65722C2062792063616C6C696E67207365744B65794C697374656E657228616E64726F69642E746578742E6D6574686F642E4B65794C697374656E6572292C20746F206D617463682074686520676976656E20636F6E74656E7420747970652E2049662074686520676976656E20636F6E74656E74207479706520697320456469746F72496E666F23545950455F4E554C4C207468656E206120736F6674206B6579626F6172642077696C6C206E6F7420626520646973706C6179656420666F722074686973207465787420766965772E204E6F7465207468617420746865206D6178696D756D206E756D626572206F6620646973706C61796564206C696E65732028736565207365744D61784C696E657328696E7429292077696C6C206265206D6F64696669656420696620796F75206368616E67652074686520456469746F72496E666F23545950455F544558545F464C41475F4D554C54495F4C494E4520666C6167206F662074686520696E70757420747970652E
		Sub SetInputTypeXC(Extends ctrl As MobileTextField, type As Integer)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub setInputType Lib kLibMobileTextField (myType As Int32)
		    setInputType(type)
		    
		  #Else
		    
		    #Pragma Unused type
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 536574732074657874206C65747465722D73706163696E6720696E20656D20756E6974732E205479706963616C2076616C75657320666F7220736C6967687420657870616E73696F6E2077696C6C2062652061726F756E6420302E30352E204E656761746976652076616C756573207469676874656E20746578742E
		Sub SetLetterSpacingXC(Extends ctrl As MobileTextField, letterSpacing As Single)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub setLetterSpacing Lib kLibMobileTextField (myLetterSpacing As Single)
		    setLetterSpacing(letterSpacing)
		    
		  #Else
		    
		    #Pragma Unused letterSpacing
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 5365747320746865207465787420636F6C6F7220757365642062792074686520706C616365686F6C646572207465787420696E20616C6C207374617465732E
		Sub SetPlaceholderTextColorXC(Extends ctrl As MobileTextField, c As Color)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub setPlaceholderTextColor Lib kLibMobileTextFieldKotlin Alias _
		    "_parentLayout!!.setPlaceholderTextColor(placeholdertextcolor as android.content.res.ColorStateList)" (placeholderTextColor As Ptr)
		    setPlaceholderTextColor(c.ToColorStateList)
		    
		  #Else
		    
		    #Pragma Unused c
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 5365747320746865207465787420636F6C6F7220757365642062792074686520707265666978207465787420696E20616C6C207374617465732E
		Sub SetPrefixTextColorXC(Extends ctrl As MobileTextField, c As Color)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub setPrefixTextColor Lib kLibMobileTextFieldKotlin Alias _
		    "_parentLayout!!.setPrefixTextColor(prefixtextcolor as android.content.res.ColorStateList)" (prefixTextColor As Ptr)
		    setPrefixTextColor(c.ToColorStateList)
		    
		  #Else
		    
		    #Pragma Unused c
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 5365747320707265666978207465787420746861742077696C6C20626520646973706C6179656420696E2074686520696E7075742061726561207768656E207468652068696E7420697320636F6C6C6170736564206265666F7265207465787420697320656E74657265642E2049662074686520707265666978206973206E756C6C2C20616E792070726576696F75732070726566697820746578742077696C6C2062652068696464656E20616E64206E6F2070726566697820746578742077696C6C2062652073686F776E2E
		Sub SetPrefixTextXC(Extends ctrl As MobileTextField, prefixText As CString)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub setPrefixText Lib kTextInputLayoutLib (obj As Ptr, myPrefixText As CString)
		    setPrefixText(ctrl.Layout, prefixText)
		    
		  #Else
		    
		    #Pragma Unused prefixText
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 4368616E676573207468652073656C656374696F6E207374617465206F66207468697320766965772E204120766965772063616E2062652073656C6563746564206F72206E6F742E204E6F746520746861742073656C656374696F6E206973206E6F74207468652073616D6520617320666F6375732E20566965777320617265207479706963616C6C792073656C656374656420696E2074686520636F6E74657874206F6620616E204164617074657256696577206C696B65204C69737456696577206F722047726964566965773B207468652073656C65637465642076696577206973207468652076696577207468617420697320686967686C6967687465642E
		Sub SetSelectedXC(Extends ctrl As MobileTextField, selected As Boolean)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub setSelected Lib kLibMobileTextField (mySelected As Boolean)
		    setSelected(selected)
		    
		  #Else
		    
		    #Pragma Unused selected
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 536574207468652073656C656374696F6E20616E63686F7220746F20737461727420616E64207468652073656C656374696F6E206564676520746F2073746F702E20546865204D6F62696C65546578744669656C64206E6565647320746F20686176652074686520666F6375732E
		Sub SetSelectionXC(Extends ctrl As MobileTextField, start As Integer, stop As Integer)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub setSelection Lib kLibMobileTextField (myStart As Int32, myStop As Int32)
		    setSelection(start, stop)
		    
		  #Else
		    
		    #Pragma Unused start
		    #Pragma Unused stop
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 4769766573207468652074657874206120736861646F77206F66207468652073706563696669656420626C75722072616469757320616E6420636F6C6F722C20746865207370656369666965642064697374616E63652066726F6D2069747320647261776E20706F736974696F6E2E0A0A546865207465787420736861646F772070726F647563656420646F6573206E6F7420696E7465726163742077697468207468652070726F70657274696573206F6E207669657720746861742061726520726573706F6E7369626C6520666F72207265616C2074696D6520736861646F77732C20656C65766174696F6E20616E64207472616E736C6174696F6E5A2E
		Sub SetShadowLayerXC(Extends ctrl As MobileTextField, radius As Single, dX As Single, dY As Single, c As Color)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub setShadowLayer Lib kLibMobileTextField (myRadius As Single, mydX As Single, mydY As Single, myColor As Int32)
		    setShadowLayer(radius, dX, dY, c.ToInteger)
		    
		  #Else
		    
		    #Pragma Unused radius
		    #Pragma Unused dX
		    #Pragma Unused dY
		    #Pragma Unused c
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 5365747320776865746865722074686520736F667420696E707574206D6574686F642077696C6C206265206D6164652076697369626C65207768656E2074686973205465787456696577206765747320666F63757365642E205468652064656661756C7420697320747275652E
		Sub SetShowSoftInputOnFocusXC(Extends ctrl As MobileTextField, show As Boolean)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub setShowSoftInputOnFocus Lib kLibMobileTextField (myShow As Boolean)
		    setShowSoftInputOnFocus(show)
		    
		  #Else
		    
		    #Pragma Unused show
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 53657473207468652063757272656E742073746172742069636F6E20746F20626520636865636B61626C65206F72206E6F742E0A0A4966207468652069636F6E20776F726B73206A757374206173206120627574746F6E20616E642074686520666163742074686174206974277320636865636B6564206F72206E6F7420646F65736E27742061666665637420697473206265686176696F722C20737563682061732074686520636C656172207465787420656E642069636F6E2C2063616C6C696E672074686973206D6574686F6420697320656E636F75726167656420736F20746861742073637265656E20726561646572732077696C6C206E6F7420616E6E6F756E6365207468652069636F6E277320636865636B65642073746174652E
		Sub SetStartIconCheckableXC(Extends ctrl As MobileTextField, startIconCheckable As Boolean)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub setStartIconCheckable Lib kTextInputLayoutLib (obj As Ptr, myStartIconCheckable As Boolean)
		    setStartIconCheckable(ctrl.Layout, startIconCheckable)
		    
		  #Else
		    
		    #Pragma Unused startIconCheckable
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 536574206120636F6E74656E74206465736372697074696F6E20666F72207468652073746172742069636F6E2E0A0A54686520636F6E74656E74206465736372697074696F6E2077696C6C2062652072656164207669612073637265656E2072656164657273206F72206F74686572206163636573736962696C6974792073797374656D7320746F206578706C61696E2074686520707572706F7365206F7220616374696F6E206F66207468652069636F6E2E
		Sub SetStartIconContentDescriptionXC(Extends ctrl As MobileTextField, startIconContentDescription As CString)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub setStartIconContentDescription Lib kTextInputLayoutLib (obj As Ptr, myStartIconContentDescription As CString)
		    setStartIconContentDescription(ctrl.Layout, startIconContentDescription)
		    
		  #Else
		    
		    #Pragma Unused startIconContentDescription
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 536574732074686520776964746820616E6420686569676874206F66207468652073746172742069636F6E2E
		Sub SetStartIconMinSizeXC(Extends ctrl As MobileTextField, iconSize As Integer)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub setStartIconMinSize Lib kTextInputLayoutLib (obj As Ptr, myIconSize As Int32)
		    setStartIconMinSize(ctrl.Layout, iconSize)
		    
		  #Else
		    
		    #Pragma Unused iconSize
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 4170706C69657320612074696E7420746F207468652073746172742069636F6E206472617761626C652E20446F6573206E6F74206D6F64696679207468652063757272656E742074696E74206D6F64652C20776869636820697320506F72746572447566662E4D6F64652E5352435F494E2062792064656661756C742E0A0A53756273657175656E742063616C6C7320746F20736574537461727449636F6E4472617761626C65284472617761626C65292077696C6C206175746F6D61746963616C6C79206D757461746520746865206472617761626C6520616E64206170706C7920746865207370656369666965642074696E7420616E642074696E74206D6F6465207573696E67204472617761626C65436F6D7061742E73657454696E744C697374284472617761626C652C20436F6C6F7253746174654C697374292E
		Sub SetStartIconTintListXC(Extends ctrl As MobileTextField, c As Color)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub setStartIconTintList Lib kLibMobileTextFieldKotlin Alias _
		    "_parentLayout!!.setStartIconTintList(starticontintlist as android.content.res.ColorStateList)" (startIconTintList As Ptr)
		    setStartIconTintList(c.ToColorStateList)
		    
		  #Else
		    
		    #Pragma Unused c
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 5370656369666965732074686520626C656E64696E67206D6F6465207573656420746F206170706C79207468652074696E742073706563696669656420627920736574456E6449636F6E54696E744C69737428436F6C6F7253746174654C6973742920746F207468652073746172742069636F6E206472617761626C652E205468652064656661756C74206D6F646520697320506F72746572447566662E4D6F64652E5352435F494E2E
		Sub SetStartIconTintModeXC(Extends ctrl As MobileTextField, mode As PorterDuffModesXC)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub setStartIconTintMode Lib kLibMobileTextFieldKotlin Alias "_parentLayout!!.setStartIconTintMode(android.graphics.PorterDuff.Mode.valueOf(mymode.toString()))" (myMode As CString)
		    setStartIconTintMode(mode.ToString)
		    
		  #Else
		    
		    #Pragma Unused mode
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 53657473207468652073746172742069636F6E20746F2062652056495349424C45206F7220474F4E452E
		Sub SetStartIconVisibleXC(Extends ctrl As MobileTextField, visible As Boolean)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub setStartIconVisible Lib kTextInputLayoutLib (obj As Ptr, myVisible As Boolean)
		    setStartIconVisible(ctrl.Layout, visible)
		    
		  #Else
		    
		    #Pragma Unused visible
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 53657473207468652073746172742069636F6E2E0A0A496620796F752075736520616E2069636F6E20796F752073686F756C6420616C736F207365742061206465736372697074696F6E20666F722069747320616374696F6E207573696E6720736574537461727449636F6E436F6E74656E744465736372697074696F6E284368617253657175656E6365292E2054686973206973207573656420666F72206163636573736962696C6974792E
		Attributes( Deprecated = "SetStartIconXC(icon As Picture)" )  Sub SetStartIconXC(Extends ctrl As MobileTextField, file As FolderItem)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub setStartIconDrawable Lib kLibMobileTextFieldKotlin Alias "_parentLayout!!.setStartIconDrawable(android.graphics.drawable.Drawable.createFromPath(myicon.toString()))" (myIcon As CString)
		    setStartIconDrawable(file.NativePath)
		    
		  #Else
		    
		    #Pragma Unused file
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 53657473207468652073746172742069636F6E2E0A0A496620796F752075736520616E2069636F6E20796F752073686F756C6420616C736F207365742061206465736372697074696F6E20666F722069747320616374696F6E207573696E6720736574537461727449636F6E436F6E74656E744465736372697074696F6E284368617253657175656E6365292E2054686973206973207573656420666F72206163636573736962696C6974792E
		Sub SetStartIconXC(Extends ctrl As MobileTextField, icon As Picture)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub setStartIconDrawable Lib kLibMobileTextFieldKotlin Alias "_parentLayout!!.setStartIconDrawable(icon as android.graphics.drawable.Drawable)" (icon As Ptr)
		    setStartIconDrawable(icon.ToDrawable)
		    
		  #Else
		    
		    #Pragma Unused icon
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 5365747320746865207465787420636F6C6F7220757365642062792074686520737566666978207465787420696E20616C6C207374617465732E
		Sub SetSuffixTextColorXC(Extends ctrl As MobileTextField, c As Color)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub setSuffixTextColor Lib kLibMobileTextFieldKotlin Alias _
		    "_parentLayout!!.setSuffixTextColor(suffixtextcolor as android.content.res.ColorStateList)" (suffixTextColor As Ptr)
		    setSuffixTextColor(c.ToColorStateList)
		    
		  #Else
		    
		    #Pragma Unused c
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 5365747320737566666978207465787420746861742077696C6C20626520646973706C6179656420696E2074686520696E7075742061726561207768656E207468652068696E7420697320636F6C6C6170736564206265666F7265207465787420697320656E74657265642E2049662074686520737566666978206973206E756C6C2C20616E792070726576696F75732073756666697820746578742077696C6C2062652068696464656E20616E64206E6F2073756666697820746578742077696C6C2062652073686F776E2E
		Sub SetSuffixTextXC(Extends ctrl As MobileTextField, suffixText As CString)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub setSuffixText Lib kTextInputLayoutLib (obj As Ptr, mySuffixText As CString)
		    setSuffixText(ctrl.Layout, suffixText)
		    
		  #Else
		    
		    #Pragma Unused suffixText
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 5365747320776865746865722074686520636F6E74656E74206F66207468697320766965772069732073656C65637461626C652062792074686520757365722E205468652064656661756C742069732066616C73652C206D65616E696E6720746861742074686520636F6E74656E74206973206E6F742073656C65637461626C652E
		Sub SetTextIsSelectableXC(Extends ctrl As MobileTextField, selectable As Boolean)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub setTextIsSelectable Lib kLibMobileTextField (mySelectable As Boolean)
		    setTextIsSelectable(selectable)
		    
		  #Else
		    
		    #Pragma Unused selectable
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 5370656369666965732074696E7420636F6C6F7220666F7220746865205465787420437572736F72206F6620616C6C204D6F62696C65546578744669656C642F2D4172656173206174207468652053637265656E2E
		Sub SetTintXC(Extends ctrl As MobileTextField, c As Color)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub setTint Lib kLibMobileTextField Alias "getTextCursorDrawable()!!.setTint" (myTintColor As Int32)
		    setTint(c.ToInteger)
		    
		  #Else
		    
		    #Pragma Unused c
		    
		  #EndIf
		End Sub
	#tag EndMethod


	#tag Constant, Name = kLibMobileTextField, Type = String, Dynamic = False, Default = \"Object:ctrl:MobileTextField", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kLibMobileTextFieldKotlin, Type = String, Dynamic = False, Default = \"Object:ctrl:MobileTextField:Kotlin", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kTextInputLayoutLib, Type = String, Dynamic = False, Default = \"com.google.android.material.textfield.TextInputLayout.instance", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kTYPE_CLASS_DATETIME, Type = Double, Dynamic = False, Default = \"4", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kTYPE_CLASS_NUMBER, Type = Double, Dynamic = False, Default = \"2", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kTYPE_CLASS_PHONE, Type = Double, Dynamic = False, Default = \"3", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kTYPE_CLASS_TEXT, Type = Double, Dynamic = False, Default = \"1", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kTYPE_DATETIME_VARIATION_DATE, Type = Double, Dynamic = False, Default = \"16", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kTYPE_DATETIME_VARIATION_NORMAL, Type = Double, Dynamic = False, Default = \"0", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kTYPE_DATETIME_VARIATION_TIME, Type = Double, Dynamic = False, Default = \"32", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kTYPE_MASK_CLASS, Type = Double, Dynamic = False, Default = \"15", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kTYPE_MASK_FLAGS, Type = Double, Dynamic = False, Default = \"16773120", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kTYPE_MASK_VARIATION, Type = Double, Dynamic = False, Default = \"4080", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kTYPE_NULL, Type = Double, Dynamic = False, Default = \"0", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kTYPE_NUMBER_FLAG_DECIMAL, Type = Double, Dynamic = False, Default = \"8192", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kTYPE_NUMBER_FLAG_SIGNED, Type = Double, Dynamic = False, Default = \"4096", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kTYPE_NUMBER_VARIATION_NORMAL, Type = Double, Dynamic = False, Default = \"0", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kTYPE_NUMBER_VARIATION_PASSWORD, Type = Double, Dynamic = False, Default = \"16", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kTYPE_TEXT_FLAG_AUTO_COMPLETE, Type = Double, Dynamic = False, Default = \"65536", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kTYPE_TEXT_FLAG_AUTO_CORRECT, Type = Double, Dynamic = False, Default = \"32768", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kTYPE_TEXT_FLAG_CAP_CHARACTERS, Type = Double, Dynamic = False, Default = \"4096", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kTYPE_TEXT_FLAG_CAP_SENTENCES, Type = Double, Dynamic = False, Default = \"16384", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kTYPE_TEXT_FLAG_CAP_WORDS, Type = Double, Dynamic = False, Default = \"8192", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kTYPE_TEXT_FLAG_ENABLE_TEXT_CONVERSION_SUGGESTIONS, Type = Double, Dynamic = False, Default = \"1048576", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kTYPE_TEXT_FLAG_IME_MULTI_LINE, Type = Double, Dynamic = False, Default = \"262144", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kTYPE_TEXT_FLAG_MULTI_LINE, Type = Double, Dynamic = False, Default = \"131072", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kTYPE_TEXT_FLAG_NO_SUGGESTIONS, Type = Double, Dynamic = False, Default = \"524288", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kTYPE_TEXT_VARIATION_EMAIL_ADDRESS, Type = Double, Dynamic = False, Default = \"32", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kTYPE_TEXT_VARIATION_EMAIL_SUBJECT, Type = Double, Dynamic = False, Default = \"48", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kTYPE_TEXT_VARIATION_FILTER, Type = Double, Dynamic = False, Default = \"176", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kTYPE_TEXT_VARIATION_LONG_MESSAGE, Type = Double, Dynamic = False, Default = \"180", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kTYPE_TEXT_VARIATION_NORMAL, Type = Double, Dynamic = False, Default = \"0", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kTYPE_TEXT_VARIATION_PASSWORD, Type = Double, Dynamic = False, Default = \"128", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kTYPE_TEXT_VARIATION_PERSON_NAME, Type = Double, Dynamic = False, Default = \"96", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kTYPE_TEXT_VARIATION_PHONETIC, Type = Double, Dynamic = False, Default = \"192", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kTYPE_TEXT_VARIATION_POSTAL_ADDRESS, Type = Double, Dynamic = False, Default = \"112", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kTYPE_TEXT_VARIATION_SHORT_MESSAGE, Type = Double, Dynamic = False, Default = \"64", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kTYPE_TEXT_VARIATION_URI, Type = Double, Dynamic = False, Default = \"16", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kTYPE_TEXT_VARIATION_VISIBLE_PASSWORD, Type = Double, Dynamic = False, Default = \"144", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kTYPE_TEXT_VARIATION_WEB_EDIT_TEXT, Type = Double, Dynamic = False, Default = \"160", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kTYPE_TEXT_VARIATION_WEB_EMAIL_ADDRESS, Type = Double, Dynamic = False, Default = \"208", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kTYPE_TEXT_VARIATION_WEB_PASSWORD, Type = Double, Dynamic = False, Default = \"224", Scope = Public
	#tag EndConstant


	#tag Enum, Name = BoxBackgroundModesXC, Type = Integer, Flags = &h0
		None = 0
		  Filled = 1
		Outline = 2
	#tag EndEnum

	#tag Enum, Name = BoxCornerFamilyXC, Type = Integer, Flags = &h0
		Rounded = 0
		Cut = 1
	#tag EndEnum

	#tag Enum, Name = EndIconModesXC, Type = Integer, Flags = &h0
		Custom = -1
		  None = 0
		  PasswordToggle = 1
		ClearText = 2
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
