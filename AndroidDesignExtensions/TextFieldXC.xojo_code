#tag Module
Protected Module TextFieldXC
	#tag CompatibilityFlags = ( TargetAndroid and ( Target64Bit ) )
	#tag Method, Flags = &h0, Description = 436F6E76656E69656E6365206D6574686F6420746F20617070656E642074686520737065636966696564207465787420746F20746865205465787456696577277320646973706C6179206275666665722C20757067726164696E6720697420746F2054657874566965772E427566666572547970652E4544495441424C4520696620697420776173206E6F7420616C7265616479206564697461626C652E
		Sub AppendXC(Extends ctrl As MobileTextField, text As String)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub append Lib "Object:ctrl:MobileTextField" (myText As CString)
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
		    
		    Declare Sub append Lib "Object:ctrl:MobileTextField" (myText As CString, myStart As Integer, myStop As Integer)
		    append(text, start, stop)
		    
		  #Else
		    
		    #Pragma Unused text
		    #Pragma Unused start
		    #Pragma Unused stop
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 476574207468652074797065206F6620746865206564697461626C6520636F6E74656E742E
		Function GetInputTypeXC(Extends ctrl As MobileTextField) As Integer
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Function getInputType Lib "Object:ctrl:MobileTextField" As Integer
		    Return getInputType
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E20747275652069666620746865726520697320612073656C656374696F6E206F66206E6F6E7A65726F206C656E67746820696E736964652074686973207465787420766965772E
		Function HasSelectionXC(Extends ctrl As MobileTextField) As Boolean
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Function hasSelection Lib "Object:ctrl:MobileTextField" As Boolean
		    Return hasSelection
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E732077686574686572206F72206E6F742074686520637572736F722069732076697369626C652028617373756D696E672074686973205465787456696577206973206564697461626C65292E2054686973206D6574686F64206D61792072657475726E2066616C7365207768656E2074686520494D4520697320636F6E73756D696E672074686520696E707574206576656E20696620746865206D456469746F722E6D437572736F7256697369626C65206174747269627574652069732074727565206F722023736574437572736F7256697369626C652874727565292069732063616C6C65642E
		Function IsCursorVisibleXC(Extends ctrl As MobileTextField) As Boolean
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Function isCursorVisible Lib "Object:ctrl:MobileTextField" As Boolean
		    Return isCursorVisible
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E7320746865207374617465206F66207468652074657874497353656C65637461626C6520666C616720285365652073657454657874497353656C65637461626C652829292E20416C74686F75676820796F75206861766520746F20736574207468697320666C616720746F20616C6C6F7720757365727320746F2073656C65637420616E6420636F7079207465787420696E2061206E6F6E2D6564697461626C652054657874566965772C2074686520636F6E74656E74206F6620616E2045646974546578742063616E20616C776179732062652073656C65637465642C20696E646570656E64656E746C79206F66207468652076616C7565206F66207468697320666C61672E
		Function IsTextSelectableXC(Extends ctrl As MobileTextField) As Boolean
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Function isTextSelectable Lib "Object:ctrl:MobileTextField" As Boolean
		    Return isTextSelectable
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 53657420746865205465787456696577277320656C6567616E7420686569676874206D65747269637320666C61672E20546869732073657474696E672073656C6563747320666F6E742076617269616E747320746861742068617665206E6F74206265656E20636F6D70616374656420746F20666974204C6174696E2D626173656420766572746963616C206D6574726963732C20616E6420616C736F20696E6372656173657320746F7020616E6420626F74746F6D20626F756E647320746F2070726F76696465206D6F72652073706163652E
		Sub SetElegantTextHeightXC(Extends ctrl As MobileTextField, elegant As Boolean)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub setElegantTextHeight Lib "Object:ctrl:MobileTextField" (myElegant As Boolean)
		    setElegantTextHeight(elegant)
		    
		  #Else
		    
		    #Pragma Unused elegant
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 53657473207468652072696768742D68616E6420636F6D706F756E64206472617761626C65206F662074686520546578745669657720746F2074686520226572726F72222069636F6E20616E64207365747320616E206572726F72206D65737361676520746861742077696C6C20626520646973706C6179656420696E206120706F707570207768656E207468652054657874566965772068617320666F6375732E205468652069636F6E20616E64206572726F72206D6573736167652077696C6C20626520726573657420746F206E756C6C207768656E20616E79206B6579206576656E7473206361757365206368616E67657320746F20746865205465787456696577277320746578742E20496620746865206572726F72206973206E756C6C2C20746865206572726F72206D65737361676520616E642069636F6E2077696C6C20626520636C65617265642E
		Sub SetErrorXC(Extends ctrl As MobileTextField, error As CString)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub setError Lib "Object:ctrl:MobileTextField" (myError As CString)
		    setError(error)
		    
		  #Else
		    
		    #Pragma Unused error
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 536574732074686520636F6C6F72207573656420746F20646973706C6179207468652073656C656374696F6E20686967686C696768742E
		Sub SetHighlightColorXC(Extends ctrl As MobileTextField, c As Color)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub setHighlightColor Lib "Object:ctrl:MobileTextField" (myColor As Integer)
		    setHighlightColor(c.ToInteger)
		    
		  #Else
		    
		    #Pragma Unused c
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 536574207468652074797065206F662074686520636F6E74656E742077697468206120636F6E7374616E7420617320646566696E656420666F7220456469746F72496E666F23696E707574547970652E20546869732077696C6C2074616B652063617265206F66206368616E67696E6720746865206B6579206C697374656E65722C2062792063616C6C696E67207365744B65794C697374656E657228616E64726F69642E746578742E6D6574686F642E4B65794C697374656E6572292C20746F206D617463682074686520676976656E20636F6E74656E7420747970652E2049662074686520676976656E20636F6E74656E74207479706520697320456469746F72496E666F23545950455F4E554C4C207468656E206120736F6674206B6579626F6172642077696C6C206E6F7420626520646973706C6179656420666F722074686973207465787420766965772E204E6F7465207468617420746865206D6178696D756D206E756D626572206F6620646973706C61796564206C696E65732028736565207365744D61784C696E657328696E7429292077696C6C206265206D6F64696669656420696620796F75206368616E67652074686520456469746F72496E666F23545950455F544558545F464C41475F4D554C54495F4C494E4520666C6167206F662074686520696E70757420747970652E
		Sub SetInputTypeXC(Extends ctrl As MobileTextField, type As Integer)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub setInputType Lib "Object:ctrl:MobileTextField" (myType As Integer)
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
		    
		    Declare Sub setLetterSpacing Lib "Object:ctrl:MobileTextField" (myLetterSpacing As Single)
		    setLetterSpacing(letterSpacing)
		    
		  #Else
		    
		    #Pragma Unused letterSpacing
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 4368616E676573207468652073656C656374696F6E207374617465206F66207468697320766965772E204120766965772063616E2062652073656C6563746564206F72206E6F742E204E6F746520746861742073656C656374696F6E206973206E6F74207468652073616D6520617320666F6375732E20566965777320617265207479706963616C6C792073656C656374656420696E2074686520636F6E74657874206F6620616E204164617074657256696577206C696B65204C69737456696577206F722047726964566965773B207468652073656C65637465642076696577206973207468652076696577207468617420697320686967686C6967687465642E
		Sub SetSelectedXC(Extends ctrl As MobileTextField, selected As Boolean)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub setSelected Lib "Object:ctrl:MobileTextField" (mySelected As Boolean)
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
		    
		    Declare Sub setSelection Lib "Object:ctrl:MobileTextField" (myStart As Integer, myStop As Integer)
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
		    
		    Declare Sub setShadowLayer Lib "Object:ctrl:MobileTextField" (myRadius As Single, mydX As Single, mydY As Single, myColor As Integer)
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
		    
		    Declare Sub setShowSoftInputOnFocus Lib "Object:ctrl:MobileTextField" (myShow As Boolean)
		    setShowSoftInputOnFocus(show)
		    
		  #Else
		    
		    #Pragma Unused show
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 5365747320776865746865722074686520636F6E74656E74206F66207468697320766965772069732073656C65637461626C652062792074686520757365722E205468652064656661756C742069732066616C73652C206D65616E696E6720746861742074686520636F6E74656E74206973206E6F742073656C65637461626C652E
		Sub SetTextIsSelectableXC(Extends ctrl As MobileTextField, selectable As Boolean)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub setTextIsSelectable Lib "Object:ctrl:MobileTextField" (mySelectable As Boolean)
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
		    
		    Declare Sub setTint Lib "Object:ctrl:MobileTextField" Alias "getTextCursorDrawable()!!.setTint" (myTintColor As Integer)
		    setTint(c.ToInteger)
		    
		  #Else
		    
		    #Pragma Unused c
		    
		  #EndIf
		End Sub
	#tag EndMethod


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
