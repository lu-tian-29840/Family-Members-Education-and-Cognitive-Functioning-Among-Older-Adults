
* Prepare parental education
use randhrsfamr1992_2014v1, clear

gen hhchild = .
 
forvalues n = 1/12 {
  replace hhchild = h`n'child if h`n'child <.
}
 
tab     hhchild, m

lab var hhchild "Number of living children or in-contact children"


keep hhidpn   hhid   rahhidpn pn     /// ID
     hhchild rameduc rafeduc               // child# mother edu, father edu

sort hhidpn 

save parentdata, replace
