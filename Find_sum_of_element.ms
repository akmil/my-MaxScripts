------------- Pavel Oleynyk 2013 ---------
----- before need to set in obj properties "price = 'any number'"  --------
----- finded sum of elem that name start in "G" --------

clearSelection()
	 sum=0
	 SC = #()
	 select $G*
	 selectionSets["new_set"] = selection
 	 count = selection.count
	 for i= 1 to count do
	(
	SC[i] = getUserProp $G*[i] "price"
	sum = sum +SC[i]
	print (SC[i]) 
	)	
	
print ("-----------") 
print (sum) 
print("fin" )
