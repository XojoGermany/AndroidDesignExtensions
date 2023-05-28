#tag Module
Protected Module HTMLViewer
	#tag CompatibilityFlags = ( TargetAndroid and ( Target64Bit ) )
	#tag Method, Flags = &h0, Description = 4765747320776865746865722074686520706167652063616E20676F206261636B206F7220666F72776172642074686520676976656E206E756D626572206F662073746570732E
		Function CanGoBackOrForwardXC(Extends ctrl As MobileHTMLViewer, steps As Integer) As Boolean
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Function canGoBackOrForward Lib "Object:ctrl:MobileHTMLViewer" (mySteps As Integer) As Boolean
		    Return canGoBackOrForward(steps)
		    
		  #Else
		    
		    #Pragma Unused steps
		    
		    Return False
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 47657473207768657468657220746869732057656256696577206861732061206261636B20686973746F7279206974656D2E
		Function CanGoBackXC(Extends ctrl As MobileHTMLViewer) As Boolean
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Function canGoBack Lib "Object:ctrl:MobileHTMLViewer" As Boolean
		    Return canGoBack
		    
		  #Else
		    
		    Return False
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 4765747320776865746865722074686973205765625669657720686173206120666F727761726420686973746F7279206974656D2E
		Function CanGoForwardXC(Extends ctrl As MobileHTMLViewer) As Boolean
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Function canGoForward Lib "Object:ctrl:MobileHTMLViewer" As Boolean
		    Return canGoForward
		    
		  #Else
		    
		    Return False
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 436C6561727320746865207265736F757263652063616368652E204E6F7465207468617420746865206361636865206973207065722D6170706C69636174696F6E2C20736F20746869732077696C6C20636C6561722074686520636163686520666F7220616C6C20576562566965777320757365642E
		Sub ClearCacheXC(Extends ctrl As MobileHTMLViewer, includeDiskFiles As Boolean)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub clearCache Lib "Object:ctrl:MobileHTMLViewer" (myIncludeDiskFiles As Boolean)
		    clearCache(includeDiskFiles)
		    
		  #Else
		    
		    #Pragma Unused includeDiskFiles
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52656D6F76657320746865206175746F636F6D706C65746520706F7075702066726F6D207468652063757272656E746C7920666F637573656420666F726D206669656C642C2069662070726573656E742E204E6F74652074686973206F6E6C7920616666656374732074686520646973706C6179206F6620746865206175746F636F6D706C65746520706F7075702C20697420646F6573206E6F742072656D6F766520616E7920736176656420666F726D20646174612066726F6D2074686973205765625669657727732073746F72652E20546F20646F20746861742C207573652057656256696577446174616261736523636C656172466F726D446174612E
		Sub ClearFormDataXC(Extends ctrl As MobileHTMLViewer)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub clearFormData Lib "Object:ctrl:MobileHTMLViewer"
		    clearFormData
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 54656C6C732074686973205765625669657720746F20636C6561722069747320696E7465726E616C206261636B2F666F7277617264206C6973742E
		Sub ClearHistoryXC(Extends ctrl As MobileHTMLViewer)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub clearHistory Lib "Object:ctrl:MobileHTMLViewer"
		    clearHistory
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 436C656172732074686520686967686C69676874696E6720737572726F756E64696E672074657874206D61746368657320637265617465642062792066696E64416C6C4173796E6328537472696E67292E
		Sub ClearMatchesXC(Extends ctrl As MobileHTMLViewer)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub clearMatches Lib "Object:ctrl:MobileHTMLViewer"
		    clearMatches
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 436C65617273207468652053534C20707265666572656E636573207461626C652073746F72656420696E20726573706F6E736520746F2070726F63656564696E6720776974682053534C206365727469666963617465206572726F72732E
		Sub ClearSSLPreferencesXC(Extends ctrl As MobileHTMLViewer)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub clearSslPreferences Lib "Object:ctrl:MobileHTMLViewer"
		    clearSslPreferences
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 46696E647320616C6C20696E7374616E636573206F662066696E64206F6E20746865207061676520616E6420686967686C6967687473207468656D2C206173796E6368726F6E6F75736C792E204E6F74696669657320616E7920726567697374657265642046696E644C697374656E65722E20537563636573736976652063616C6C7320746F20746869732077696C6C2063616E63656C20616E792070656E64696E672073656172636865732E
		Sub FindAllAsyncXC(Extends ctrl As MobileHTMLViewer, find As String)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub findAllAsync Lib "Object:ctrl:MobileHTMLViewer" (myFind As CString)
		    findAllAsync(find)
		    
		  #Else
		    
		    #Pragma Unused find
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 486967686C696768747320616E64207363726F6C6C7320746F20746865206E657874206D6174636820666F756E642062792066696E64416C6C4173796E6328537472696E67292C207772617070696E672061726F756E64207061676520626F756E646172696573206173206E65636573736172792E204E6F74696669657320616E7920726567697374657265642046696E644C697374656E65722E2049662066696E64416C6C4173796E63286A6176612E6C616E672E537472696E672920686173206E6F74206265656E2063616C6C6564207965742C206F7220696620636C6561724D617463686573282920686173206265656E2063616C6C65642073696E636520746865206C6173742066696E64206F7065726174696F6E2C20746869732066756E6374696F6E20646F6573206E6F7468696E672E
		Sub FindNextXC(Extends ctrl As MobileHTMLViewer, forward As Boolean)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub findNext Lib "Object:ctrl:MobileHTMLViewer" (myForward As Boolean)
		    findNext(forward)
		    
		  #Else
		    
		    #Pragma Unused forward
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 476574732074686520686569676874206F66207468652048544D4C20636F6E74656E742E
		Function GetContentHeightXC(Extends ctrl As MobileHTMLViewer) As Integer
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Function getContentHeight Lib "Object:ctrl:MobileHTMLViewer" As Integer
		    Return getContentHeight
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 47657473207468652070726F677265737320666F72207468652063757272656E7420706167652E
		Function GetProgressXC(Extends ctrl As MobileHTMLViewer) As Integer
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Function getProgress Lib "Object:ctrl:MobileHTMLViewer" As Integer
		    Return getProgress
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E2077686574686572207468697320576562566965772072657175657374732061207072696F72697479206F662052454E44455245525F5052494F524954595F574149564544207768656E206E6F742076697369626C652E
		Function GetRendererPriorityWaivedWhenNotVisibleXC(Extends ctrl As MobileHTMLViewer) As Boolean
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Function getRendererPriorityWaivedWhenNotVisible Lib "Object:ctrl:MobileHTMLViewer" As Boolean
		    Return getRendererPriorityWaivedWhenNotVisible
		    
		  #Else
		    
		    Return False
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 47657420746865207265717565737465642072656E6465726572207072696F7269747920666F72207468697320576562566965772E
		Function GetRendererRequestedPriorityXC(Extends ctrl As MobileHTMLViewer) As Integer
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Function getRendererRequestedPriority Lib "Object:ctrl:MobileHTMLViewer" As Integer
		    Return getRendererRequestedPriority
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 476F657320746F2074686520686973746F7279206974656D207468617420697320746865206E756D626572206F6620737465707320617761792066726F6D207468652063757272656E74206974656D2E205374657073206973206E65676174697665206966206261636B7761726420616E6420706F73697469766520696620666F72776172642E
		Sub GoBackOrForwardXC(Extends ctrl As MobileHTMLViewer, steps As Integer)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub goBackOrForward Lib "Object:ctrl:MobileHTMLViewer" (mySteps As Integer)
		    goBackOrForward(steps)
		    
		  #Else
		    
		    #Pragma Unused steps
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 476F6573206261636B20696E2074686520686973746F7279206F66207468697320576562566965772E
		Sub GoBackXC(Extends ctrl As MobileHTMLViewer)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub goBack Lib "Object:ctrl:MobileHTMLViewer"
		    goBack
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 476F657320666F727761726420696E2074686520686973746F7279206F66207468697320576562566965772E
		Sub GoForwardXC(Extends ctrl As MobileHTMLViewer)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub goForward Lib "Object:ctrl:MobileHTMLViewer"
		    goForward
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 496E766F6B6573207468652067726170686963616C207A6F6F6D207069636B65722077696467657420666F72207468697320576562566965772E20546869732077696C6C20726573756C7420696E20746865207A6F6F6D2077696467657420617070656172696E67206F6E207468652073637265656E20746F20636F6E74726F6C20746865207A6F6F6D206C6576656C206F66207468697320576562566965772E
		Sub InvokeZoomPickerXC(Extends ctrl As MobileHTMLViewer)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub invokeZoomPicker Lib "Object:ctrl:MobileHTMLViewer"
		    invokeZoomPicker
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 47657473207768657468657220707269766174652062726F7773696E6720697320656E61626C656420696E207468697320576562566965772E
		Function IsPrivateBrowsingEnabledXC(Extends ctrl As MobileHTMLViewer) As Boolean
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Function isPrivateBrowsingEnabled Lib "Object:ctrl:MobileHTMLViewer" As Boolean
		    Return isPrivateBrowsingEnabled
		    
		  #Else
		    
		    Return False
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 5363726F6C6C732074686520636F6E74656E7473206F662074686973205765625669657720646F776E2062792068616C662074686520706167652073697A652E
		Function PageDownXC(Extends ctrl As MobileHTMLViewer, bottom As Boolean) As Boolean
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Function pageDown Lib "Object:ctrl:MobileHTMLViewer" (myBottom As Boolean) As Boolean
		    Return pageDown(bottom)
		    
		  #Else
		    
		    #Pragma Unused bottom
		    
		    Return False
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 5363726F6C6C732074686520636F6E74656E7473206F66207468697320576562566965772075702062792068616C662074686520766965772073697A652E
		Function PageUpXC(Extends ctrl As MobileHTMLViewer, top As Boolean) As Boolean
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Function pageUp Lib "Object:ctrl:MobileHTMLViewer" (myTop As Boolean) As Boolean
		    Return pageUp(top)
		    
		  #Else
		    
		    #Pragma Unused top
		    
		    Return False
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52656C6F616473207468652063757272656E742055524C2E
		Sub ReloadXC(Extends ctrl As MobileHTMLViewer)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub reload Lib "Object:ctrl:MobileHTMLViewer"
		    reload
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 5361766573207468652063757272656E74207669657720617320612077656220617263686976652E
		Sub SaveAsWebArchiveXC(Extends ctrl As MobileHTMLViewer, filename As String)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub saveWebArchive Lib "Object:ctrl:MobileHTMLViewer" (myFilename As CString)
		    saveWebArchive(filename)
		    
		  #Else
		    
		    #Pragma Unused filename
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 536574732074686520696E697469616C207363616C6520666F72207468697320576562566965772E2030206D65616E732064656661756C742E20546865206265686176696F7220666F72207468652064656661756C74207363616C6520646570656E6473206F6E20746865207374617465206F662057656253657474696E6773236765745573655769646556696577506F7274282920616E642057656253657474696E6773236765744C6F6164576974684F766572766965774D6F646528292E2049662074686520636F6E74656E74206669747320696E746F20746865205765625669657720636F6E74726F6C2062792077696474682C207468656E20746865207A6F6F6D2069732073657420746F20313030252E20466F72207769646520636F6E74656E742C20746865206265686176696F7220646570656E6473206F6E20746865207374617465206F662057656253657474696E6773236765744C6F6164576974684F766572766965774D6F646528292E204966206974732076616C756520697320747275652C2074686520636F6E74656E742077696C6C206265207A6F6F6D6564206F757420746F2062652066697420627920776964746820696E746F20746865205765625669657720636F6E74726F6C2C206F7468657277697365206E6F742E20496620696E697469616C207363616C652069732067726561746572207468616E20302C205765625669657720737461727473207769746820746869732076616C756520617320696E697469616C207363616C652E20506C65617365206E6F7465207468617420756E6C696B6520746865207363616C652070726F7065727469657320696E207468652076696577706F7274206D657461207461672C2074686973206D6574686F6420646F65736E27742074616B65207468652073637265656E2064656E7369747920696E746F206163636F756E742E
		Sub SetInitialScaleXC(Extends ctrl As MobileHTMLViewer, scaleInPercent As Integer)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub setInitialScale Lib "Object:ctrl:MobileHTMLViewer" (myScaleInPercent As Integer)
		    setInitialScale(scaleInPercent)
		    
		  #Else
		    
		    #Pragma Unused scaleInPercent
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 496E666F726D732057656256696577206F6620746865206E6574776F726B2073746174652E2054686973206973207573656420746F2073657420746865204A6176615363726970742070726F70657274792077696E646F772E6E6176696761746F722E69734F6E6C696E6520616E642067656E65726174657320746865206F6E6C696E652F6F66666C696E65206576656E742061732073706563696669656420696E2048544D4C352C207365632E20352E372E37
		Sub SetNetworkAvailableXC(Extends ctrl As MobileHTMLViewer, networkUp As Boolean)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub setNetworkAvailable Lib "Object:ctrl:MobileHTMLViewer" (myNetworkUp As Boolean)
		    setNetworkAvailable(networkUp)
		    
		  #Else
		    
		    #Pragma Unused networkUp
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 53746F7073207468652063757272656E74206C6F61642E
		Sub StopLoadingXC(Extends ctrl As MobileHTMLViewer)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub stopLoading Lib "Object:ctrl:MobileHTMLViewer"
		    stopLoading
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 506572666F726D732061207A6F6F6D206F7065726174696F6E20696E207468697320576562566965772E0A546869732076616C7565206D75737420626520696E207468652072616E676520302E303120746F203130302E3020696E636C75736976652E
		Sub ZoomByXC(Extends ctrl As MobileHTMLViewer, zoomFactor As Single)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub zoomBy Lib "Object:ctrl:MobileHTMLViewer" (myZoomFactor As Single)
		    zoomBy(zoomFactor)
		    
		  #Else
		    
		    #Pragma Unused zoomFactor
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 506572666F726D73207A6F6F6D20696E20696E207468697320576562566965772E
		Function ZoomInXC(Extends ctrl As MobileHTMLViewer) As Boolean
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Function zoomIn Lib "Object:ctrl:MobileHTMLViewer" As Boolean
		    Return zoomIn
		    
		  #Else
		    
		    Return False
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 506572666F726D73207A6F6F6D206F757420696E207468697320576562566965772E
		Function ZoomOutXC(Extends ctrl As MobileHTMLViewer) As Boolean
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Function zoomOut Lib "Object:ctrl:MobileHTMLViewer" As Boolean
		    Return zoomOut
		    
		  #Else
		    
		    Return False
		    
		  #EndIf
		End Function
	#tag EndMethod


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
