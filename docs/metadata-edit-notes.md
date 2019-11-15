#Metadata Edit Notes

First pass, I change Digital Format to format, subjects to subject, place to location, CONTENTdm Number to cdmid, and add a column for object id. 

Then I run a formula make all object ids the name of the collection (i.e. `="libraryhistory" + {cdmid cell value}`)

For library history, I then added a compound column, and I found the postcards that would work with this one, then made a formula to grab all the cdmids related to that item by grabbing each one and separating it by `&";"&` -- I did most of this by hand because there weren't too many. The following technique might be used first to establish a master id number for the items and then populate the compound column with another formula. 

For Folklore, I added a column called cpd-master. I googled to find the following formula `=index(BD2:BD,MATCH(FALSE,ISBLANK(BD2:BD),0))`

This fills the 