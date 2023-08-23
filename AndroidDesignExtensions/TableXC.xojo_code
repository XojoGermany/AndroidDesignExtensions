#tag Module
Protected Module TableXC
	#tag CompatibilityFlags = ( TargetAndroid and ( Target64Bit ) )
	#tag Method, Flags = &h0, Description = 57686574686572207468652064726177696E67206F6620746865206469766964657220666F722068656164657220766965777320697320656E61626C65642E
		Function AreHeaderDividersEnabledXC(Extends ctrl As AndroidMobileTable) As Boolean
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Function areHeaderDividersEnabled Lib "Object:ctrl:AndroidMobileTable" As Boolean
		    Return areHeaderDividersEnabled
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E732074686520706F736974696F6E2077697468696E207468652061646170746572277320646174612073657420666F7220746865206669727374206974656D20646973706C61796564206F6E2073637265656E2E
		Function GetFirstVisiblePositionXC(Extends ctrl As AndroidMobileTable) As Integer
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Function getFirstVisiblePosition Lib "Object:ctrl:AndroidMobileTable" As Integer
		    Return getFirstVisiblePosition
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetItemIdAtPositionXC(Extends ctrl As AndroidMobileTable, position As Integer) As Int64
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Function getItemIdAtPosition Lib "Object:ctrl:AndroidMobileTable" (myPosition As Integer) As Int64
		    Return getItemIdAtPosition(position)
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E732074686520706F736974696F6E2077697468696E207468652061646170746572277320646174612073657420666F7220746865206C617374206974656D20646973706C61796564206F6E2073637265656E2E
		Function GetLastVisiblePositionXC(Extends ctrl As AndroidMobileTable) As Integer
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Function getLastVisiblePosition Lib "Object:ctrl:AndroidMobileTable" As Integer
		    Return getLastVisiblePosition
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 546865206D6178696D756D20616D6F756E742061206C69737420766965772077696C6C207363726F6C6C20696E20726573706F6E736520746F20616E206172726F77206576656E742E
		Function GetMaxScrollAmountXC(Extends ctrl As AndroidMobileTable) As Integer
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Function getMaxScrollAmount Lib "Object:ctrl:AndroidMobileTable" As Integer
		    Return getMaxScrollAmount
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 54686520696420636F72726573706F6E64696E6720746F207468652063757272656E746C792073656C6563746564206974656D2C206F7220494E56414C49445F524F575F4944206966206E6F7468696E672069732073656C65637465642E
		Function GetSelectedItemIdXC(Extends ctrl As AndroidMobileTable) As Int64
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Function getSelectedItemId Lib "Object:ctrl:AndroidMobileTable" As Int64
		    Return getSelectedItemId
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E2074686520706F736974696F6E206F66207468652063757272656E746C792073656C6563746564206974656D2077697468696E2074686520616461707465722773206461746120736574207374617274696E6720617420302C206F7220494E56414C49445F504F534954494F4E206966207468657265206973206E6F7468696E672073656C65637465642E
		Function GetSelectedItemPositionXC(Extends ctrl As AndroidMobileTable) As Integer
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Function getSelectedItemPosition Lib "Object:ctrl:AndroidMobileTable" As Integer
		    Return getSelectedItemPosition
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E73207468652063757272656E74207472616E736372697074206D6F64652E
		Function GetTranscriptModeXC(Extends ctrl As AndroidMobileTable) As TranscriptModes
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Function getTranscriptMode Lib "Object:ctrl:AndroidMobileTable" As Integer
		    Return TranscriptModes(getTranscriptMode)
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E7320746865207769647468206F662074686520766572746963616C207363726F6C6C6261722E
		Function GetVerticalScrollbarWidthXC(Extends ctrl As AndroidMobileTable) As Integer
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Function getVerticalScrollbarWidth Lib "Object:ctrl:AndroidMobileTable" As Integer
		    Return getVerticalScrollbarWidth
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 43617573657320616C6C2074686520766965777320746F2062652072656275696C7420616E64207265647261776E2E
		Sub InvalidateViewsXC(Extends ctrl As AndroidMobileTable)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub invalidateViews Lib "Object:ctrl:AndroidMobileTable"
		    invalidateViews
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E732074727565206966207468652066617374207363726F6C6C65722069732073657420746F20616C776179732073686F77206F6E207468697320766965772E
		Function IsFastScrollAlwaysVisibleXC(Extends ctrl As AndroidMobileTable) As Boolean
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Function isFastScrollAlwaysVisible Lib "Object:ctrl:AndroidMobileTable" As Boolean
		    Return isFastScrollAlwaysVisible
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E732074727565206966207468652066617374207363726F6C6C657220697320656E61626C65642E
		Function IsFastScrollEnabledXC(Extends ctrl As AndroidMobileTable) As Boolean
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Function isFastScrollEnabled Lib "Object:ctrl:AndroidMobileTable" As Boolean
		    Return isFastScrollEnabled
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 496E64696361746573207768657468657220746865206368696C6472656E27732064726177696E67206361636865206973207573656420647572696E672061207363726F6C6C2E2042792064656661756C742C207468652064726177696E6720636163686520697320656E61626C65642062757420746869732077696C6C20636F6E73756D65206D6F7265206D656D6F72792E
		Function IsScrollingCacheEnabledXC(Extends ctrl As AndroidMobileTable) As Boolean
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Function isScrollingCacheEnabled Lib "Object:ctrl:AndroidMobileTable" As Boolean
		    Return isScrollingCacheEnabled
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E73207468652063757272656E74207374617465206F66207468652066617374207363726F6C6C20666561747572652E
		Function IsSmoothScrollbarEnabledXC(Extends ctrl As AndroidMobileTable) As Boolean
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Function isSmoothScrollbarEnabled Lib "Object:ctrl:AndroidMobileTable" As Boolean
		    Return isSmoothScrollbarEnabled
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 4D617073206120706F696E7420746F206120706F736974696F6E20696E20746865206C6973742E
		Function PointToPositionXC(Extends ctrl As AndroidMobileTable, x As Integer, y As Integer) As Integer
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Function pointToPosition Lib "Object:ctrl:AndroidMobileTable" (myX As Integer, myY As Integer) As Integer
		    Return pointToPosition(x, y)
		    
		  #Else
		    
		    #Pragma Unused x
		    #Pragma Unused y
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 4D617073206120706F696E7420746F20612074686520726F776C64206F6620746865206974656D20776869636820696E7465727365637473207468617420706F696E742E0A0A54686520726F776C64206F6620746865206974656D20776869636820636F6E7461696E73207468652073706563696669656420706F696E742C206F722041646170746572566965772E20494E56414C49445F20524F575F49442069662074686520706F696E7420646F6573206E6F7420696E7465727365637420616E206974656D2E
		Function PointToRowIDXC(Extends ctrl As AndroidMobileTable, x As Integer, y As Integer) As Int64
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Function pointToRowId Lib "Object:ctrl:AndroidMobileTable" (myX As Integer, myY As Integer) As Int64
		    Return pointToRowId(x, y)
		    
		  #Else
		    
		    #Pragma Unused x
		    #Pragma Unused y
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 43616C6C6564207768656E2061206368696C6420646F6573206E6F742077616E74207468697320706172656E7420616E642069747320616E636573746F727320746F20696E7465726365707420746F756368206576656E74732077697468205669657747726F7570236F6E496E74657263657074546F7563684576656E74284D6F74696F6E4576656E74292E0A0A5468697320706172656E742073686F756C64207061737320746869732063616C6C206F6E746F2069747320706172656E74732E205468697320706172656E74206D757374206F6265792074686973207265717565737420666F7220746865206475726174696F6E206F662074686520746F7563682028746861742069732C206F6E6C7920636C6561722074686520666C6167206166746572207468697320706172656E742068617320726563656976656420616E207570206F7220612063616E63656C2E
		Sub RequestDisallowInterceptTouchEventXC(Extends ctrl As AndroidMobileTable, disallowIntercept As Boolean)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub requestDisallowInterceptTouchEvent Lib "Object:ctrl:AndroidMobileTable" (myDisallowIntercept As Boolean)
		    requestDisallowInterceptTouchEvent(disallowIntercept)
		    
		  #Else
		    
		    #Pragma Unused disallowIntercept
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 5363726F6C6C7320746865206C697374206974656D732077697468696E207468652076696577206279206120737065636966696564206E756D626572206F6620706978656C732E0A0A5468652061637475616C20616D6F756E74206F66207363726F6C6C2069732063617070656420627920746865206C69737420636F6E74656E742076696577706F72742068656967687420776869636820697320746865206C69737420686569676874206D696E757320746F7020616E6420626F74746F6D2070616464696E6773206D696E7573206F6E6520706978656C2E
		Sub ScrollListByXC(Extends ctrl As AndroidMobileTable, y As Integer)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub scrollListBy Lib "Object:ctrl:AndroidMobileTable" (myY As Integer)
		    scrollListBy(y)
		    
		  #Else
		    
		    #Pragma Unused y
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 446566696E6573207468652063686F696365206265686176696F7220666F7220746865204C6973742E2042792064656661756C742C204C6973747320646F206E6F74206861766520616E792063686F696365206265686176696F72202843484F4943455F4D4F44455F4E4F4E45292E2042792073657474696E67207468652063686F6963654D6F646520746F2043484F4943455F4D4F44455F53494E474C452C20746865204C69737420616C6C6F777320757020746F206F6E65206974656D20746F20626520696E20612063686F73656E2073746174652E2042792073657474696E67207468652063686F6963654D6F646520746F2043484F4943455F4D4F44455F4D554C5449504C452C20746865206C69737420616C6C6F777320616E79206E756D626572206F66206974656D7320746F2062652063686F73656E2E
		Sub SetChoiceModeXC(Extends ctrl As AndroidMobileTable, choiceMode As Integer)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub setChoiceMode Lib "Object:ctrl:AndroidMobileTable" (myChoiceMode As Integer)
		    setChoiceMode(choiceMode)
		    
		  #Else
		    
		    #Pragma Unused choiceMode
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 436F6E74726F6C732077686574686572207468652073656C656374696F6E20686967686C69676874206472617761626C652073686F756C6420626520647261776E206F6E20746F70206F6620746865206974656D206F7220626568696E642069742E
		Sub SetDrawSelectorOnTopXC(Extends ctrl As AndroidMobileTable, onTop As Boolean)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub setDrawSelectorOnTop Lib "Object:ctrl:AndroidMobileTable" (myOnTop As Boolean)
		    setDrawSelectorOnTop(onTop)
		    
		  #Else
		    
		    #Pragma Unused onTop
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 5365742077686574686572206F72206E6F74207468652066617374207363726F6C6C65722073686F756C6420616C776179732062652073686F776E20696E20706C616365206F6620746865207374616E64617264207363726F6C6C20626172732E20546869732077696C6C20656E61626C652066617374207363726F6C6C696E67206966206974206973206E6F7420616C726561647920656E61626C65642E0A0A46617374207363726F6C6C6572732073686F776E20696E2074686973207761792077696C6C206E6F742066616465206F757420616E642077696C6C2062652061207065726D616E656E7420666978747572652077697468696E20746865206C6973742E2054686973206973206265737420636F6D62696E6564207769746820616E20696E736574207363726F6C6C20626172207374796C6520746F20656E7375726520746865207363726F6C6C2062617220646F6573206E6F74206F7665726C617020636F6E74656E742E
		Sub SetFastScrollAlwaysVisibleXC(Extends ctrl As AndroidMobileTable, alwaysShow As Boolean)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub setFastScrollAlwaysVisible Lib "Object:ctrl:AndroidMobileTable" (myAlwaysShow As Boolean)
		    setFastScrollAlwaysVisible(alwaysShow)
		    
		  #Else
		    
		    #Pragma Unused alwaysShow
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 53706563696669657320776865746865722066617374207363726F6C6C696E6720697320656E61626C6564206F722064697361626C65642E0A0A5768656E2066617374207363726F6C6C696E6720697320656E61626C65642C2074686520757365722063616E20717569636B6C79207363726F6C6C207468726F756768206C69737473206279206472616767696E67207468652066617374207363726F6C6C207468756D622E0A0A4966207468652061646170746572206261636B696E672074686973206C69737420696D706C656D656E74732053656374696F6E496E64657865722C207468652066617374207363726F6C6C65722077696C6C20646973706C61792073656374696F6E20686561646572207072657669657773206173207468652075736572207363726F6C6C732E204164646974696F6E616C6C792C2074686520757365722077696C6C2062652061626C6520746F20717569636B6C79206A756D70206265747765656E2073656374696F6E732062792074617070696E6720616C6F6E6720746865206C656E677468206F6620746865207363726F6C6C206261722E
		Sub SetFastScrollEnabledXC(Extends ctrl As AndroidMobileTable, enabled As Boolean)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub setFastScrollEnabled Lib "Object:ctrl:AndroidMobileTable" (myEnabled As Boolean)
		    setFastScrollEnabled(enabled)
		    
		  #Else
		    
		    #Pragma Unused enabled
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 456E61626C6573206F722064697361626C6573207468652064726177696E67206F6620746865206469766964657220666F72206865616465722076696577732E
		Sub SetHeaderDividersEnabledXC(Extends ctrl As AndroidMobileTable, headerDividersEnabled As Boolean)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub setHeaderDividersEnabled Lib "Object:ctrl:AndroidMobileTable" (myHeaderDividersEnabled As Boolean)
		    setHeaderDividersEnabled(headerDividersEnabled)
		    
		  #Else
		    
		    #Pragma Unused headerDividersEnabled
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 536574732074686520636865636B6564207374617465206F66207468652073706563696669656420706F736974696F6E2E20546865206973206F6E6C792076616C6964206966207468652063686F696365206D6F646520686173206265656E2073657420746F2043484F4943455F4D4F44455F53494E474C45206F722043484F4943455F4D4F44455F4D554C5449504C452E
		Sub SetItemCheckedXC(Extends ctrl As AndroidMobileTable, position As Integer, value As Boolean)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub setItemChecked Lib "Object:ctrl:AndroidMobileTable" (myPosition As Integer, myValue As Boolean)
		    setItemChecked(position, value)
		    
		  #Else
		    
		    #Pragma Unused position
		    #Pragma Unused value
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 456E61626C6573206F722064697361626C657320746865206368696C6472656E27732064726177696E6720636163686520647572696E672061207363726F6C6C2E2042792064656661756C742C207468652064726177696E6720636163686520697320656E61626C65642062757420746869732077696C6C20757365206D6F7265206D656D6F72792E205768656E20746865207363726F6C6C696E6720636163686520697320656E61626C65642C207468652063616368657320617265206B65707420616674657220746865206669727374207363726F6C6C696E672E20596F752063616E206D616E75616C6C7920636C656172207468652063616368652062792063616C6C696E67205669657747726F75702E7365744368696C6472656E44726177696E674361636865456E61626C656428626F6F6C65616E292E
		Sub SetScrollingCacheEnabledXC(Extends ctrl As AndroidMobileTable, enabled As Boolean)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub setScrollingCacheEnabled Lib "Object:ctrl:AndroidMobileTable" (myEnabled As Boolean)
		    setScrollingCacheEnabled(enabled)
		    
		  #Else
		    
		    #Pragma Unused enabled
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 536574207468652073656C656374696F6E20746F20626520746865206669727374206C697374206974656D20616674657220746865206865616465722076696577732E
		Sub SetSelectionAfterHeaderViewXC(Extends ctrl As AndroidMobileTable)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub setSelectionAfterHeaderView Lib "Object:ctrl:AndroidMobileTable"
		    setSelectionAfterHeaderView
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 53657473207468652073656C6563746564206974656D20616E6420706F736974696F6E73207468652073656C656374696F6E207920706978656C732066726F6D2074686520746F702065646765206F6620746865204C697374566965772E2028496620696E20746F756368206D6F64652C20746865206974656D2077696C6C206E6F742062652073656C6563746564206275742069742077696C6C207374696C6C20626520706F736974696F6E656420617070726F7072696174656C792E29
		Sub SetSelectionFromTopXC(Extends ctrl As AndroidMobileTable, position As Integer, y As Integer)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub setSelectionFromTop Lib "Object:ctrl:AndroidMobileTable" (myPosition As Integer, myY As Integer)
		    setSelectionFromTop(position, y)
		    
		  #Else
		    
		    #Pragma Unused position
		    #Pragma Unused y
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 5768656E20736D6F6F7468207363726F6C6C62617220697320656E61626C65642C2074686520706F736974696F6E20616E642073697A65206F6620746865207363726F6C6C626172207468756D6220697320636F6D7075746564206261736564206F6E20746865206E756D626572206F662076697369626C6520706978656C7320696E207468652076697369626C65206974656D732E205468697320686F776576657220617373756D6573207468617420616C6C206C697374206974656D732068617665207468652073616D65206865696768742E20496620796F75207573652061206C69737420696E207768696368206974656D73206861766520646966666572656E7420686569676874732C20746865207363726F6C6C6261722077696C6C206368616E676520617070656172616E6365206173207468652075736572207363726F6C6C73207468726F75676820746865206C6973742E20546F2061766F696420746869732069737375652C20796F75206E65656420746F2064697361626C6520746869732070726F70657274792E205768656E20736D6F6F7468207363726F6C6C6261722069732064697361626C65642C2074686520706F736974696F6E20616E642073697A65206F6620746865207363726F6C6C626172207468756D6220697320626173656420736F6C656C79206F6E20746865206E756D626572206F66206974656D7320696E20746865206164617074657220616E642074686520706F736974696F6E206F66207468652076697369626C65206974656D7320696E736964652074686520616461707465722E20546869732070726F7669646573206120737461626C65207363726F6C6C626172206173207468652075736572206E6176696761746573207468726F7567682061206C697374206F66206974656D7320776974682076617279696E6720686569676874732E
		Sub SetSmoothScrollbarEnabledXC(Extends ctrl As AndroidMobileTable, enabled As Boolean)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub setSmoothScrollbarEnabled Lib "Object:ctrl:AndroidMobileTable" (myEnabled As Boolean)
		    setSmoothScrollbarEnabled(enabled)
		    
		  #Else
		    
		    #Pragma Unused enabled
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 5768656E20737461636B2066726F6D20626F74746F6D2069732073657420746F20747275652C20746865206C6973742066696C6C732069747320636F6E74656E74207374617274696E672066726F6D2074686520626F74746F6D206F662074686520766965772E
		Sub SetStackFromBottomXC(Extends ctrl As AndroidMobileTable, stackFromBottom As Boolean)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub setStackFromBottom Lib "Object:ctrl:AndroidMobileTable" (myStackFromBottom As Boolean)
		    setStackFromBottom(stackFromBottom)
		    
		  #Else
		    
		    #Pragma Unused stackFromBottom
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 5075747320746865206C697374206F72206772696420696E746F207472616E736372697074206D6F64652E20496E2074686973206D6F646520746865206C697374206F7220677269642077696C6C20616C77617973207363726F6C6C20746F2074686520626F74746F6D20746F2073686F77206E6577206974656D732E
		Sub SetTranscriptModeXC(Extends ctrl As AndroidMobileTable, mode As TranscriptModes)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub setTranscriptMode Lib "Object:ctrl:AndroidMobileTable" (myMode As Integer)
		    setTranscriptMode(Integer(mode))
		    
		  #Else
		    
		    #Pragma Unused mode
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 536D6F6F74686C79207363726F6C6C2062792064697374616E636520706978656C73206F766572206475726174696F6E206D696C6C697365636F6E64732E
		Sub SmoothScrollByXC(Extends ctrl As AndroidMobileTable, distance As Integer, duration As Integer)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub smoothScrollBy Lib "Object:ctrl:AndroidMobileTable" (myDistance As Integer, myDuration As Integer)
		    smoothScrollBy(distance, duration)
		    
		  #Else
		    
		    #Pragma Unused distance
		    #Pragma Unused duration
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 536D6F6F74686C79207363726F6C6C20746F2074686520737065636966696564206164617074657220706F736974696F6E2E2054686520766965772077696C6C207363726F6C6C207375636820746861742074686520696E6469636174656420706F736974696F6E20697320646973706C61796564206F666673657420706978656C732062656C6F772074686520746F702065646765206F662074686520766965772E204966207468697320697320696D706F737369626C652C2028652E672E20746865206F666673657420776F756C64207363726F6C6C20746865206669727374206F72206C617374206974656D206265796F6E642074686520626F756E646172696573206F6620746865206C697374292069742077696C6C2067657420617320636C6F736520617320706F737369626C652E
		Sub SmoothScrollToPositionFromTopXC(Extends ctrl As AndroidMobileTable, position As Integer, offset As Integer)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub smoothScrollToPositionFromTop Lib "Object:ctrl:AndroidMobileTable" (myPosition As Integer, myOffset As Integer)
		    smoothScrollToPositionFromTop(position, offset)
		    
		  #Else
		    
		    #Pragma Unused position
		    #Pragma Unused offset
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 536D6F6F74686C79207363726F6C6C20746F2074686520737065636966696564206164617074657220706F736974696F6E2E2054686520766965772077696C6C207363726F6C6C207375636820746861742074686520696E6469636174656420706F736974696F6E20697320646973706C61796564206F666673657420706978656C732062656C6F772074686520746F702065646765206F662074686520766965772E204966207468697320697320696D706F737369626C652C2028652E672E20746865206F666673657420776F756C64207363726F6C6C20746865206669727374206F72206C617374206974656D206265796F6E642074686520626F756E646172696573206F6620746865206C697374292069742077696C6C2067657420617320636C6F736520617320706F737369626C652E20546865207363726F6C6C2077696C6C2074616B65206475726174696F6E206D696C6C697365636F6E647320746F20636F6D706C6574652E
		Sub SmoothScrollToPositionFromTopXC(Extends ctrl As AndroidMobileTable, position As Integer, offset As Integer, duration As Integer)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub smoothScrollToPositionFromTop Lib "Object:ctrl:AndroidMobileTable" (myPosition As Integer, myOffset As Integer, myDuration As Integer)
		    smoothScrollToPositionFromTop(position, offset, duration)
		    
		  #Else
		    
		    #Pragma Unused position
		    #Pragma Unused offset
		    #Pragma Unused duration
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 536D6F6F74686C79207363726F6C6C20746F2074686520737065636966696564206164617074657220706F736974696F6E2E2054686520766965772077696C6C207363726F6C6C207375636820746861742074686520696E6469636174656420706F736974696F6E20697320646973706C617965642E
		Sub SmoothScrollToPositionXC(Extends ctrl As AndroidMobileTable, position As Integer)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub smoothScrollToPosition Lib "Object:ctrl:AndroidMobileTable" (myPosition As Integer)
		    smoothScrollToPosition(position)
		    
		  #Else
		    
		    #Pragma Unused position
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 536D6F6F74686C79207363726F6C6C20746F2074686520737065636966696564206164617074657220706F736974696F6E2E2054686520766965772077696C6C207363726F6C6C207375636820746861742074686520696E6469636174656420706F736974696F6E20697320646973706C617965642C206275742069742077696C6C2073746F70206561726C79206966207363726F6C6C696E67206675727468657220776F756C64207363726F6C6C20626F756E64506F736974696F6E206F7574206F6620766965772E
		Sub SmoothScrollToPositionXC(Extends ctrl As AndroidMobileTable, position As Integer, boundPosition As Integer)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub smoothScrollToPosition Lib "Object:ctrl:AndroidMobileTable" (myPosition As Integer, myBoundPosition As Integer)
		    smoothScrollToPosition(position, boundPosition)
		    
		  #Else
		    
		    #Pragma Unused position
		    #Pragma Unused boundPosition
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52756E7320746865206C61796F757420616E696D6174696F6E2E2043616C6C696E672074686973206D6574686F6420747269676765727320612072656C61796F7574206F66207468697320766965772067726F75702E
		Sub StartLayoutAnimationXC(Extends ctrl As AndroidMobileTable)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub startLayoutAnimation Lib "Object:ctrl:AndroidMobileTable"
		    startLayoutAnimation
		    
		  #EndIf
		End Sub
	#tag EndMethod


	#tag Enum, Name = TranscriptModes, Type = Integer, Flags = &h0
		Disabled = 0
		  Normal = 1
		AllwaysScroll = 2
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
