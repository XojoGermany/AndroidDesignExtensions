#tag Module
Protected Module Table
	#tag CompatibilityFlags = ( TargetAndroid and ( Target64Bit ) )
	#tag Method, Flags = &h0
		Sub SmoothScrollBy(Extends myTable As AndroidMobileTable, distance As Integer, duration As Integer)
		  #Pragma Unused myTable
		  
		  #If TargetAndroid
		    
		    Declare Sub smoothScrollBy Lib "Object:myTable:AndroidMobileTable" (aDistance As Integer, aDuration As Integer)
		    smoothScrollBy(distance, duration)
		    
		  #Else
		    
		    #Pragma Unused distance
		    #Pragma Unused duration
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SmoothScrollToPosition(Extends myTable As AndroidMobileTable, position As Integer)
		  #Pragma Unused myTable
		  
		  #If TargetAndroid
		    
		    Declare Sub smoothScrollToPosition Lib "Object:myTable:AndroidMobileTable" (aPosition As Integer)
		    smoothScrollToPosition(position)
		    
		  #Else
		    
		    #Pragma Unused position
		    
		  #EndIf
		End Sub
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
