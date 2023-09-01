#tag Module
Protected Module HTMLViewerXC
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
		    
		    #If XojoVersion < 2023.03
		      
		      Declare Sub findAllAsync Lib "Object:ctrl:MobileHTMLViewer" (myFind As CString)
		      
		    #Else
		      
		      Declare Sub findAllAsync Lib "Object:ctrl:MobileHTMLViewer" Alias "findAllAsync(myfind.toString())}//" (myFind As CString)
		      
		    #EndIf
		    
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

	#tag Method, Flags = &h0, Description = 4765747320776865746865722074686973205765625669657720737570706F72747320636F6E74656E742055524C206163636573732E
		Function GetAllowContentAccessXC(Extends ctrl As MobileHTMLViewer) As Boolean
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Function getAllowContentAccess Lib "Object:ctrl:MobileHTMLViewer" Alias "getSettings().getAllowContentAccess" As Boolean
		    Return getAllowContentAccess
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 476574732077686574686572204A6176615363726970742072756E6E696E6720696E2074686520636F6E74657874206F6620612066696C6520736368656D652055524C2063616E2061636365737320636F6E74656E742066726F6D206F746865722066696C6520736368656D652055524C732E
		Function GetAllowFileAccessFromFileURLsXC(Extends ctrl As MobileHTMLViewer) As Boolean
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Function getAllowFileAccessFromFileURLs Lib "Object:ctrl:MobileHTMLViewer" Alias "getSettings().getAllowFileAccessFromFileURLs" As Boolean
		    Return getAllowFileAccessFromFileURLs
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 4765747320776865746865722074686973205765625669657720737570706F7274732066696C65206163636573732E
		Function GetAllowFileAccessXC(Extends ctrl As MobileHTMLViewer) As Boolean
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Function getAllowFileAccess Lib "Object:ctrl:MobileHTMLViewer" Alias "getSettings().getAllowFileAccess" As Boolean
		    Return getAllowFileAccess
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 476574732077686574686572204A6176615363726970742072756E6E696E6720696E2074686520636F6E74657874206F6620612066696C6520736368656D652055524C2063616E2061636365737320636F6E74656E742066726F6D20616E79206F726967696E2E205468697320696E636C756465732061636365737320746F20636F6E74656E742066726F6D206F746865722066696C6520736368656D652055524C732E
		Function GetAllowUniversalAccessFromFileURLsXC(Extends ctrl As MobileHTMLViewer) As Boolean
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Function getAllowUniversalAccessFromFileURLs Lib "Object:ctrl:MobileHTMLViewer" Alias "getSettings().getAllowUniversalAccessFromFileURLs" As Boolean
		    Return getAllowUniversalAccessFromFileURLs
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 47657473207768657468657220746865205765625669657720646F6573206E6F74206C6F616420696D616765207265736F75726365732066726F6D20746865206E6574776F726B2E
		Function GetBlockNetworkImageXC(Extends ctrl As MobileHTMLViewer) As Boolean
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Function getBlockNetworkImage Lib "Object:ctrl:MobileHTMLViewer" Alias "getSettings().getBlockNetworkImage" As Boolean
		    Return getBlockNetworkImage
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 47657473207768657468657220746865205765625669657720646F6573206E6F74206C6F616420616E79207265736F75726365732066726F6D20746865206E6574776F726B2E
		Function GetBlockNetworkLoadsXC(Extends ctrl As MobileHTMLViewer) As Boolean
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Function getBlockNetworkLoads Lib "Object:ctrl:MobileHTMLViewer" Alias "getSettings().getBlockNetworkLoads" As Boolean
		    Return getBlockNetworkLoads
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 47657473207768657468657220746865207A6F6F6D206D656368616E69736D73206275696C7420696E746F205765625669657720617265206265696E6720757365642E
		Function GetBuiltInZoomControlsXC(Extends ctrl As MobileHTMLViewer) As Boolean
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Function getBuiltInZoomControls Lib "Object:ctrl:MobileHTMLViewer" Alias "getSettings().getBuiltInZoomControls" As Boolean
		    Return getBuiltInZoomControls
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 47657473207468652063757272656E742073657474696E6720666F72206F766572726964696E6720746865206361636865206D6F64652E
		Function GetCacheModeXC(Extends ctrl As MobileHTMLViewer) As Integer
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Function getCacheMode Lib "Object:ctrl:MobileHTMLViewer" Alias "getSettings().getCacheMode" As Integer
		    Return getCacheMode
		    
		  #EndIf
		End Function
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

	#tag Method, Flags = &h0, Description = 4765747320746865206375727369766520666F6E742066616D696C79206E616D652E
		Function GetCursiveFontFamilyXC(Extends ctrl As MobileHTMLViewer) As String
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Function getCursiveFontFamily Lib "Object:ctrl:MobileHTMLViewer" Alias "getSettings().getCursiveFontFamily" As CString
		    Return getCursiveFontFamily
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 47657473207468652064656661756C7420666978656420666F6E742073697A65202861206E6F6E2D6E6567617469766520696E7465676572206265747765656E203120616E64203732292E
		Function GetDefaultFixedFontSizeXC(Extends ctrl As MobileHTMLViewer) As Integer
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Function getDefaultFixedFontSize Lib "Object:ctrl:MobileHTMLViewer" Alias "getSettings().getDefaultFixedFontSize" As Integer
		    Return getDefaultFixedFontSize
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 47657473207468652064656661756C7420666F6E742073697A65202861206E6F6E2D6E6567617469766520696E7465676572206265747765656E203120616E64203732292E
		Function GetDefaultFontSizeXC(Extends ctrl As MobileHTMLViewer) As Integer
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Function getDefaultFontSize Lib "Object:ctrl:MobileHTMLViewer" Alias "getSettings().getDefaultFontSize" As Integer
		    Return getDefaultFontSize
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 47657473207468652064656661756C74207465787420656E636F64696E67206E616D652E
		Function GetDefaultTextEncodingNameXC(Extends ctrl As MobileHTMLViewer) As String
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Function getDefaultTextEncodingName Lib "Object:ctrl:MobileHTMLViewer" Alias "getSettings().getDefaultTextEncodingName" As CString
		    Return getDefaultTextEncodingName
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 476574732074686520616374696F6E206D6F6465206D656E75206974656D732074686174206172652064697361626C65642C2065787072657373656420696E20616E20696E7465676572206669656C6420666C61672E205468652064656661756C742076616C7565206973204D454E555F4954454D5F4E4F4E452E0A0A416C6C207468652064697361626C6564206D656E75206974656D20666C61677320636F6D62696E656420776974682062697477697365204F522E2056616C7565206973206569746865722030206F72206120636F6D62696E6174696F6E206F66204D454E555F4954454D5F4E4F4E452C204D454E555F4954454D5F53484152452C204D454E555F4954454D5F5745425F5345415243482C20616E64204D454E555F4954454D5F50524F434553535F54455854
		Function GetDisabledActionModeMenuItemsXC(Extends ctrl As MobileHTMLViewer) As Integer
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Function getDisabledActionModeMenuItems Lib "Object:ctrl:MobileHTMLViewer" Alias "getSettings().getDisabledActionModeMenuItems" As Integer
		    Return getDisabledActionModeMenuItems
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 47657473207768657468657220746865205765625669657720646973706C617973206F6E2D73637265656E207A6F6F6D20636F6E74726F6C73207768656E207573696E6720746865206275696C742D696E207A6F6F6D206D656368616E69736D732E
		Function GetDisplayZoomControlsXC(Extends ctrl As MobileHTMLViewer) As Boolean
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Function getDisplayZoomControls Lib "Object:ctrl:MobileHTMLViewer" Alias "getSettings().getDisplayZoomControls" As Boolean
		    Return getDisplayZoomControls
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 4765747320776865746865722074686520444F4D2053746F7261676520415049732061726520656E61626C65642E
		Function GetDomStorageEnabledXC(Extends ctrl As MobileHTMLViewer) As Boolean
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Function getDomStorageEnabled Lib "Object:ctrl:MobileHTMLViewer" Alias "getSettings().getDomStorageEnabled" As Boolean
		    Return getDomStorageEnabled
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 47657473207468652066616E7461737920666F6E742066616D696C79206E616D652E
		Function GetFantasyFontFamilyXC(Extends ctrl As MobileHTMLViewer) As String
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Function getFantasyFontFamily Lib "Object:ctrl:MobileHTMLViewer" Alias "getSettings().getFantasyFontFamily" As CString
		    Return getFantasyFontFamily
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 476574732074686520666978656420666F6E742066616D696C79206E616D652E
		Function GetFixedFontFamilyXC(Extends ctrl As MobileHTMLViewer) As String
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Function getFixedFontFamily Lib "Object:ctrl:MobileHTMLViewer" Alias "getSettings().getFixedFontFamily" As CString
		    Return getFixedFontFamily
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 476574732077686574686572204A6176615363726970742063616E206F70656E2077696E646F7773206175746F6D61746963616C6C792E
		Function GetJavaScriptCanOpenWindowsAutomaticallyXC(Extends ctrl As MobileHTMLViewer) As Boolean
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Function getJavaScriptCanOpenWindowsAutomatically Lib "Object:ctrl:MobileHTMLViewer" Alias "getSettings().getJavaScriptCanOpenWindowsAutomatically" As Boolean
		    Return getJavaScriptCanOpenWindowsAutomatically
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 476574732077686574686572204A61766153637269707420697320656E61626C65642E
		Function GetJavaScriptEnabledXC(Extends ctrl As MobileHTMLViewer) As Boolean
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Function getJavaScriptEnabled Lib "Object:ctrl:MobileHTMLViewer" Alias "getSettings().getJavaScriptEnabled" As Boolean
		    Return getJavaScriptEnabled
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 476574732077686574686572207468652057656256696577206C6F61647320696D616765207265736F75726365732E205468697320696E636C7564657320696D6167657320656D626564646564207573696E672074686520646174612055524920736368656D652E
		Function GetLoadsImagesAutomaticallyXC(Extends ctrl As MobileHTMLViewer) As Boolean
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Function getLoadsImagesAutomatically Lib "Object:ctrl:MobileHTMLViewer" Alias "getSettings().getLoadsImagesAutomatically" As Boolean
		    Return getLoadsImagesAutomatically
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 47657473207768657468657220746869732057656256696577206C6F61647320706167657320696E206F76657276696577206D6F64652E
		Function GetLoadWithOverviewModeXC(Extends ctrl As MobileHTMLViewer) As Boolean
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Function getLoadWithOverviewMode Lib "Object:ctrl:MobileHTMLViewer" Alias "getSettings().getLoadWithOverviewMode" As Boolean
		    Return getLoadWithOverviewMode
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 47657473207768657468657220746865205765625669657720726571756972657320612075736572206765737475726520746F20706C6179206D656469612E
		Function GetMediaPlaybackRequiresUserGestureXC(Extends ctrl As MobileHTMLViewer) As Boolean
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Function getMediaPlaybackRequiresUserGesture Lib "Object:ctrl:MobileHTMLViewer" Alias "getSettings().getMediaPlaybackRequiresUserGesture" As Boolean
		    Return getMediaPlaybackRequiresUserGesture
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 4765747320746865206D696E696D756D20666F6E742073697A65202861206E6F6E2D6E6567617469766520696E7465676572206265747765656E203120616E64203732292E
		Function GetMinimumFontSizeXC(Extends ctrl As MobileHTMLViewer) As Integer
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Function getMinimumFontSize Lib "Object:ctrl:MobileHTMLViewer" Alias "getSettings().getMinimumFontSize" As Integer
		    Return getMinimumFontSize
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 4765747320746865206D696E696D756D206C6F676963616C20666F6E742073697A65202861206E6F6E2D6E6567617469766520696E7465676572206265747765656E203120616E64203732292E
		Function GetMinimumLogicalFontSizeXC(Extends ctrl As MobileHTMLViewer) As Integer
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Function getMinimumLogicalFontSize Lib "Object:ctrl:MobileHTMLViewer" Alias "getSettings().getMinimumLogicalFontSize" As Integer
		    Return getMinimumLogicalFontSize
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 47657473207468652063757272656E74206265686176696F72206F6620746865205765625669657720776974682072656761726420746F206C6F6164696E6720696E73656375726520636F6E74656E742066726F6D206120736563757265206F726967696E2E
		Function GetMixedContentModeXC(Extends ctrl As MobileHTMLViewer) As Integer
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Function getMixedContentMode Lib "Object:ctrl:MobileHTMLViewer" Alias "getSettings().getMixedContentMode" As Integer
		    Return getMixedContentMode
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 476574732077686574686572207468697320576562566965772073686F756C64207261737465722074696C6573207768656E206974206973206F666673637265656E2062757420617474616368656420746F20612077696E646F772E
		Function GetOffscreenPreRasterXC(Extends ctrl As MobileHTMLViewer) As Boolean
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Function getOffscreenPreRaster Lib "Object:ctrl:MobileHTMLViewer" Alias "getSettings().getOffscreenPreRaster" As Boolean
		    Return getOffscreenPreRaster
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 4765747320746865206F726967696E616C2055524C20666F72207468652063757272656E7420706167652E2054686973206973206E6F7420616C77617973207468652073616D65206173207468652055524C2070617373656420746F2057656256696577436C69656E742E6F6E5061676553746172746564206265636175736520616C74686F75676820746865206C6F616420666F7220746861742055524C2068617320626567756E2C207468652063757272656E742070616765206D6179206E6F742068617665206368616E6765642E20416C736F2C207468657265206D61792068617665206265656E2072656469726563747320726573756C74696E6720696E206120646966666572656E742055524C20746F2074686174206F726967696E616C6C79207265717565737465642E
		Function GetOriginalUrlXC(Extends ctrl As MobileHTMLViewer) As String
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Function getOriginalUrl Lib "Object:ctrl:MobileHTMLViewer" As CString
		    Return getOriginalUrl
		    
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

	#tag Method, Flags = &h0, Description = 47657473207468652073616E732D736572696620666F6E742066616D696C79206E616D652E
		Function GetSansSerifFontFamilyXC(Extends ctrl As MobileHTMLViewer) As String
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Function getSansSerifFontFamily Lib "Object:ctrl:MobileHTMLViewer" Alias "getSettings().getSansSerifFontFamily" As CString
		    Return getSansSerifFontFamily
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 476574732074686520736572696620666F6E742066616D696C79206E616D652E205468652064656661756C7420697320227365726966222E
		Function GetSerifFontFamilyXC(Extends ctrl As MobileHTMLViewer) As String
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Function getSerifFontFamily Lib "Object:ctrl:MobileHTMLViewer" Alias "getSettings().getSerifFontFamily" As CString
		    Return getSerifFontFamily
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 4765747320746865207374616E6461726420666F6E742066616D696C79206E616D652E
		Function GetStandardFontFamilyXC(Extends ctrl As MobileHTMLViewer) As String
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Function getStandardFontFamily Lib "Object:ctrl:MobileHTMLViewer" Alias "getSettings().getStandardFontFamily" As CString
		    Return getStandardFontFamily
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 47657473207468652074657874207A6F6F6D206F6620746865207061676520696E2070657263656E742E
		Function GetTextZoomXC(Extends ctrl As MobileHTMLViewer) As Integer
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Function getTextZoom Lib "Object:ctrl:MobileHTMLViewer" Alias "getSettings().getTextZoom()" As Integer
		    Return getTextZoom
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 4765747320746865207469746C6520666F72207468652063757272656E7420706167652E205468697320697320746865207469746C65206F66207468652063757272656E74207061676520756E74696C2057656256696577436C69656E742E6F6E52656365697665645469746C652069732063616C6C65642E
		Function GetTitleXC(Extends ctrl As MobileHTMLViewer) As String
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Function getTitle Lib "Object:ctrl:MobileHTMLViewer" As CString
		    Return getTitle
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 47657473207468652055524C20666F72207468652063757272656E7420706167652E2054686973206973206E6F7420616C77617973207468652073616D65206173207468652055524C2070617373656420746F2057656256696577436C69656E742E6F6E5061676553746172746564206265636175736520616C74686F75676820746865206C6F616420666F7220746861742055524C2068617320626567756E2C207468652063757272656E742070616765206D6179206E6F742068617665206368616E6765642E
		Function GetUrlXC(Extends ctrl As MobileHTMLViewer) As String
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Function getUrl Lib "Object:ctrl:MobileHTMLViewer" As CString
		    Return getUrl
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 47657473207468652057656256696577277320757365722D6167656E7420737472696E672E
		Function GetUserAgentStringXC(Extends ctrl As MobileHTMLViewer) As String
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Function getUserAgentString Lib "Object:ctrl:MobileHTMLViewer" Alias "getSettings().getUserAgentString" As CString
		    Return getUserAgentString
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 47657473207768657468657220746865205765625669657720737570706F72747320746865202276696577706F7274222048544D4C206D65746120746167206F722077696C6C20757365206120776964652076696577706F72742E
		Function GetUseWideViewPortXC(Extends ctrl As MobileHTMLViewer) As Boolean
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Function getUseWideViewPort Lib "Object:ctrl:MobileHTMLViewer" Alias "getSettings().getUseWideViewPort" As Boolean
		    Return getUseWideViewPort
		    
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
		    
		    #If XojoVersion < 2023.03
		      
		      Declare Sub saveWebArchive Lib "Object:ctrl:MobileHTMLViewer" (myFilename As CString)
		      
		    #Else
		      
		      Declare Sub saveWebArchive Lib "Object:ctrl:MobileHTMLViewer" Alias "saveWebArchive(myfilename.toString())}//" (myFilename As CString)
		      
		    #EndIf
		    
		    saveWebArchive(filename)
		    
		  #Else
		    
		    #Pragma Unused filename
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 456E61626C6573206F722064697361626C657320636F6E74656E742055524C206163636573732077697468696E20576562566965772E20436F6E74656E742055524C2061636365737320616C6C6F7773205765625669657720746F206C6F616420636F6E74656E742066726F6D206120636F6E74656E742070726F766964657220696E7374616C6C656420696E207468652073797374656D2E205468652064656661756C7420697320656E61626C65642E
		Sub SetAllowContentAccessXC(Extends ctrl As MobileHTMLViewer, allow As Boolean)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub setAllowContentAccess Lib "Object:ctrl:MobileHTMLViewer" Alias "getSettings().setAllowContentAccess" (myAllow As Boolean)
		    setAllowContentAccess(allow)
		    
		  #Else
		    
		    #Pragma Unused allow
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 456E61626C6573206F722064697361626C65732066696C65206163636573732077697468696E20576562566965772E204E6F74652074686174207468697320656E61626C6573206F722064697361626C65732066696C652073797374656D20616363657373206F6E6C792E2041737365747320616E64207265736F757263657320617265207374696C6C2061636365737369626C65207573696E672066696C653A2F2F2F616E64726F69645F617373657420616E642066696C653A2F2F2F616E64726F69645F7265732E
		Sub SetAllowFileAccessXC(Extends ctrl As MobileHTMLViewer, allow As Boolean)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub setAllowFileAccess Lib "Object:ctrl:MobileHTMLViewer" Alias "getSettings().setAllowFileAccess" (myAllow As Boolean)
		    setAllowFileAccess(allow)
		    
		  #Else
		    
		    #Pragma Unused allow
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 5365747320776865746865722074686520576562566965772073686F756C64206E6F74206C6F616420696D616765207265736F75726365732066726F6D20746865206E6574776F726B20287265736F757263657320616363657373656420766961206874747020616E642068747470732055524920736368656D6573292E204E6F746520746861742074686973206D6574686F6420686173206E6F2065666665637420756E6C657373206765744C6F616473496D616765734175746F6D61746963616C6C7928292072657475726E7320747275652E20416C736F206E6F746520746861742064697361626C696E6720616C6C206E6574776F726B206C6F616473207573696E6720736574426C6F636B4E6574776F726B4C6F61647328626F6F6C65616E292077696C6C20616C736F2070726576656E74206E6574776F726B20696D616765732066726F6D206C6F6164696E672C206576656E206966207468697320666C61672069732073657420746F2066616C73652E205768656E207468652076616C7565206F6620746869732073657474696E67206973206368616E6765642066726F6D207472756520746F2066616C73652C206E6574776F726B20696D61676573207265736F7572636573207265666572656E63656420627920636F6E74656E742063757272656E746C7920646973706C61796564206279207468652057656256696577206172652066657463686564206175746F6D61746963616C6C792E205468652064656661756C742069732066616C73652E
		Sub SetBlockNetworkImageXC(Extends ctrl As MobileHTMLViewer, flag As Boolean)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub setBlockNetworkImage Lib "Object:ctrl:MobileHTMLViewer" Alias "getSettings().setBlockNetworkImage" (myFlag As Boolean)
		    setBlockNetworkImage(flag)
		    
		  #Else
		    
		    #Pragma Unused flag
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 5365747320776865746865722074686520576562566965772073686F756C64206E6F74206C6F6164207265736F75726365732066726F6D20746865206E6574776F726B2E2055736520736574426C6F636B4E6574776F726B496D61676528626F6F6C65616E2920746F206F6E6C792061766F6964206C6F6164696E6720696D616765207265736F75726365732E204E6F74652074686174206966207468652076616C7565206F6620746869732073657474696E67206973206368616E6765642066726F6D207472756520746F2066616C73652C206E6574776F726B207265736F7572636573207265666572656E63656420627920636F6E74656E742063757272656E746C7920646973706C6179656420627920746865205765625669657720617265206E6F74206665746368656420756E74696C20576562566965772E72656C6F616428292069732063616C6C65642E20496620746865206170706C69636174696F6E20646F6573206E6F74206861766520746865204D616E69666573742E7065726D697373696F6E2E494E5445524E4554207065726D697373696F6E2C20617474656D70747320746F2073657420612076616C7565206F662066616C73652077696C6C2063617573652061205365637572697479457863657074696F6E20746F206265207468726F776E2E205468652064656661756C742076616C75652069732066616C736520696620746865206170706C69636174696F6E2068617320746865204D616E69666573742E7065726D697373696F6E2E494E5445524E4554207065726D697373696F6E2C206F746865727769736520697420697320747275652E
		Sub SetBlockNetworkLoadsXC(Extends ctrl As MobileHTMLViewer, flag As Boolean)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub setBlockNetworkLoads Lib "Object:ctrl:MobileHTMLViewer" Alias "getSettings().setBlockNetworkLoads" (myFlag As Boolean)
		    setBlockNetworkLoads(flag)
		    
		  #Else
		    
		    #Pragma Unused flag
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 5365747320776865746865722074686520576562566965772073686F756C642075736520697473206275696C742D696E207A6F6F6D206D656368616E69736D732E20546865206275696C742D696E207A6F6F6D206D656368616E69736D7320636F6D7072697365206F6E2D73637265656E207A6F6F6D20636F6E74726F6C732C2077686963682061726520646973706C61796564206F766572207468652057656256696577277320636F6E74656E742C20616E642074686520757365206F6620612070696E6368206765737475726520746F20636F6E74726F6C207A6F6F6D696E672E2057686574686572206F72206E6F74207468657365206F6E2D73637265656E20636F6E74726F6C732061726520646973706C617965642063616E20626520736574207769746820736574446973706C61795A6F6F6D436F6E74726F6C7328626F6F6C65616E292E205468652064656661756C742069732066616C73652E0A0A546865206275696C742D696E206D656368616E69736D732061726520746865206F6E6C792063757272656E746C7920737570706F72746564207A6F6F6D206D656368616E69736D732C20736F206974206973207265636F6D6D656E646564207468617420746869732073657474696E6720697320616C7761797320656E61626C65642E20486F77657665722C206F6E2D73637265656E207A6F6F6D20636F6E74726F6C7320617265206465707265636174656420696E20416E64726F69642028736565205A6F6F6D427574746F6E73436F6E74726F6C6C65722920736F2069742773207265636F6D6D656E64656420746F2064697361626C6520736574446973706C61795A6F6F6D436F6E74726F6C7328626F6F6C65616E292E
		Sub SetBuiltInZoomControlsXC(Extends ctrl As MobileHTMLViewer, enabled As Boolean)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub setBuiltInZoomControls Lib "Object:ctrl:MobileHTMLViewer" Alias "getSettings().setBuiltInZoomControls" (myEnabled As Boolean)
		    setBuiltInZoomControls(enabled)
		    
		  #Else
		    
		    #Pragma Unused enabled
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 4F766572726964657320746865207761792074686520636163686520697320757365642E2054686520776179207468652063616368652069732075736564206973206261736564206F6E20746865206E617669676174696F6E20747970652E20466F722061206E6F726D616C2070616765206C6F61642C2074686520636163686520697320636865636B656420616E6420636F6E74656E742069732072652D76616C696461746564206173206E65656465642E205768656E206E617669676174696E67206261636B2C20636F6E74656E74206973206E6F7420726576616C6964617465642C20696E73746561642074686520636F6E74656E74206973206A757374207265747269657665642066726F6D207468652063616368652E2054686973206D6574686F6420616C6C6F77732074686520636C69656E7420746F206F766572726964652074686973206265686176696F722062792073706563696679696E67206F6E65206F66204C4F41445F44454641554C542C204C4F41445F43414348455F454C53455F4E4554574F524B2C204C4F41445F4E4F5F4341434845206F72204C4F41445F43414348455F4F4E4C592E205468652064656661756C742076616C7565206973204C4F41445F44454641554C542E
		Sub SetCacheModeXC(Extends ctrl As MobileHTMLViewer, mode As Integer)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub setCacheMode Lib "Object:ctrl:MobileHTMLViewer" Alias "getSettings().setCacheMode" (myMode As Integer)
		    setCacheMode(mode)
		    
		  #Else
		    
		    #Pragma Unused mode
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 5365747320746865206D696E696D756D20666F6E742073697A65206265747765656E203120616E642037322E20416E79206E756D626572206F75747369646520746865207370656369666965642072616E67652077696C6C2062652070696E6E65642E205468652064656661756C742069732031362E
		Sub SetDefaultFixedFontSizeXC(Extends ctrl As MobileHTMLViewer, size As Integer)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub setDefaultFixedFontSize Lib "Object:ctrl:MobileHTMLViewer" Alias "getSettings().setDefaultFixedFontSize" (mySize As Integer)
		    setDefaultFixedFontSize(size)
		    
		  #Else
		    
		    #Pragma Unused size
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 5365747320746865206D696E696D756D20666F6E742073697A65206265747765656E203120616E642037322E20416E79206E756D626572206F75747369646520746865207370656369666965642072616E67652077696C6C2062652070696E6E65642E205468652064656661756C742069732031362E
		Sub SetDefaultFontSizeXC(Extends ctrl As MobileHTMLViewer, size As Integer)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub setDefaultFontSize Lib "Object:ctrl:MobileHTMLViewer" Alias "getSettings().setDefaultFontSize" (mySize As Integer)
		    setDefaultFontSize(size)
		    
		  #Else
		    
		    #Pragma Unused size
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 53657473207468652064656661756C74207465787420656E636F64696E67206E616D6520746F20757365207768656E206465636F64696E672068746D6C2070616765732E205468652064656661756C7420697320225554462D38222E
		Sub SetDefaultTextEncodingNameXC(Extends ctrl As MobileHTMLViewer, encoding As String)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub setDefaultTextEncodingName Lib "Object:ctrl:MobileHTMLViewer" Alias "getSettings().setDefaultTextEncodingName" (myEncoding As CString)
		    setDefaultTextEncodingName(encoding)
		    
		  #Else
		    
		    #Pragma Unused encoding
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 44697361626C65732074686520616374696F6E206D6F6465206D656E75206974656D73206163636F7264696E6720746F206D656E754974656D7320666C61672E0A416E20696E7465676572206669656C6420666C616720666F7220746865206D656E75206974656D7320746F2062652064697361626C65642E2056616C7565206973206569746865722030206F72206120636F6D62696E6174696F6E206F66204D454E555F4954454D5F4E4F4E452C204D454E555F4954454D5F53484152452C204D454E555F4954454D5F5745425F5345415243482C20616E64204D454E555F4954454D5F50524F434553535F544558542E
		Sub SetDisabledActionModeMenuItemsXC(Extends ctrl As MobileHTMLViewer, menuItems As Integer)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub setDisabledActionModeMenuItems Lib "Object:ctrl:MobileHTMLViewer" Alias "getSettings().setDisabledActionModeMenuItems" (myMenuItems As Integer)
		    setDisabledActionModeMenuItems(menuItems)
		    
		  #Else
		    
		    #Pragma Unused menuItems
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 5365747320776865746865722074686520576562566965772073686F756C6420646973706C6179206F6E2D73637265656E207A6F6F6D20636F6E74726F6C73207768656E207573696E6720746865206275696C742D696E207A6F6F6D206D656368616E69736D732E20536565207365744275696C74496E5A6F6F6D436F6E74726F6C7328626F6F6C65616E292E205468652064656661756C7420697320747275652E20486F77657665722C206F6E2D73637265656E207A6F6F6D20636F6E74726F6C7320617265206465707265636174656420696E20416E64726F69642028736565205A6F6F6D427574746F6E73436F6E74726F6C6C65722920736F2069742773207265636F6D6D656E64656420746F20736574207468697320746F2066616C73652E
		Sub SetDisplayZoomControlsXC(Extends ctrl As MobileHTMLViewer, enabled As Boolean)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub setDisplayZoomControls Lib "Object:ctrl:MobileHTMLViewer" Alias "getSettings().setDisplayZoomControls" (myEnabled As Boolean)
		    setDisplayZoomControls(enabled)
		    
		  #Else
		    
		    #Pragma Unused enabled
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 5365747320776865746865722074686520444F4D2073746F726167652041504920697320656E61626C65642E205468652064656661756C742076616C75652069732066616C73652E
		Sub SetDomStorageEnabledXC(Extends ctrl As MobileHTMLViewer, flag As Boolean)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub setDomStorageEnabled Lib "Object:ctrl:MobileHTMLViewer" Alias "getSettings().setDomStorageEnabled" (myFlag As Boolean)
		    setDomStorageEnabled(flag)
		    
		  #Else
		    
		    #Pragma Unused flag
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 53657473207468652066616E7461737920666F6E742066616D696C79206E616D652E205468652064656661756C74206973202266616E74617379222E
		Sub SetFantasyFontFamilyXC(Extends ctrl As MobileHTMLViewer, font As String)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub setFantasyFontFamily Lib "Object:ctrl:MobileHTMLViewer" Alias "getSettings().setFantasyFontFamily" (myFont As CString)
		    setFantasyFontFamily(font)
		    
		  #Else
		    
		    #Pragma Unused font
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 536574732074686520666978656420666F6E742066616D696C79206E616D652E205468652064656661756C7420697320226D6F6E6F7370616365222E
		Sub SetFixedFontFamilyXC(Extends ctrl As MobileHTMLViewer, font As String)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub setFixedFontFamily Lib "Object:ctrl:MobileHTMLViewer" Alias "getSettings().setFixedFontFamily" (myFont As CString)
		    setFixedFontFamily(font)
		    
		  #Else
		    
		    #Pragma Unused font
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 5365747320776865746865722047656F6C6F636174696F6E20697320656E61626C65642E205468652064656661756C7420697320747275652E
		Sub SetGeolocationEnabledXC(Extends ctrl As MobileHTMLViewer, flag As Boolean)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub setGeolocationEnabled Lib "Object:ctrl:MobileHTMLViewer" Alias "getSettings().setGeolocationEnabled" (myFlag As Boolean)
		    setGeolocationEnabled(flag)
		    
		  #Else
		    
		    #Pragma Unused flag
		    
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

	#tag Method, Flags = &h0, Description = 54656C6C73204A61766153637269707420746F206F70656E2077696E646F7773206175746F6D61746963616C6C792E2054686973206170706C69657320746F20746865204A6176615363726970742066756E6374696F6E2077696E646F772E6F70656E28292E205468652064656661756C742069732066616C73652E
		Sub SetJavaScriptCanOpenWindowsAutomaticallyXC(Extends ctrl As MobileHTMLViewer, flag As Boolean)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub setJavaScriptCanOpenWindowsAutomatically Lib "Object:ctrl:MobileHTMLViewer" Alias "getSettings().setJavaScriptCanOpenWindowsAutomatically" (myFlag As Boolean)
		    setJavaScriptCanOpenWindowsAutomatically(flag)
		    
		  #Else
		    
		    #Pragma Unused flag
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 54656C6C7320746865205765625669657720746F20656E61626C65204A61766153637269707420657865637574696F6E2E205468652064656661756C742069732066616C73652E
		Sub SetJavaScriptEnabledXC(Extends ctrl As MobileHTMLViewer, flag As Boolean)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub setJavaScriptEnabled Lib "Object:ctrl:MobileHTMLViewer" Alias "getSettings().setJavaScriptEnabled" (myFlag As Boolean)
		    setJavaScriptEnabled(flag)
		    
		  #Else
		    
		    #Pragma Unused flag
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 5365747320776865746865722074686520576562566965772073686F756C64206C6F616420696D616765207265736F75726365732E204E6F746520746861742074686973206D6574686F6420636F6E74726F6C73206C6F6164696E67206F6620616C6C20696D616765732C20696E636C7564696E672074686F736520656D626564646564207573696E672074686520646174612055524920736368656D652E2055736520736574426C6F636B4E6574776F726B496D61676528626F6F6C65616E2920746F20636F6E74726F6C206C6F6164696E67206F6E6C79206F6620696D6167657320737065636966696564207573696E67206E6574776F726B2055524920736368656D65732E204E6F74652074686174206966207468652076616C7565206F6620746869732073657474696E67206973206368616E6765642066726F6D2066616C736520746F20747275652C20616C6C20696D61676573207265736F7572636573207265666572656E63656420627920636F6E74656E742063757272656E746C7920646973706C6179656420627920746865205765625669657720617265206C6F61646564206175746F6D61746963616C6C792E205468652064656661756C7420697320747275652E
		Sub SetLoadsImagesAutomaticallyXC(Extends ctrl As MobileHTMLViewer, flag As Boolean)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub setLoadsImagesAutomatically Lib "Object:ctrl:MobileHTMLViewer" Alias "getSettings().setLoadsImagesAutomatically" (myFlag As Boolean)
		    setLoadsImagesAutomatically(flag)
		    
		  #Else
		    
		    #Pragma Unused flag
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 536574732077686574686572207468652057656256696577206C6F61647320706167657320696E206F76657276696577206D6F64652C20746861742069732C207A6F6F6D73206F75742074686520636F6E74656E7420746F20666974206F6E2073637265656E2062792077696474682E20546869732073657474696E672069732074616B656E20696E746F206163636F756E74207768656E2074686520636F6E74656E742077696474682069732067726561746572207468616E20746865207769647468206F6620746865205765625669657720636F6E74726F6C2C20666F72206578616D706C652C207768656E206765745573655769646556696577506F7274282920697320656E61626C65642E205468652064656661756C742069732066616C73652E
		Sub SetLoadWithOverviewModeXC(Extends ctrl As MobileHTMLViewer, overview As Boolean)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub setLoadWithOverviewMode Lib "Object:ctrl:MobileHTMLViewer" Alias "getSettings().setLoadWithOverviewMode" (myOverview As Boolean)
		    setLoadWithOverviewMode(overview)
		    
		  #Else
		    
		    #Pragma Unused overview
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 53657473207768657468657220746865205765625669657720726571756972657320612075736572206765737475726520746F20706C6179206D656469612E205468652064656661756C7420697320747275652E
		Sub SetMediaPlaybackRequiresUserGestureXC(Extends ctrl As MobileHTMLViewer, require As Boolean)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub setMediaPlaybackRequiresUserGesture Lib "Object:ctrl:MobileHTMLViewer" Alias "getSettings().setMediaPlaybackRequiresUserGesture" (myRequire As Boolean)
		    setMediaPlaybackRequiresUserGesture(require)
		    
		  #Else
		    
		    #Pragma Unused require
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 5365747320746865206D696E696D756D20666F6E742073697A65206265747765656E203120616E642037322E20416E79206E756D626572206F75747369646520746865207370656369666965642072616E67652077696C6C2062652070696E6E65642E205468652064656661756C7420697320382E
		Sub SetMinimumFontSizeXC(Extends ctrl As MobileHTMLViewer, size As Integer)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub setMinimumFontSize Lib "Object:ctrl:MobileHTMLViewer" Alias "getSettings().setMinimumFontSize" (mySize As Integer)
		    setMinimumFontSize(size)
		    
		  #Else
		    
		    #Pragma Unused size
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 5365747320746865206D696E696D756D206C6F676963616C20666F6E742073697A65206265747765656E203120616E642037322E20416E79206E756D626572206F75747369646520746865207370656369666965642072616E67652077696C6C2062652070696E6E65642E205468652064656661756C7420697320382E
		Sub SetMinimumLogicalFontSizeXC(Extends ctrl As MobileHTMLViewer, size As Integer)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub setMinimumLogicalFontSize Lib "Object:ctrl:MobileHTMLViewer" Alias "getSettings().setMinimumLogicalFontSize" (mySize As Integer)
		    setMinimumLogicalFontSize(size)
		    
		  #Else
		    
		    #Pragma Unused size
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 436F6E666967757265732074686520576562566965772773206265686176696F72207768656E206120736563757265206F726967696E20617474656D70747320746F206C6F61642061207265736F757263652066726F6D20616E20696E736563757265206F726967696E2E2042792064656661756C742C2061707073207468617420746172676574204275696C642E56455253494F4E5F434F4445532E4B49544B4154206F722062656C6F772064656661756C7420746F204D495845445F434F4E54454E545F414C574159535F414C4C4F572E204170707320746172676574696E67204275696C642E56455253494F4E5F434F4445532E4C4F4C4C49504F502064656661756C7420746F204D495845445F434F4E54454E545F4E455645525F414C4C4F572E205468652070726566657272656420616E64206D6F737420736563757265206D6F6465206F66206F7065726174696F6E20666F72207468652057656256696577206973204D495845445F434F4E54454E545F4E455645525F414C4C4F5720616E6420757365206F66204D495845445F434F4E54454E545F414C574159535F414C4C4F57206973207374726F6E676C7920646973636F7572616765642E
		Sub SetMixedContentModeXC(Extends ctrl As MobileHTMLViewer, mode As Integer)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub setMixedContentMode Lib "Object:ctrl:MobileHTMLViewer" Alias "getSettings().setMixedContentMode" (myMode As Integer)
		    setMixedContentMode(mode)
		    
		  #Else
		    
		    #Pragma Unused mode
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 54656C6C732074686520576562566965772077686574686572206974206E6565647320746F207365742061206E6F646520746F206861766520666F637573207768656E20576562566965772372657175657374466F63757328696E742C20616E64726F69642E67726170686963732E52656374292069732063616C6C65642E205468652064656661756C742076616C756520697320747275652E
		Sub SetNeedInitialFocusXC(Extends ctrl As MobileHTMLViewer, flag As Boolean)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub setNeedInitialFocus Lib "Object:ctrl:MobileHTMLViewer" Alias "getSettings().setNeedInitialFocus" (myFlag As Boolean)
		    setNeedInitialFocus(flag)
		    
		  #Else
		    
		    #Pragma Unused flag
		    
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

	#tag Method, Flags = &h0, Description = 536574732077686574686572207468697320576562566965772073686F756C64207261737465722074696C6573207768656E206974206973206F666673637265656E2062757420617474616368656420746F20612077696E646F772E205475726E696E672074686973206F6E2063616E2061766F69642072656E646572696E6720617274696661637473207768656E20616E696D6174696E6720616E206F666673637265656E2057656256696577206F6E2D73637265656E2E204F666673637265656E20576562566965777320696E2074686973206D6F646520757365206D6F7265206D656D6F72792E205468652064656661756C742076616C75652069732066616C73652E
		Sub SetOffscreenPreRasterXC(Extends ctrl As MobileHTMLViewer, enabled As Boolean)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub setOffscreenPreRaster Lib "Object:ctrl:MobileHTMLViewer" Alias "getSettings().setOffscreenPreRaster" (myEnabled As Boolean)
		    setOffscreenPreRaster(enabled)
		    
		  #Else
		    
		    #Pragma Unused enabled
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 53657473207768657468657220536166652042726F7773696E6720697320656E61626C65642E20536166652042726F7773696E6720616C6C6F7773205765625669657720746F2070726F7465637420616761696E7374206D616C7761726520616E64207068697368696E672061747461636B7320627920766572696679696E6720746865206C696E6B732E0A0A536166652042726F7773696E672063616E2062652064697361626C656420666F7220616C6C205765625669657773207573696E672061206D616E6966657374207461672028726561642067656E6572616C20536166652042726F7773696E6720696E666F292E20546865206D616E696665737420746167206861732061206C6F77657220707265636564656E6365207468616E2074686973204150492E0A0A536166652042726F7773696E6720697320656E61626C65642062792064656661756C7420666F72206465766963657320776869636820737570706F72742069742E
		Sub SetSafeBrowsingEnabledXC(Extends ctrl As MobileHTMLViewer, enabled As Boolean)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub setSafeBrowsingEnabled Lib "Object:ctrl:MobileHTMLViewer" Alias "getSettings().setSafeBrowsingEnabled" (myEnabled As Boolean)
		    setSafeBrowsingEnabled(enabled)
		    
		  #Else
		    
		    #Pragma Unused enabled
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 53657473207468652073616E732D736572696620666F6E742066616D696C79206E616D652E205468652064656661756C74206973202273616E732D7365726966222E
		Sub SetSansSerifFontFamilyXC(Extends ctrl As MobileHTMLViewer, font As String)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub setSansSerifFontFamily Lib "Object:ctrl:MobileHTMLViewer" Alias "getSettings().setSansSerifFontFamily" (myFont As CString)
		    setSansSerifFontFamily(font)
		    
		  #Else
		    
		    #Pragma Unused font
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 536574732074686520736572696620666F6E742066616D696C79206E616D652E205468652064656661756C74206973202273616E732D7365726966222E
		Sub SetSerifFontFamilyXC(Extends ctrl As MobileHTMLViewer, font As String)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub setSerifFontFamily Lib "Object:ctrl:MobileHTMLViewer" Alias "getSettings().setSerifFontFamily" (myFont As CString)
		    setSerifFontFamily(font)
		    
		  #Else
		    
		    #Pragma Unused font
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 5365747320746865207374616E6461726420666F6E742066616D696C79206E616D652E205468652064656661756C74206973202273616E732D7365726966222E
		Sub SetStandardFontFamilyXC(Extends ctrl As MobileHTMLViewer, font As String)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub setStandardFontFamily Lib "Object:ctrl:MobileHTMLViewer" Alias "getSettings().setStandardFontFamily" (myFont As CString)
		    setStandardFontFamily(font)
		    
		  #Else
		    
		    #Pragma Unused font
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 536574732077686574686572207468652057656256696577207768657468657220737570706F727473206D756C7469706C652077696E646F77732E2049662073657420746F20747275652C205765624368726F6D65436C69656E74236F6E43726561746557696E646F77206D75737420626520696D706C656D656E7465642062792074686520686F7374206170706C69636174696F6E2E205468652064656661756C742069732066616C73652E
		Sub SetSupportMultipleWindowsXC(Extends ctrl As MobileHTMLViewer, support As Boolean)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub setSupportMultipleWindows Lib "Object:ctrl:MobileHTMLViewer" Alias "getSettings().setSupportMultipleWindows" (mySupport As Boolean)
		    setSupportMultipleWindows(support)
		    
		  #Else
		    
		    #Pragma Unused support
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 5365747320776865746865722074686520576562566965772073686F756C6420737570706F7274207A6F6F6D696E67207573696E6720697473206F6E2D73637265656E207A6F6F6D20636F6E74726F6C7320616E642067657374757265732E2054686520706172746963756C6172207A6F6F6D206D656368616E69736D7320746861742073686F756C6420626520757365642063616E206265207365742077697468207365744275696C74496E5A6F6F6D436F6E74726F6C7328626F6F6C65616E292E20546869732073657474696E6720646F6573206E6F7420616666656374207A6F6F6D696E6720706572666F726D6564207573696E67207468652057656256696577237A6F6F6D496E282920616E642057656256696577237A6F6F6D4F75742829206D6574686F64732E205468652064656661756C7420697320747275652E
		Sub SetSupportZoomXC(Extends ctrl As MobileHTMLViewer, support As Boolean)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub setSupportZoom Lib "Object:ctrl:MobileHTMLViewer" Alias "getSettings().setSupportZoom" (mySupport As Boolean)
		    setSupportZoom(support)
		    
		  #Else
		    
		    #Pragma Unused support
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 53657473207468652074657874207A6F6F6D206F6620746865207061676520696E2070657263656E742E205468652064656661756C74206973203130302E
		Sub SetTextZoomXC(Extends ctrl As MobileHTMLViewer, textZoom As Integer)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub setTextZoom Lib "Object:ctrl:MobileHTMLViewer" Alias "getSettings().setTextZoom" (myTextZoom As Integer)
		    setTextZoom(textZoom)
		    
		  #Else
		    
		    #Pragma Unused textZoom
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 53657473207468652057656256696577277320757365722D6167656E7420737472696E672E2049662074686520737472696E67206973206E756C6C206F7220656D7074792C207468652073797374656D2064656661756C742076616C75652077696C6C20626520757365642E0A0A49662074686520757365722D6167656E74206973206F76657272696464656E20696E2074686973207761792C207468652076616C756573206F662074686520557365722D4167656E7420436C69656E742048696E7473206865616465727320616E64206E6176696761746F722E757365724167656E744461746120666F72207468697320576562566965772077696C6C20626520656D7074792E0A0A4E6F74652074686174207374617274696E672066726F6D204275696C642E56455253494F4E5F434F4445532E4B49544B415420416E64726F69642076657273696F6E2C206368616E67696E672074686520757365722D6167656E74207768696C65206C6F6164696E67206120776562207061676520636175736573205765625669657720746F20696E697469617465206C6F6164696E67206F6E636520616761696E2E
		Sub SetUserAgentStringXC(Extends ctrl As MobileHTMLViewer, ua As CString)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub setUserAgentString Lib "Object:ctrl:MobileHTMLViewer" Alias "getSettings().setUserAgentString" (myUA As CString)
		    setUserAgentString(ua)
		    
		  #Else
		    
		    #Pragma Unused ua
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 5365747320776865746865722074686520576562566965772073686F756C6420656E61626C6520737570706F727420666F7220746865202276696577706F7274222048544D4C206D65746120746167206F722073686F756C6420757365206120776964652076696577706F72742E205768656E207468652076616C7565206F66207468652073657474696E672069732066616C73652C20746865206C61796F757420776964746820697320616C776179732073657420746F20746865207769647468206F6620746865205765625669657720636F6E74726F6C20696E206465766963652D696E646570656E64656E7420284353532920706978656C732E205768656E207468652076616C7565206973207472756520616E6420746865207061676520636F6E7461696E73207468652076696577706F7274206D657461207461672C207468652076616C7565206F66207468652077696474682073706563696669656420696E207468652074616720697320757365642E20496620746865207061676520646F6573206E6F7420636F6E7461696E2074686520746167206F7220646F6573206E6F742070726F7669646520612077696474682C207468656E206120776964652076696577706F72742077696C6C20626520757365642E
		Sub SetUseWideViewPortXC(Extends ctrl As MobileHTMLViewer, use As Boolean)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub setUseWideViewPort Lib "Object:ctrl:MobileHTMLViewer" Alias "getSettings().setUseWideViewPort" (myUse As Boolean)
		    setUseWideViewPort(use)
		    
		  #Else
		    
		    #Pragma Unused use
		    
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

	#tag Method, Flags = &h0, Description = 47657473207768657468657220746865205765625669657720737570706F727473207A6F6F6D2E
		Function SupportZoomXC(Extends ctrl As MobileHTMLViewer) As Boolean
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Function supportZoom Lib "Object:ctrl:MobileHTMLViewer" Alias "getSettings().supportZoom" As Boolean
		    Return supportZoom
		    
		  #EndIf
		End Function
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
