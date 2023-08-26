#tag Module
Protected Module TextAreaXC
	#tag CompatibilityFlags = ( TargetAndroid and ( Target64Bit ) )
	#tag Method, Flags = &h0, Description = 436F6E76656E69656E6365206D6574686F6420746F20617070656E642074686520737065636966696564207465787420736C69636520746F20746865205465787456696577277320646973706C6179206275666665722C20757067726164696E6720697420746F2054657874566965772E427566666572547970652E4544495441424C4520696620697420776173206E6F7420616C7265616479206564697461626C652E0A0A73746172743A0974686520696E646578206F66207468652066697273742063686172616374657220696E2074686520746578740A656E643A090974686520696E646578206F66207468652063686172616374657220666F6C6C6F77696E6720746865206C6173742063686172616374657220696E207468652074657874
		Sub AppendXC(Extends ctrl As MobileTextArea, text As String, start As Integer, stop As Integer)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub append Lib "Object:ctrl:MobileTextArea" (myText As CString, myStart As Integer, myStop As Integer)
		    append(text, start, stop)
		    
		  #Else
		    
		    #Pragma Unused text
		    #Pragma Unused start
		    #Pragma Unused stop
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 4765747320746865206175746F6C696E6B206D61736B206F662074686520746578742E
		Function GetAutoLinkMaskXC(Extends ctrl As MobileTextArea) As AutoLinkMaskXC
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Function getAutoLinkMask Lib "Object:ctrl:MobileTextArea" As Integer
		    Return AutoLinkMaskXC(getAutoLinkMask)
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E7320746865206E756D626572206F6620657874726120706978656C73206F662064657363656E742070616464696E6720696E2074686520626F74746F6D206C696E65206F6620746865204C61796F75742E
		Function GetBottomPaddingXC(Extends ctrl As MobileTextArea) As Integer
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Function getBottomPadding Lib "Object:ctrl:MobileTextArea" Alias "getLayout().getBottomPadding" As Integer
		    Return getBottomPadding
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 47657473207468652063757272656E7420737472617465677920666F7220627265616B696E67207061726167726170687320696E746F206C696E65732E
		Function GetBreakStrategyXC(Extends ctrl As MobileTextArea) As Integer
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Function getBreakStrategy Lib "Object:ctrl:MobileTextArea" As Integer
		    Return getBreakStrategy
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E73207468652070616464696E67206265747765656E2074686520636F6D706F756E64206472617761626C657320616E642074686520746578742E
		Function GetCompoundDrawablePaddingXC(Extends ctrl As MobileTextArea) As Integer
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Function getCompoundDrawablePadding Lib "Object:ctrl:MobileTextArea" As Integer
		    Return getCompoundDrawablePadding
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E732074686520626F74746F6D2070616464696E67206F662074686520766965772C20706C757320737061636520666F722074686520626F74746F6D204472617761626C6520696620616E792E
		Function GetCompoundPaddingBottomXC(Extends ctrl As MobileTextArea) As Integer
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Function getCompoundPaddingBottom Lib "Object:ctrl:MobileTextArea" As Integer
		    Return getCompoundPaddingBottom
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E732074686520656E642070616464696E67206F662074686520766965772C20706C757320737061636520666F722074686520656E64204472617761626C6520696620616E792E
		Function GetCompoundPaddingEndXC(Extends ctrl As MobileTextArea) As Integer
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Function getCompoundPaddingEnd Lib "Object:ctrl:MobileTextArea" As Integer
		    Return getCompoundPaddingEnd
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E7320746865206C6566742070616464696E67206F662074686520766965772C20706C757320737061636520666F7220746865206C656674204472617761626C6520696620616E792E
		Function GetCompoundPaddingLeftXC(Extends ctrl As MobileTextArea) As Integer
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Function getCompoundPaddingLeft Lib "Object:ctrl:MobileTextArea" As Integer
		    Return getCompoundPaddingLeft
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E73207468652072696768742070616464696E67206F662074686520766965772C20706C757320737061636520666F7220746865207269676874204472617761626C6520696620616E792E
		Function GetCompoundPaddingRightXC(Extends ctrl As MobileTextArea) As Integer
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Function getCompoundPaddingRight Lib "Object:ctrl:MobileTextArea" As Integer
		    Return getCompoundPaddingRight
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E73207468652073746172742070616464696E67206F662074686520766965772C20706C757320737061636520666F7220746865207374617274204472617761626C6520696620616E792E
		Function GetCompoundPaddingStartXC(Extends ctrl As MobileTextArea) As Integer
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Function getCompoundPaddingStart Lib "Object:ctrl:MobileTextArea" As Integer
		    Return getCompoundPaddingStart
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E732074686520746F702070616464696E67206F662074686520766965772C20706C757320737061636520666F722074686520746F70204472617761626C6520696620616E792E
		Function GetCompoundPaddingTopXC(Extends ctrl As MobileTextArea) As Integer
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Function getCompoundPaddingTop Lib "Object:ctrl:MobileTextArea" As Integer
		    Return getCompoundPaddingTop
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E732074686520657874656E64656420626F74746F6D2070616464696E67206F662074686520766965772C20696E636C7564696E6720626F74682074686520626F74746F6D204472617761626C6520696620616E7920616E6420616E7920657874726120737061636520746F206B656570206D6F7265207468616E206D61784C696E6573206F6620746578742066726F6D2073686F77696E672E204974206973206F6E6C792076616C696420746F2063616C6C2074686973206166746572206D6561737572696E672E
		Function GetExtendedPaddingBottomXC(Extends ctrl As MobileTextArea) As Integer
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Function getExtendedPaddingBottom Lib "Object:ctrl:MobileTextArea" As Integer
		    Return getExtendedPaddingBottom
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E732074686520657874656E64656420746F702070616464696E67206F662074686520766965772C20696E636C7564696E6720626F74682074686520746F70204472617761626C6520696620616E7920616E6420616E7920657874726120737061636520746F206B656570206D6F7265207468616E206D61784C696E6573206F6620746578742066726F6D2073686F77696E672E204974206973206F6E6C792076616C696420746F2063616C6C2074686973206166746572206D6561737572696E672E
		Function GetExtendedPaddingTopXC(Extends ctrl As MobileTextArea) As Integer
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Function getExtendedPaddingTop Lib "Object:ctrl:MobileTextArea" As Integer
		    Return getExtendedPaddingTop
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E73207468652064697374616E6365206265747765656E20746865206669727374207465787420626173656C696E6520616E642074686520746F70206F6620746869732054657874566965772E
		Function GetFirstBaselineToTopHeightXC(Extends ctrl As MobileTextArea) As Integer
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Function getFirstBaselineToTopHeight Lib "Object:ctrl:MobileTextArea" As Integer
		    Return getFirstBaselineToTopHeight
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E732074686520636F6C6F72207573656420746F20646973706C6179207468652073656C656374696F6E20686967686C696768742E
		Function GetHighlightColorXC(Extends ctrl As MobileTextArea) As Color
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Function getHighlightColor Lib "Object:ctrl:MobileTextArea" As Integer
		    Return getHighlightColor.ToColor
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E732074686520636F6C6F72206F66207468652068696E7420746578742E
		Function GetHintTextColorXC(Extends ctrl As MobileTextArea) As Color
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Function getHintTextColors Lib "Object:ctrl:MobileTextArea" Alias "getHintTextColors().getDefaultColor" As Integer
		    Return getHintTextColors.ToColor
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E73207468652064697374616E6365206265747765656E20746865206669727374207465787420626173656C696E6520616E642074686520746F70206F6620746869732054657874566965772E
		Function GetHyphenationFrequencyXC(Extends ctrl As MobileTextArea) As Integer
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Function getHyphenationFrequency Lib "Object:ctrl:MobileTextArea" As Integer
		    Return getHyphenationFrequency
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 476574207468652074797065206F662074686520496E707574204D6574686F6420456469746F722028494D45292E
		Function GetImeOptionsXC(Extends ctrl As MobileTextArea) As Integer
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Function getImeOptions Lib "Object:ctrl:MobileTextArea" As Integer
		    Return getImeOptions
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 4765747320776865746865722074686520546578745669657720696E636C7564657320657874726120746F7020616E6420626F74746F6D2070616464696E6720746F206D616B6520726F6F6D20666F7220616363656E7473207468617420676F2061626F766520746865206E6F726D616C20617363656E7420616E642064657363656E742E
		Function GetIncludeFontPaddingXC(Extends ctrl As MobileTextArea) As Boolean
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Function getIncludeFontPadding Lib "Object:ctrl:MobileTextArea" As Boolean
		    Return getIncludeFontPadding
		    
		  #Else
		    
		    Return False
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 476574207468652074797065206F6620746865206564697461626C6520636F6E74656E742E
		Function GetInputTypeXC(Extends ctrl As MobileTextArea) As Integer
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Function getInputType Lib "Object:ctrl:MobileTextArea" As Integer
		    Return getInputType
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetJustificationModeXC(Extends ctrl As MobileTextArea) As Integer
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Function getJustificationMode Lib "Object:ctrl:MobileTextArea" As Integer
		    Return getJustificationMode
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E73207468652064697374616E6365206265747765656E20746865206C617374207465787420626173656C696E6520616E642074686520626F74746F6D206F6620746869732054657874566965772E
		Function GetLastBaselineToBottomHeightXC(Extends ctrl As MobileTextArea) As Integer
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Function getLastBaselineToBottomHeight Lib "Object:ctrl:MobileTextArea" As Integer
		    Return getLastBaselineToBottomHeight
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 4765742074686520617363656E74206F66207468652074657874206F6E2074686520737065636966696564206C696E652E205468652072657475726E2076616C7565206973206E6567617469766520746F206D6174636820746865205061696E742E617363656E74282920636F6E76656E74696F6E2E
		Function GetLineAscentXC(Extends ctrl As MobileTextArea, line As Integer) As Integer
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Function getLineAscent Lib "Object:ctrl:MobileTextArea" Alias "getLayout().getLineAscent" (myLine As Integer) As Integer
		    Return getLineAscent(line)
		    
		  #Else
		    
		    #Pragma Unused line
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E2074686520766572746963616C20706F736974696F6E206F662074686520626173656C696E65206F662074686520737065636966696564206C696E652E
		Function GetLineBaselineXC(Extends ctrl As MobileTextArea, line As Integer) As Integer
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Function getLineBaseline Lib "Object:ctrl:MobileTextArea" Alias "getLayout().getLineBaseline" (myLine As Integer) As Integer
		    Return getLineBaseline(line)
		    
		  #Else
		    
		    #Pragma Unused line
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E2074686520766572746963616C20706F736974696F6E206F662074686520626F74746F6D206F662074686520737065636966696564206C696E652E
		Function GetLineBottomXC(Extends ctrl As MobileTextArea, line As Integer) As Integer
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Function getLineBottom Lib "Object:ctrl:MobileTextArea" Alias "getLayout().getLineBottom" (myLine As Integer) As Integer
		    Return getLineBottom(line)
		    
		  #Else
		    
		    #Pragma Unused line
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E7320776865746865722074686520737065636966696564206C696E6520636F6E7461696E73206F6E65206F72206D6F726520636861726163746572732074686174206E65656420746F2062652068616E646C6564207370656369616C6C792C206C696B6520746162732E
		Function GetLineContainsTabXC(Extends ctrl As MobileTextArea, line As Integer) As Boolean
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Function getLineContainsTab Lib "Object:ctrl:MobileTextArea" Alias "getLayout().getLineContainsTab" (myLine As Integer) As Boolean
		    Return getLineContainsTab(line)
		    
		  #Else
		    
		    #Pragma Unused line
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E20746865206E756D626572206F66206C696E6573206F6620746578742C206F7220302069662074686520696E7465726E616C204C61796F757420686173206E6F74206265656E206275696C742E
		Function GetLineCountXC(Extends ctrl As MobileTextArea) As Integer
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Function getLineCount Lib "Object:ctrl:MobileTextArea" As Integer
		    Return getLineCount
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E207468652064657363656E74206F662074686520737065636966696564206C696E652830E280A66765744C696E65436F756E742829202D2031292E
		Function GetLineDescentXC(Extends ctrl As MobileTextArea, line As Integer) As Integer
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Function getLineDescent Lib "Object:ctrl:MobileTextArea" Alias "getLayout().getLineDescent" (myLine As Integer) As Integer
		    Return getLineDescent(line)
		    
		  #Else
		    
		    #Pragma Unused line
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E207468652074657874206F666673657420616674657220746865206C61737420636861726163746572206F6E2074686520737065636966696564206C696E652E
		Function GetLineEndXC(Extends ctrl As MobileTextArea, line As Integer) As Integer
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Function getLineEnd Lib "Object:ctrl:MobileTextArea" Alias "getLayout().getLineEnd" (myLine As Integer) As Integer
		    Return getLineEnd(line)
		    
		  #Else
		    
		    #Pragma Unused line
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 47657420746865206C696E65206E756D626572206F6E20776869636820746865207370656369666965642074657874206F666673657420617070656172732E20496620796F752061736B20666F72206120706F736974696F6E206265666F726520302C20796F752067657420303B20696620796F752061736B20666F72206120706F736974696F6E206265796F6E642074686520656E64206F662074686520746578742C20796F752067657420746865206C617374206C696E652E
		Function GetLineForOffsetXC(Extends ctrl As MobileTextArea, line As Integer) As Integer
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Function getLineForOffset Lib "Object:ctrl:MobileTextArea" Alias "getLayout().getLineForOffset" (myLine As Integer) As Integer
		    Return getLineForOffset(line)
		    
		  #Else
		    
		    #Pragma Unused line
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 47657420746865206C696E65206E756D62657220636F72726573706F6E64696E6720746F207468652073706563696669656420766572746963616C20706F736974696F6E2E20496620796F752061736B20666F72206120706F736974696F6E2061626F766520302C20796F752067657420303B20696620796F752061736B20666F72206120706F736974696F6E2062656C6F772074686520626F74746F6D206F662074686520746578742C20796F752067657420746865206C617374206C696E652E
		Function GetLineForVerticalXC(Extends ctrl As MobileTextArea, vertical As Integer) As Integer
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Function getLineForVertical Lib "Object:ctrl:MobileTextArea" Alias "getLayout().getLineForVertical" (myVertical As Integer) As Integer
		    Return getLineForVertical(vertical)
		    
		  #Else
		    
		    #Pragma Unused vertical
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 476574732074686520766572746963616C2064697374616E6365206265747765656E206C696E6573206F6620746578742C20696E20706978656C732E204E6F74652074686174206D61726B75702077697468696E2074686520746578742063616E20636175736520696E646976696475616C206C696E657320746F2062652074616C6C6572206F722073686F72746572207468616E2074686973206865696768742C20616E6420746865206C61796F7574206D617920636F6E7461696E206164646974696F6E616C2066697273742D6F72206C6173742D6C696E652070616464696E672E
		Function GetLineHeightXC(Extends ctrl As MobileTextArea) As Integer
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Function getLineHeight Lib "Object:ctrl:MobileTextArea" As Integer
		    Return getLineHeight
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 47657420746865206C6566746D6F737420706F736974696F6E20746861742073686F756C64206265206578706F73656420666F7220686F72697A6F6E74616C207363726F6C6C696E67206F6E2074686520737065636966696564206C696E652E
		Function GetLineLeftXC(Extends ctrl As MobileTextArea, line As Integer) As Single
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Function getLineLeft Lib "Object:ctrl:MobileTextArea" Alias "getLayout().getLineLeft" (myLine As Integer) As Single
		    Return getLineLeft(line)
		    
		  #Else
		    
		    #Pragma Unused line
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 476574207468652072696768746D6F737420706F736974696F6E20746861742073686F756C64206265206578706F73656420666F7220686F72697A6F6E74616C207363726F6C6C696E67206F6E2074686520737065636966696564206C696E652E
		Function GetLineMaxXC(Extends ctrl As MobileTextArea, line As Integer) As Single
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Function getLineMax Lib "Object:ctrl:MobileTextArea" Alias "getLayout().getLineMax" (myLine As Integer) As Single
		    Return getLineMax(line)
		    
		  #Else
		    
		    #Pragma Unused line
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 476574732074686520756E7369676E656420686F72697A6F6E74616C20657874656E74206F662074686520737065636966696564206C696E652C20696E636C7564696E67206C656164696E67206D617267696E20696E64656E742C20627574206578636C7564696E6720747261696C696E6720776869746573706163652E
		Function GetLineRightXC(Extends ctrl As MobileTextArea, line As Integer) As Single
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Function getLineRight Lib "Object:ctrl:MobileTextArea" Alias "getLayout().getLineRight" (myLine As Integer) As Single
		    Return getLineRight(line)
		    
		  #Else
		    
		    #Pragma Unused line
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E207468652074657874206F6666736574206F662074686520626567696E6E696E67206F662074686520737065636966696564206C696E6520282030E280A66765744C696E65436F756E742829292E2049662074686520737065636966696564206C696E6520697320657175616C20746F20746865206C696E6520636F756E742C2072657475726E7320746865206C656E677468206F662074686520746578742E
		Function GetLineStartXC(Extends ctrl As MobileTextArea, line As Integer) As Integer
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Function getLineStart Lib "Object:ctrl:MobileTextArea" Alias "getLayout().getLineStart" (myLine As Integer) As Integer
		    Return getLineStart(line)
		    
		  #Else
		    
		    #Pragma Unused line
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E2074686520766572746963616C20706F736974696F6E206F662074686520746F70206F662074686520737065636966696564206C696E65202830E280A66765744C696E65436F756E742829292E2049662074686520737065636966696564206C696E6520697320657175616C20746F20746865206C696E6520636F756E742C2072657475726E732074686520626F74746F6D206F6620746865206C617374206C696E652E
		Function GetLineTopXC(Extends ctrl As MobileTextArea, line As Integer) As Integer
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Function getLineTop Lib "Object:ctrl:MobileTextArea" Alias "getLayout().getLineTop" (myLine As Integer) As Integer
		    Return getLineTop(line)
		    
		  #Else
		    
		    #Pragma Unused line
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E207468652074657874206F666673657420616674657220746865206C6173742076697369626C65206368617261637465722028736F2077686974657370616365206973206E6F7420636F756E74656429206F6E2074686520737065636966696564206C696E652E
		Function GetLineVisibleEndXC(Extends ctrl As MobileTextArea, line As Integer) As Integer
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Function getLineVisibleEnd Lib "Object:ctrl:MobileTextArea" Alias "getLayout().getLineVisibleEnd" (myLine As Integer) As Integer
		    Return getLineVisibleEnd(line)
		    
		  #Else
		    
		    #Pragma Unused line
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 476574732074686520756E7369676E656420686F72697A6F6E74616C20657874656E74206F662074686520737065636966696564206C696E652C20696E636C7564696E67206C656164696E67206D617267696E20696E64656E7420616E6420747261696C696E6720776869746573706163652E
		Function GetLineWidthXC(Extends ctrl As MobileTextArea, line As Integer) As Single
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Function getLineWidth Lib "Object:ctrl:MobileTextArea" Alias "getLayout().getLineWidth" (myLine As Integer) As Single
		    Return getLineWidth(line)
		    
		  #Else
		    
		    #Pragma Unused line
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E73207768657468657220746865206D6F76656D656E74206D6574686F642077696C6C206175746F6D61746963616C6C792062652073657420746F204C696E6B4D6F76656D656E744D6574686F64206966207365744175746F4C696E6B4D61736B28696E742920686173206265656E2073657420746F206E6F6E7A65726F20616E64206C696E6B732061726520646574656374656420696E207365745465787428636861722C20696E742C20696E74292E205468652064656661756C7420697320747275652E
		Function GetLinksClickableXC(Extends ctrl As MobileTextArea) As Boolean
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Function getLinksClickable Lib "Object:ctrl:MobileTextArea" As Boolean
		    Return getLinksClickable
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E732074686520636F6C6F72206F66206C696E6B7320696E2074686520746578742E
		Function GetLinkTextColorXC(Extends ctrl As MobileTextArea) As Color
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Function getLinkTextColors Lib "Object:ctrl:MobileTextArea" Alias "getLinkTextColors().getDefaultColor" As Integer
		    Return getLinkTextColors.ToColor
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E7320746865206D6178696D756D20686569676874206F6620546578745669657720696E207465726D73206F66206E756D626572206F66206C696E6573206F72202D3120696620746865206D6178696D756D206865696768742077617320736574207573696E67207365744D617848656967687428696E7429206F722073657448656967687428696E74292E
		Function GetMaxLinesXC(Extends ctrl As MobileTextArea) As Integer
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Function getMaxLines Lib "Object:ctrl:MobileTextArea" As Integer
		    Return getMaxLines
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E7320746865206D696E696D756D20686569676874206F6620546578745669657720696E207465726D73206F66206E756D626572206F66206C696E6573206F72202D3120696620746865206D696E696D756D206865696768742077617320736574207573696E67207365744D696E48656967687428696E7429206F722073657448656967687428696E74292E
		Function GetMinLinesXC(Extends ctrl As MobileTextArea) As Integer
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Function getMinLines Lib "Object:ctrl:MobileTextArea" As Integer
		    Return getMinLines
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 4765742074686520636861726163746572206F6666736574206F6E2074686520737065636966696564206C696E652077686F736520706F736974696F6E20697320636C6F7365737420746F207468652073706563696669656420686F72697A6F6E74616C20706F736974696F6E2E
		Function GetOffsetForHorizontalXC(Extends ctrl As MobileTextArea, line As Integer, horiz As Single) As Integer
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Function getOffsetForHorizontal Lib "Object:ctrl:MobileTextArea" Alias "getLayout().getOffsetForHorizontal" (myLine As Integer, myHoriz As Single) As Integer
		    Return getOffsetForHorizontal(line, horiz)
		    
		  #Else
		    
		    #Pragma Unused line
		    #Pragma Unused horiz
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetOffsetToLeftOfXC(Extends ctrl As MobileTextArea, line As Integer) As Integer
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Function getOffsetToLeftOf Lib "Object:ctrl:MobileTextArea" Alias "getLayout().getOffsetToLeftOf" (myLine As Integer) As Integer
		    Return getOffsetToLeftOf(line)
		    
		  #Else
		    
		    #Pragma Unused line
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetOffsetToRightOfXC(Extends ctrl As MobileTextArea, line As Integer) As Integer
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Function getOffsetToRightOf Lib "Object:ctrl:MobileTextArea" Alias "getLayout().getOffsetToRightOf" (myLine As Integer) As Integer
		    Return getOffsetToRightOf(line)
		    
		  #Else
		    
		    #Pragma Unused line
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 476574732074686520666C616773206F6E20746865205061696E74206265696E67207573656420746F20646973706C61792074686520746578742E
		Function GetPaintFlagsXC(Extends ctrl As MobileTextArea) As Integer
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Function getPaintFlags Lib "Object:ctrl:MobileTextArea" As Integer
		    Return getPaintFlags
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E7320746865207072696D61727920646972656374696F6E616C697479206F66207468652070617261677261706820636F6E7461696E696E672074686520737065636966696564206C696E652C20656974686572203120666F72206C6566742D746F2D7269676874206C696E65732C206F72202D3120666F722072696768742D746F2D6C656674206C696E65732028736565204449525F4C4546545F544F5F52494748542C204449525F52494748545F544F5F4C454654292E
		Function GetParagraphDirectionXC(Extends ctrl As MobileTextArea, line As Integer) As Integer
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Function getParagraphDirection Lib "Object:ctrl:MobileTextArea" Alias "getLayout().getParagraphDirection" (myLine As Integer) As Integer
		    Return getParagraphDirection(line)
		    
		  #Else
		    
		    #Pragma Unused line
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 47657420746865206C6566742065646765206F662074686520737065636966696564207061726167726170682C20696E736574206279206C656674206D617267696E732E
		Function GetParagraphLeftXC(Extends ctrl As MobileTextArea, line As Integer) As Integer
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Function getParagraphLeft Lib "Object:ctrl:MobileTextArea" Alias "getLayout().getParagraphLeft" (myLine As Integer) As Integer
		    Return getParagraphLeft(line)
		    
		  #Else
		    
		    #Pragma Unused line
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 476574207468652072696768742065646765206F662074686520737065636966696564207061726167726170682C20696E736574206279207269676874206D617267696E732E
		Function GetParagraphRightXC(Extends ctrl As MobileTextArea, line As Integer) As Integer
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Function getParagraphRight Lib "Object:ctrl:MobileTextArea" Alias "getLayout().getParagraphRight" (myLine As Integer) As Integer
		    Return getParagraphRight(line)
		    
		  #Else
		    
		    #Pragma Unused line
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 47657420746865207072696D61727920686F72697A6F6E74616C20706F736974696F6E20666F7220746865207370656369666965642074657874206F66667365742E205468697320697320746865206C6F636174696F6E2077686572652061206E65772063686172616374657220776F756C6420626520696E73657274656420696E20746865207061726167726170682773207072696D61727920646972656374696F6E2E
		Function GetPrimaryHorizontalXC(Extends ctrl As MobileTextArea, offset As Integer) As Single
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Function getPrimaryHorizontal Lib "Object:ctrl:MobileTextArea" Alias "getLayout().getPrimaryHorizontal" (myOffset As Integer) As Single
		    Return getPrimaryHorizontal(offset)
		    
		  #Else
		    
		    #Pragma Unused offset
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 47657420746865207365636F6E6461727920686F72697A6F6E74616C20706F736974696F6E20666F7220746865207370656369666965642074657874206F66667365742E205468697320697320746865206C6F636174696F6E2077686572652061206E65772063686172616374657220776F756C6420626520696E73657274656420696E2074686520646972656374696F6E206F74686572207468616E20746865207061726167726170682773207072696D61727920646972656374696F6E2E
		Function GetSecondaryHorizontalXC(Extends ctrl As MobileTextArea, offset As Integer) As Single
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Function getSecondaryHorizontal Lib "Object:ctrl:MobileTextArea" Alias "getLayout().getSecondaryHorizontal" (myOffset As Integer) As Single
		    Return getSecondaryHorizontal(offset)
		    
		  #Else
		    
		    #Pragma Unused offset
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E7320776865746865722074686520736F667420696E707574206D6574686F642077696C6C206265206D6164652076697369626C65207768656E2074686973205465787456696577206765747320666F63757365642E205468652064656661756C7420697320747275652E
		Function GetShowSoftInputOnFocusXC(Extends ctrl As MobileTextArea) As Boolean
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Function getShowSoftInputOnFocus Lib "Object:ctrl:MobileTextArea" As Boolean
		    Return getShowSoftInputOnFocus
		    
		  #Else
		    
		    Return False
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E20746865206E756D626572206F6620756E697473206F66206C656164696E6720746861742061726520616464656420746F2065616368206C696E652E
		Function GetSpacingAddXC(Extends ctrl As MobileTextArea) As Single
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Function getSpacingAdd Lib "Object:ctrl:MobileTextArea" Alias "getLayout().getSpacingAdd" As Single
		    Return getSpacingAdd
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E207768617420746865207465787420686569676874206973206D756C7469706C69656420627920746F2067657420746865206C696E65206865696768742E
		Function GetSpacingMultiplierXC(Extends ctrl As MobileTextArea) As Single
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Function getSpacingMultiplier Lib "Object:ctrl:MobileTextArea" Alias "getLayout().getSpacingMultiplier" As Single
		    Return getSpacingMultiplier
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E732074686520286E6567617469766529206E756D626572206F6620657874726120706978656C73206F6620617363656E742070616464696E6720696E2074686520746F70206C696E65206F6620746865204C61796F75742E
		Function GetTopPaddingXC(Extends ctrl As MobileTextArea) As Integer
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Function getTopPadding Lib "Object:ctrl:MobileTextArea" Alias "getLayout().getTopPadding" As Integer
		    Return getTopPadding
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E732074686520746F74616C20626F74746F6D2070616464696E67206F662074686520766965772C20696E636C7564696E672074686520626F74746F6D204472617761626C6520696620616E792C2074686520657874726120737061636520746F206B656570206D6F7265207468616E206D61784C696E65732066726F6D2073686F77696E672C20616E642074686520766572746963616C206F666673657420666F7220677261766974792C20696620616E792E
		Function GetTotalPaddingBottomXC(Extends ctrl As MobileTextArea) As Integer
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Function getTotalPaddingBottom Lib "Object:ctrl:MobileTextArea" As Integer
		    Return getTotalPaddingBottom
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E732074686520746F74616C20656E642070616464696E67206F662074686520766965772C20696E636C7564696E672074686520656E64204472617761626C6520696620616E792E
		Function GetTotalPaddingEndXC(Extends ctrl As MobileTextArea) As Integer
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Function getTotalPaddingEnd Lib "Object:ctrl:MobileTextArea" As Integer
		    Return getTotalPaddingEnd
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E732074686520746F74616C206C6566742070616464696E67206F662074686520766965772C20696E636C7564696E6720746865206C656674204472617761626C6520696620616E792E
		Function GetTotalPaddingLeftXC(Extends ctrl As MobileTextArea) As Integer
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Function getTotalPaddingLeft Lib "Object:ctrl:MobileTextArea" As Integer
		    Return getTotalPaddingLeft
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E732074686520746F74616C2072696768742070616464696E67206F662074686520766965772C20696E636C7564696E6720746865207269676874204472617761626C6520696620616E792E
		Function GetTotalPaddingRightXC(Extends ctrl As MobileTextArea) As Integer
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Function getTotalPaddingRight Lib "Object:ctrl:MobileTextArea" As Integer
		    Return getTotalPaddingRight
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E732074686520746F74616C2073746172742070616464696E67206F662074686520766965772C20696E636C7564696E6720746865207374617274204472617761626C6520696620616E792E
		Function GetTotalPaddingStartXC(Extends ctrl As MobileTextArea) As Integer
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Function getTotalPaddingStart Lib "Object:ctrl:MobileTextArea" As Integer
		    Return getTotalPaddingStart
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E732074686520746F74616C20746F702070616464696E67206F662074686520766965772C20696E636C7564696E672074686520746F70204472617761626C6520696620616E792C2074686520657874726120737061636520746F206B656570206D6F7265207468616E206D61784C696E65732066726F6D2073686F77696E672C20616E642074686520766572746963616C206F666673657420666F7220677261766974792C20696620616E792E
		Function GetTotalPaddingTopXC(Extends ctrl As MobileTextArea) As Integer
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Function getTotalPaddingTop Lib "Object:ctrl:MobileTextArea" As Integer
		    Return getTotalPaddingTop
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E20747275652069666620746865726520697320612073656C656374696F6E206F66206E6F6E7A65726F206C656E67746820696E736964652074686973207465787420766965772E
		Function HasSelectionXC(Extends ctrl As MobileTextArea) As Boolean
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Function hasSelection Lib "Object:ctrl:MobileTextArea" As Boolean
		    Return hasSelection
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E732077686574686572206F72206E6F742074686520637572736F722069732076697369626C652028617373756D696E672074686973205465787456696577206973206564697461626C65292E2054686973206D6574686F64206D61792072657475726E2066616C7365207768656E2074686520494D4520697320636F6E73756D696E672074686520696E707574206576656E20696620746865206D456469746F722E6D437572736F7256697369626C65206174747269627574652069732074727565206F722023736574437572736F7256697369626C652874727565292069732063616C6C65642E
		Function IsCursorVisibleXC(Extends ctrl As MobileTextArea) As Boolean
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Function isCursorVisible Lib "Object:ctrl:MobileTextArea" As Boolean
		    Return isCursorVisible
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E7320747275652069662074686520636861726163746572206174206F666673657420697320726967687420746F206C656674202852544C292E
		Function IsRtlCharAtXC(Extends ctrl As MobileTextArea, offset As Integer) As Boolean
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Function isRtlCharAt Lib "Object:ctrl:MobileTextArea" Alias "getLayout().isRtlCharAt" (myOffset As Integer) As Boolean
		    Return isRtlCharAt(offset)
		    
		  #Else
		    
		    #Pragma Unused offset
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E7320746865207374617465206F66207468652074657874497353656C65637461626C6520666C616720285365652073657454657874497353656C65637461626C652829292E20416C74686F75676820796F75206861766520746F20736574207468697320666C616720746F20616C6C6F7720757365727320746F2073656C65637420616E6420636F7079207465787420696E2061206E6F6E2D6564697461626C652054657874566965772C2074686520636F6E74656E74206F6620616E2045646974546578742063616E20616C776179732062652073656C65637465642C20696E646570656E64656E746C79206F66207468652076616C7565206F66207468697320666C61672E
		Function IsTextSelectableXC(Extends ctrl As MobileTextArea) As Boolean
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Function isTextSelectable Lib "Object:ctrl:MobileTextArea" As Boolean
		    Return isTextSelectable
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 53657473207468652070726F70657274696573206F662074686973206669656C6420746F207472616E73666F726D20696E70757420746F20414C4C204341505320646973706C61792E2054686973206D61792075736520612022736D616C6C20636170732220666F726D617474696E6720696620617661696C61626C652E20546869732073657474696E672077696C6C2062652069676E6F7265642069662074686973206669656C64206973206564697461626C65206F722073656C65637461626C652E20546869732063616C6C207265706C61636573207468652063757272656E74207472616E73666F726D6174696F6E206D6574686F642E2044697361626C696E6720746869732077696C6C206E6F74206E65636573736172696C7920726573746F7265207468652070726576696F7573206265686176696F722066726F6D206265666F726520746869732077617320656E61626C65642E
		Sub SetAllCapsXC(Extends ctrl As MobileTextArea, allCaps As Boolean)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub setAllCaps Lib "Object:ctrl:MobileTextArea" (myAllCaps As Boolean)
		    setAllCaps(allCaps)
		    
		  #Else
		    
		    #Pragma Unused allCaps
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 5365747320746865206175746F6C696E6B206D61736B206F662074686520746578742E20536565204C696E6B6966792E414C4C20616E6420706565727320666F7220706F737369626C652076616C7565732E
		Sub SetAutoLinkMaskXC(Extends ctrl As MobileTextArea, mask As AutoLinkMaskXC)
		  #If TargetAndroid
		    
		    Declare Sub setAutoLinkMask Lib "Object:ctrl:MobileTextArea" (myMask As Integer)
		    setAutoLinkMask(Integer(mask))
		    
		    ctrl.Text = ctrl.Text ' otherwise Links won't shown
		    
		  #Else
		    
		    #Pragma Unused ctrl
		    #Pragma Unused mask
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 536574732074686520627265616B20737472617465677920666F7220627265616B696E67207061726167726170687320696E746F206C696E65732E205468652064656661756C742076616C756520666F72205465787456696577206973204C61796F757423425245414B5F53545241544547595F484947485F5155414C4954592C20616E64207468652064656661756C742076616C756520666F72204564697454657874206973204C61796F757423425245414B5F53545241544547595F53494D504C452C20746865206C617474657220746F2061766F6964207468652074657874202264616E63696E6722207768656E206265696E67206564697465642E0A0A456E61626C696E672068797068656E6174696F6E207769746820656974686572207573696E67204C61796F75742348595048454E4154494F4E5F4652455155454E43595F4E4F524D414C206F72204C61796F75742348595048454E4154494F4E5F4652455155454E43595F46554C4C207768696C65206C696E6520627265616B696E672069732073657420746F206F6E65206F66204C61796F757423425245414B5F53545241544547595F42414C414E4345442C204C61796F757423425245414B5F53545241544547595F484947485F5155414C49545920696D70726F7665732074686520737472756374757265206F662074657874206C61796F757420686F77657665722068617320706572666F726D616E636520696D7061637420616E64207265717569726573206D6F72652074696D6520746F20646F207468652074657874206C61796F75742E0A0A436F6D70617265642077697468207365744C696E65427265616B5374796C6528696E74292C206C696E6520627265616B207374796C65207769746820646966666572656E74207374726963746E657373206973206576616C756174656420696E207468652049435520746F206964656E746966792074686520706F74656E7469616C20627265616B706F696E74732E20496E20736574427265616B537472617465677928696E74292C206C696E6520627265616B2073747261746567792068616E646C65732074686520706F73742070726F63657373696E67206F66204943552773206C696E6520627265616B20726573756C742E2049742061696D7320746F206576616C7561746520494355277320627265616B706F696E747320616E6420627265616B20746865206C696E6573206261736564206F6E2074686520636F6E73747261696E742E
		Sub SetBreakStrategyXC(Extends ctrl As MobileTextArea, breakStrategy As BreakStrategyXC)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub setBreakStrategy Lib "Object:ctrl:MobileTextArea" (myBreakStrategy As Integer)
		    setBreakStrategy(Integer(breakStrategy))
		    
		  #Else
		    
		    #Pragma Unused breakStrategy
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 53657473207468652073697A65206F66207468652070616464696E67206265747765656E2074686520636F6D706F756E64206472617761626C657320616E642074686520746578742E
		Sub SetCompoundDrawablePaddingXC(Extends ctrl As MobileTextArea, pad As Integer)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub setCompoundDrawablePadding Lib "Object:ctrl:MobileTextArea" (myPad As Integer)
		    setCompoundDrawablePadding(pad)
		    
		  #Else
		    
		    #Pragma Unused pad
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 53657420776865746865722074686520637572736F722069732076697369626C652E205468652064656661756C7420697320747275652E204E6F7465207468617420746869732070726F7065727479206F6E6C79206D616B65732073656E736520666F72206564697461626C652054657874566965772E20496620494D4520697320636F6E73756D696E672074686520696E7075742C2074686520637572736F722077696C6C20616C7761797320626520696E76697369626C652C207669736962696C6974792077696C6C206265207570646174656420617320746865206C617374207374617465207768656E20494D4520646F6573206E6F7420636F6E73756D652074686520696E70757420616E796D6F72652E
		Sub SetCursorVisibleXC(Extends ctrl As MobileTextArea, visible As Boolean)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub setCursorVisible Lib "Object:ctrl:MobileTextArea" (myVisible As Boolean)
		    setCursorVisible(visible)
		    
		  #Else
		    
		    #Pragma Unused visible
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 53657420746865205465787456696577277320656C6567616E7420686569676874206D65747269637320666C61672E20546869732073657474696E672073656C6563747320666F6E742076617269616E747320746861742068617665206E6F74206265656E20636F6D70616374656420746F20666974204C6174696E2D626173656420766572746963616C206D6574726963732C20616E6420616C736F20696E6372656173657320746F7020616E6420626F74746F6D20626F756E647320746F2070726F76696465206D6F72652073706163652E
		Sub SetElegantTextHeightXC(Extends ctrl As MobileTextArea, elegant As Boolean)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub setElegantTextHeight Lib "Object:ctrl:MobileTextArea" (myElegant As Boolean)
		    setElegantTextHeight(elegant)
		    
		  #Else
		    
		    #Pragma Unused elegant
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 53657473207468652072696768742D68616E6420636F6D706F756E64206472617761626C65206F662074686520546578745669657720746F2074686520226572726F72222069636F6E20616E64207365747320616E206572726F72206D65737361676520746861742077696C6C20626520646973706C6179656420696E206120706F707570207768656E207468652054657874566965772068617320666F6375732E205468652069636F6E20616E64206572726F72206D6573736167652077696C6C20626520726573657420746F206E756C6C207768656E20616E79206B6579206576656E7473206361757365206368616E67657320746F20746865205465787456696577277320746578742E20496620746865206572726F72206973206E756C6C2C20746865206572726F72206D65737361676520616E642069636F6E2077696C6C20626520636C65617265642E
		Sub SetErrorXC(Extends ctrl As MobileTextArea, error As String)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub setError Lib "Object:ctrl:MobileTextArea" (myError As CString)
		    setError(error)
		    
		  #Else
		    
		    #Pragma Unused error
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 536574207768657468657220746F20726573706563742074686520617363656E7420616E642064657363656E74206F66207468652066616C6C6261636B20666F6E7473207468617420617265207573656420696E20646973706C6179696E6720746865207465787420287768696368206973206E656564656420746F2061766F696420746578742066726F6D20636F6E7365637574697665206C696E65732072756E6E696E6720696E746F2065616368206F74686572292E204966207365742C2066616C6C6261636B20666F6E7473207468617420656E642075702067657474696E6720757365642063616E20696E6372656173652074686520617363656E7420616E642064657363656E74206F6620746865206C696E657320746861742074686579206172652075736564206F6E2E0A0A497420697320726571756972656420746F2062652074727565206966207465787420636F756C6420626520696E206C616E677561676573206C696B65204275726D657365206F72205469626574616E2077686572652074657874206973207479706963616C6C79206D7563682074616C6C6572206F7220646565706572207468616E204C6174696E20746578742E
		Sub SetFallbackLineSpacingXC(Extends ctrl As MobileTextArea, enabled As Boolean)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub setFallbackLineSpacing Lib "Object:ctrl:MobileTextArea" (myEnabled As Boolean)
		    setFallbackLineSpacing(enabled)
		    
		  #Else
		    
		    #Pragma Unused enabled
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 557064617465732074686520746F702070616464696E67206F662074686520546578745669657720736F2074686174204669727374426173656C696E65546F546F70486569676874206973207468652064697374616E6365206265747765656E2074686520746F70206F662074686520546578745669657720616E64206669727374206C696E65277320626173656C696E652E
		Sub SetFirstBaselineToTopHeightXC(Extends ctrl As MobileTextArea, firstBaselineToTopHeight As Integer)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub setFirstBaselineToTopHeight Lib "Object:ctrl:MobileTextArea" (myFirstBaselineToTopHeight As Integer)
		    setFirstBaselineToTopHeight(firstBaselineToTopHeight)
		    
		  #Else
		    
		    #Pragma Unused firstBaselineToTopHeight
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 536574732074686520686F72697A6F6E74616C20616C69676E6D656E74206F6620746865207465787420616E642074686520766572746963616C206772617669747920746861742077696C6C2062652075736564207768656E20746865726520697320657874726120737061636520696E20746865205465787456696577206265796F6E64207768617420697320726571756972656420666F7220746865207465787420697473656C662E
		Sub SetGravityXC(Extends ctrl As MobileTextArea, gravity As Integer)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub setGravity Lib "Object:ctrl:MobileTextArea" (myGravity As Integer)
		    setGravity(gravity)
		    
		  #Else
		    
		    #Pragma Unused gravity
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 536574732074686520636F6C6F72207573656420746F20646973706C6179207468652073656C656374696F6E20686967686C696768742E
		Sub SetHighlightColorXC(Extends ctrl As MobileTextArea, c As Color)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub setHighlightColor Lib "Object:ctrl:MobileTextArea" (myColor As Integer)
		    setHighlightColor(c.ToInteger)
		    
		  #Else
		    
		    #Pragma Unused c
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 536574732074686520636F6C6F72206F66207468652068696E74207465787420666F7220616C6C2074686520737461746573202864697361626C65642C20666F6375737365642C2073656C65637465642E2E2E29206F6620746869732054657874566965772E
		Sub SetHintTextColorXC(Extends ctrl As MobileTextArea, c As Color)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub setHintTextColor Lib "Object:ctrl:MobileTextArea" (myColor As Integer)
		    setHintTextColor(c.ToInteger)
		    
		  #Else
		    
		    #Pragma Unused c
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 5365747320746865207465787420746F20626520646973706C61796564207768656E207468652074657874206F662074686520546578745669657720697320656D7074792E
		Sub SetHintXC(Extends ctrl As MobileTextArea, hint As String)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub setHint Lib "Object:ctrl:MobileTextArea" (myHint As CString)
		    setHint(hint)
		    
		  #Else
		    
		    #Pragma Unused hint
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 5365747320776865746865722074686520746578742073686F756C6420626520616C6C6F77656420746F206265207769646572207468616E2074686520566965772069732E2049662066616C73652C2069742077696C6C206265207772617070656420746F20746865207769647468206F662074686520566965772E
		Sub SetHorizontallyScrollingXC(Extends ctrl As MobileTextArea, whether As Boolean)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub setHorizontallyScrolling Lib "Object:ctrl:MobileTextArea" (myWhether As Boolean)
		    setHorizontallyScrolling(whether)
		    
		  #Else
		    
		    #Pragma Unused whether
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 5365747320746865206672657175656E6379206F66206175746F6D617469632068797068656E6174696F6E20746F20757365207768656E2064657465726D696E696E6720776F726420627265616B732E205468652064656661756C742076616C756520666F7220626F746820546578745669657720616E64204564697454657874206973204C61796F75742348595048454E4154494F4E5F4652455155454E43595F4E4F4E452E204E6F74652074686174207468652064656661756C742068797068656E6174696F6E206672657175656E63792076616C7565206973207365742066726F6D20746865207468656D652E
		Sub SetHyphenationFrequencyXC(Extends ctrl As MobileTextArea, hyphenationFrequency As HyphenationFrequencyXC)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub setHyphenationFrequency Lib "Object:ctrl:MobileTextArea" (myHyphenationFrequency As Integer)
		    setHyphenationFrequency(Integer(hyphenationFrequency))
		    
		  #Else
		    
		    #Pragma Unused hyphenationFrequency
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 4368616E67652074686520656469746F72207479706520696E7465676572206173736F636961746564207769746820746865207465787420766965772C207768696368206973207265706F7274656420746F20616E20496E707574204D6574686F6420456469746F722028494D4529207769746820456469746F72496E666F23696D654F7074696F6E73207768656E2069742068617320666F6375732E
		Sub SetImeOptionsXC(Extends ctrl As MobileTextArea, imeOptions As Integer)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub setImeOptions Lib "Object:ctrl:MobileTextArea" (myImeOptions As Integer)
		    setImeOptions(imeOptions)
		    
		  #Else
		    
		    #Pragma Unused imeOptions
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 53657420776865746865722074686520546578745669657720696E636C7564657320657874726120746F7020616E6420626F74746F6D2070616464696E6720746F206D616B6520726F6F6D20666F7220616363656E7473207468617420676F2061626F766520746865206E6F726D616C20617363656E7420616E642064657363656E742E205468652064656661756C7420697320747275652E
		Sub SetIncludeFontPaddingXC(Extends ctrl As MobileTextArea, includePad As Boolean)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub setIncludeFontPadding Lib "Object:ctrl:MobileTextArea" (myIncludePad As Boolean)
		    setIncludeFontPadding(includePad)
		    
		  #Else
		    
		    #Pragma Unused includePad
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 536574206A757374696669636174696F6E206D6F64652E205468652064656661756C742076616C7565206973204C61796F7574234A555354494649434154494F4E5F4D4F44455F4E4F4E452E20496620746865206C617374206C696E6520697320746F6F2073686F727420666F72206A757374696669636174696F6E2C20746865206C617374206C696E652077696C6C20626520646973706C6179656420776974682074686520616C69676E6D656E742073657420627920566965772E73657454657874416C69676E6D656E7428696E74292E
		Sub SetJustificationModeXC(Extends ctrl As MobileTextArea, justificationMode As JustificationModesXC)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub setJustificationMode Lib "Object:ctrl:MobileTextArea" (myJustificationMode As Integer)
		    setJustificationMode(Integer(justificationMode))
		    
		  #Else
		    
		    #Pragma Unused justificationMode
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 557064617465732074686520626F74746F6D2070616464696E67206F662074686520546578745669657720736F2074686174204C617374426173656C696E65546F426F74746F6D486569676874206973207468652064697374616E6365206265747765656E2074686520626F74746F6D206F662074686520546578745669657720616E6420746865206C617374206C696E65277320626173656C696E652E
		Sub SetLastBaselineToBottomHeightXC(Extends ctrl As MobileTextArea, lastBaselineToBottomHeight As Integer)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub setLastBaselineToBottomHeight Lib "Object:ctrl:MobileTextArea" (myLastBaselineToBottomHeight As Integer)
		    setLastBaselineToBottomHeight(lastBaselineToBottomHeight)
		    
		  #Else
		    
		    #Pragma Unused lastBaselineToBottomHeight
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 536574732074657874206C65747465722D73706163696E6720696E20656D20756E6974732E205479706963616C2076616C75657320666F7220736C6967687420657870616E73696F6E2077696C6C2062652061726F756E6420302E30352E204E656761746976652076616C756573207469676874656E20746578742E
		Sub SetLetterSpacingXC(Extends ctrl As MobileTextArea, letterSpacing As Single)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub setLetterSpacing Lib "Object:ctrl:MobileTextArea" (myLetterSpacing As Single)
		    setLetterSpacing(letterSpacing)
		    
		  #Else
		    
		    #Pragma Unused letterSpacing
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 5365747320616E206578706C69636974206C696E652068656967687420666F72207468697320546578745669657720696E20506978656C732E
		Sub SetLineHeightXC(Extends ctrl As MobileTextArea, lineHeight As Integer)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub setLineHeight Lib "Object:ctrl:MobileTextArea" (myLineHeight As Integer)
		    setLineHeight(lineHeight)
		    
		  #Else
		    
		    #Pragma Unused lineHeight
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 53657473206C696E652073706163696E6720666F7220746869732054657874566965772E2045616368206C696E65206F74686572207468616E20746865206C617374206C696E652077696C6C20686176652069747320686569676874206D756C7469706C696564206279206D756C7420616E6420686176652061646420616464656420746F2069742E
		Sub SetLineSpacingXC(Extends ctrl As MobileTextArea, add As Single, mult As Single)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub setLineSpacing Lib "Object:ctrl:MobileTextArea" (myAdd As Single, myMult As Single)
		    setLineSpacing(add, mult)
		    
		  #Else
		    
		    #Pragma Unused add
		    #Pragma Unused mult
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 536574732074686520686569676874206F662074686520546578745669657720746F2062652065786163746C79206C696E65732074616C6C2E0A0A546869732076616C7565206973207573656420666F72206865696768742063616C63756C6174696F6E206966204C61796F7574506172616D7320646F6573206E6F7420666F72636520546578745669657720746F206861766520616E206578616374206865696768742E2053657474696E6720746869732076616C7565206F76657272696465732070726576696F7573206D696E696D756D2F6D6178696D756D2068656967687420636F6E66696775726174696F6E732073756368206173207365744D696E4C696E657328696E7429206F72207365744D61784C696E657328696E74292E2073657453696E676C654C696E6528292077696C6C2073657420746869732076616C756520746F20312E
		Sub SetLinesXC(Extends ctrl As MobileTextArea, lines As Integer)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub setLines Lib "Object:ctrl:MobileTextArea" (myLines As Integer)
		    setLines(lines)
		    
		  #Else
		    
		    #Pragma Unused lines
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 53657473207768657468657220746865206D6F76656D656E74206D6574686F642077696C6C206175746F6D61746963616C6C792062652073657420746F204C696E6B4D6F76656D656E744D6574686F64206966207365744175746F4C696E6B4D61736B28696E742920686173206265656E2073657420746F206E6F6E7A65726F20616E64206C696E6B732061726520646574656374656420696E207365745465787428636861722C20696E742C20696E74292E205468652064656661756C7420697320747275652E
		Sub SetLinksClickableXC(Extends ctrl As MobileTextArea, whether As Boolean)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub setLinksClickable Lib "Object:ctrl:MobileTextArea" (myWhether As Boolean)
		    setLinksClickable(whether)
		    
		  #Else
		    
		    #Pragma Unused whether
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 536574732074686520636F6C6F72206F66206C696E6B7320696E2074686520746578742E
		Sub SetLinkTextColorXC(Extends ctrl As MobileTextArea, c As Color)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub setLinkTextColor Lib "Object:ctrl:MobileTextArea" (myColor As Integer)
		    setLinkTextColor(c.ToInteger)
		    
		  #Else
		    
		    #Pragma Unused c
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 536574732074686520686569676874206F662074686520546578745669657720746F206265206174206D6F7374206D61784C696E65732074616C6C2E0A0A546869732076616C7565206973207573656420666F72206865696768742063616C63756C6174696F6E206966204C61796F7574506172616D7320646F6573206E6F7420666F72636520546578745669657720746F206861766520616E206578616374206865696768742E2053657474696E6720746869732076616C7565206F76657272696465732070726576696F7573206D6178696D756D2068656967687420636F6E66696775726174696F6E732073756368206173207365744D617848656967687428696E7429206F72207365744C696E657328696E74292E
		Sub SetMaxLinesXC(Extends ctrl As MobileTextArea, maxLines As Integer)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub setMaxLines Lib "Object:ctrl:MobileTextArea" (myMaxLines As Integer)
		    setMaxLines(maxLines)
		    
		  #Else
		    
		    #Pragma Unused maxLines
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 536574732074686520686569676874206F662074686520546578745669657720746F206265206174206C65617374206D696E4C696E65732074616C6C2E0A0A546869732076616C7565206973207573656420666F72206865696768742063616C63756C6174696F6E206966204C61796F7574506172616D7320646F6573206E6F7420666F72636520546578745669657720746F206861766520616E206578616374206865696768742E2053657474696E6720746869732076616C7565206F7665727269646573206F746865722070726576696F7573206D696E696D756D2068656967687420636F6E66696775726174696F6E732073756368206173207365744D696E48656967687428696E7429206F722073657448656967687428696E74292E2073657453696E676C654C696E6528292077696C6C2073657420746869732076616C756520746F20312E
		Sub SetMinLinesXC(Extends ctrl As MobileTextArea, minLines As Integer)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub setMinLines Lib "Object:ctrl:MobileTextArea" (myMinLines As Integer)
		    setMinLines(minLines)
		    
		  #Else
		    
		    #Pragma Unused minLines
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 5365747320666C616773206F6E20746865205061696E74206265696E67207573656420746F20646973706C617920746865207465787420616E64207265666C6F777320746865207465787420696620746865792061726520646966666572656E742066726F6D20746865206F6C6420666C6167732E
		Sub SetPaintFlagsXC(Extends ctrl As MobileTextArea, flags As Integer)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub setPaintFlags Lib "Object:ctrl:MobileTextArea" (myFlags As Integer)
		    setPaintFlags(flags)
		    
		  #Else
		    
		    #Pragma Unused flags
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 4469726563746C79206368616E67652074686520636F6E74656E74207479706520696E7465676572206F6620746865207465787420766965772C20776974686F7574206D6F64696679696E6720616E79206F746865722073746174652E
		Sub SetRawInputTypeXC(Extends ctrl As MobileTextArea, type As Integer)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub setRawInputType Lib "Object:ctrl:MobileTextArea" (myType As Integer)
		    setRawInputType(type)
		    
		  #Else
		    
		    #Pragma Unused type
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 5365742074686520546578745669657720736F2074686174207768656E2069742074616B657320666F6375732C20616C6C2074686520746578742069732073656C65637465642E
		Sub SetSelectAllOnFocusXC(Extends ctrl As MobileTextArea, selectAllOnFocus As Boolean)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub setSelectAllOnFocus Lib "Object:ctrl:MobileTextArea" (mySelectAllOnFocus As Boolean)
		    setSelectAllOnFocus(selectAllOnFocus)
		    
		  #Else
		    
		    #Pragma Unused selectAllOnFocus
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 4368616E676573207468652073656C656374696F6E207374617465206F66207468697320766965772E204120766965772063616E2062652073656C6563746564206F72206E6F742E204E6F746520746861742073656C656374696F6E206973206E6F74207468652073616D6520617320666F6375732E20566965777320617265207479706963616C6C792073656C656374656420696E2074686520636F6E74657874206F6620616E204164617074657256696577206C696B65204C69737456696577206F722047726964566965773B207468652073656C65637465642076696577206973207468652076696577207468617420697320686967686C6967687465642E
		Sub SetSelectedXC(Extends ctrl As MobileTextArea, selected As Boolean)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub setSelected Lib "Object:ctrl:MobileTextArea" (mySelected As Boolean)
		    setSelected(selected)
		    
		  #Else
		    
		    #Pragma Unused selected
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 536574207468652073656C656374696F6E20616E63686F7220746F20737461727420616E64207468652073656C656374696F6E206564676520746F2073746F702E20546865204D6F62696C655465787441726561206E6565647320746F20686176652074686520666F6375732E
		Sub SetSelectionXC(Extends ctrl As MobileTextArea, start As Integer, stop As Integer)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub setSelection Lib "Object:ctrl:MobileTextArea" (myStart As Integer, myStop As Integer)
		    setSelection(start, stop)
		    
		  #Else
		    
		    #Pragma Unused start
		    #Pragma Unused stop
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 4769766573207468652074657874206120736861646F77206F66207468652073706563696669656420626C75722072616469757320616E6420636F6C6F722C20746865207370656369666965642064697374616E63652066726F6D2069747320647261776E20706F736974696F6E2E0A0A546865207465787420736861646F772070726F647563656420646F6573206E6F7420696E7465726163742077697468207468652070726F70657274696573206F6E207669657720746861742061726520726573706F6E7369626C6520666F72207265616C2074696D6520736861646F77732C20656C65766174696F6E20616E64207472616E736C6174696F6E5A2E
		Sub SetShadowLayerXC(Extends ctrl As MobileTextArea, radius As Single, dX As Single, dY As Single, c As Color)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub setShadowLayer Lib "Object:ctrl:MobileTextArea" (myRadius As Single, mydX As Single, mydY As Single, myColor As Integer)
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
		Sub SetShowSoftInputOnFocusXC(Extends ctrl As MobileTextArea, show As Boolean)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub setShowSoftInputOnFocus Lib "Object:ctrl:MobileTextArea" (myShow As Boolean)
		    setShowSoftInputOnFocus(show)
		    
		  #Else
		    
		    #Pragma Unused show
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 53657473207468652070726F70657274696573206F662074686973206669656C6420286C696E65732C20686F72697A6F6E74616C6C79207363726F6C6C696E672C207472616E73666F726D6174696F6E206D6574686F642920746F20626520666F7220612073696E676C652D6C696E6520696E7075742E
		Sub SetSingleLineXC(Extends ctrl As MobileTextArea)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub setSingleLine Lib "Object:ctrl:MobileTextArea"
		    setSingleLine
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 496620747275652C2073657473207468652070726F70657274696573206F662074686973206669656C6420286E756D626572206F66206C696E65732C20686F72697A6F6E74616C6C79207363726F6C6C696E672C207472616E73666F726D6174696F6E206D6574686F642920746F20626520666F7220612073696E676C652D6C696E6520696E7075743B2069662066616C73652C20726573746F72657320746865736520746F207468652064656661756C7420636F6E646974696F6E732E204E6F74652074686174207468652064656661756C7420636F6E646974696F6E7320617265206E6F74206E65636573736172696C792074686F73652074686174207765726520696E20656666656374207072696F722074686973206D6574686F642C20616E6420796F75206D61792077616E7420746F2072657365742074686573652070726F7065727469657320746F20796F757220637573746F6D2076616C7565732E204E6F746520746861742064756520746F20706572666F726D616E636520726561736F6E732C2062792073657474696E672073696E676C65206C696E6520666F72207468652045646974546578742C20746865206D6178696D756D2074657874206C656E6774682069732073657420746F2035303030206966206E6F206F7468657220636861726163746572206C696D69746174696F6E20617265206170706C6965642E
		Sub SetSingleLineXC(Extends ctrl As MobileTextArea, singleLine As Boolean)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub setSingleLine Lib "Object:ctrl:MobileTextArea" (mySingleLine As Boolean)
		    setSingleLine(singleLine)
		    
		  #Else
		    
		    #Pragma Unused singleLine
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 5365747320776865746865722074686520636F6E74656E74206F66207468697320766965772069732073656C65637461626C652062792074686520757365722E205468652064656661756C742069732066616C73652C206D65616E696E6720746861742074686520636F6E74656E74206973206E6F742073656C65637461626C652E
		Sub SetTextIsSelectableXC(Extends ctrl As MobileTextArea, selectable As Boolean)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub setTextIsSelectable Lib "Object:ctrl:MobileTextArea" (mySelectable As Boolean)
		    setTextIsSelectable(selectable)
		    
		  #Else
		    
		    #Pragma Unused selectable
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 536574732074686520686F72697A6F6E74616C207363616C6520666163746F7220666F7220746578742E205468652064656661756C742076616C756520697320312E302E2056616C7565732067726561746572207468616E20312E3020737472657463682074686520746578742077696465722E2056616C756573206C657373207468616E20312E30206D616B65207468652074657874206E6172726F7765722E2042792064656661756C742C20746869732076616C756520697320312E302E
		Sub SetTextScaleXXC(Extends ctrl As MobileTextArea, size As Single)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub setTextScaleX Lib "Object:ctrl:MobileTextArea" (mySize As Single)
		    setTextScaleX(size)
		    
		  #Else
		    
		    #Pragma Unused size
		    
		  #EndIf
		End Sub
	#tag EndMethod


	#tag Enum, Name = AutoLinkMaskXC, Type = Integer, Flags = &h0
		None = 0
		  Web = 1
		  eMail = 2
		  Phone = 4
		  Map = 8
		All = 15
	#tag EndEnum

	#tag Enum, Name = BreakStrategyXC, Type = Integer, Flags = &h0
		Simple = 0
		  HighQuality = 1
		Balanced = 2
	#tag EndEnum

	#tag Enum, Name = HyphenationFrequencyXC, Type = Integer, Flags = &h0
		None = 0
		  Normal = 1
		  Full = 2
		  NormalFast = 3
		FullFast = 4
	#tag EndEnum

	#tag Enum, Name = JustificationModesXC, Type = Integer, Flags = &h0
		None = 0
		InterWord = 1
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
