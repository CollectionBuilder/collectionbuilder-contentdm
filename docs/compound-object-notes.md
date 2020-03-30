# Metadata Edit Notes

First pass, I change Digital Format to format, subjects to subject, place to location, CONTENTdm Number to cdmid, and add a column for objectid. 

Then I run a formula make all object ids the name of the collection (i.e. `="libraryhistory" + {cdmid cell value}`)

For library history, I then added a compound column, and I found the postcards that would work with this one, then made a formula to grab all the cdmids related to that item by grabbing each one and separating it by `&";"&` -- I did most of this by hand because there weren't too many. The following technique might be used first to establish a master id number for the items and then populate the compound column with another formula. 

For Folklore, I only added objectids for those items that were the object records for compound objects. I did this by using a formula to check against the format field, as that was only filled out for items that were object records. Here it is `=if(ISBLANK(AC2),,"folklore"&BD2)`. 

I then added a column called cpd-master. I googled to find the following formula `=index(BD2:BD,MATCH(FALSE,ISBLANK(BD2:BD),0))`  This checks another row, in this case the objectid row, then fills in the first non-blank cell into that cell. The result was that we now had a master id for all items. 

I never got too far with taking advantage of this in the liquid code yet, but if this practice works, I think it will let us build a more robust mechanism for importing compound object based collections. 



