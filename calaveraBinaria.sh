#!/bin/bash

function ctrl_c () {
	echo "[+] Saliendo"
	exit 1
}

trap ctrl_c INT
min=0
max=1
random=$(shuf -i "$min-$max" -n 1)
while [ $random ]; do

random=$(shuf -i "$min-$max" -n 1)
A=$(shuf -i "$min-$max" -n 1)
B=$(shuf -i "$min-$max" -n 1)
C=$(shuf -i "$min-$max" -n 1)
D=$(shuf -i "$min-$max" -n 1)
E=$(shuf -i "$min-$max" -n 1)
F=$(shuf -i "$min-$max" -n 1)
echo  "

	   MNO!!         [NBK]          MNNOO!			    MNO!!         [NBK]          MNNOO!			  MNO!!         [NBK]          MNNOO!
	  MMNO!                           MNNOO!!		  MMNO!                           MNNOO!!		MMNO!                           MNNOO!!
	MNOONNOO!   ($A)($A)($A)($A)($A)($A)($A)($A)($A)($A)($A)($A)($A)($A)($A)!   MNNO!!!!		MNOONNOO!   MMMMMMMMMMPPPOII!   MNNO!!!!	      MNOONNOO!   MMMMMMMMMMPPPOII!   MNNO!!!!
	!O! NNO! ($A)($A)($A)($A)($A)($A)($A)($A)($A)($A)($A)($D)($A)($A)($A)($A)($A)($A)($A)($A)($A)($A)($A)	!! NO!			 !O! NNO! MMMMMMMMMMMMMPPPOOOII!! NO!		       !O! NNO! MMMMMMMMMMMMMPPPOOOII!! NO!
	      ! ($A)($A)($A)($C)($A)($A)($E)($A)($A)($A)($A)($A)($A)($A)($A)($A)($A)($A)($A)($A)($A)($A)($A)($A)! !			       ! MMMMMMMMMMMMMPPPPOOOOIII! !			     ! MMMMMMMMMMMMMPPPPOOOOIII! !
	       ($A)($A)($A)($B)($A)($A)($A)($A)($A)($A)($A)($A)($A)($A)($A)($A)($F)($A)($A)($A)($A)($A)($A)($A)($A)!!				MMMMMMMMMMMMPPPPPOOOOOOII!!			      MMMMMMMMMMMMPPPPPOOOOOOII!!
	       M($B)MMMOO($B)OOOPPPPPPPPOOOOMII!				MMMMMOOOOOOPPPPPPPPOOOOMII!			      MMMMMOOOOOOPPPPPPPPOOOOMII!
	       MMMMM..    OPPMMP    .,OMI!				MMMMM..    OPPMMP    .,OMI!			      MMMMM..    OPPMMP    .,OMI!
	       MMMM::   o.,OPMP,.o   ::I!!				MMMM::   o.,OPMP,.o   ::I!!			      MMMM::   o.,OPMP,.o   ::I!!
	         NNM:::.,,OOPM!P,.::::!!				  NNM:::.,,OOPM!P,.::::!!			        NNM:::.,,OOPM!P,.::::!!
	        MM($E)NNNNOOOOPMO!!IIPPO!!O!				 MMNNNNNOOOOPMO!!IIPPO!!O!			       MMNNNNNOOOOPMO!!IIPPO!!O!
	        MMMMMNNNNOO:!!:!!IPPPPOO!				 MMMMMNNNNOO:!!:!!IPPPPOO!			       MMMMMNNNNOO:!!:!!IPPPPOO!
	         MMM($C)MNNO($D)MMNNIIIPPPOO!!				  MMMMMNNOOMMNNIIIPPPOO!!				MMMMMNNOOMMNNIIIPPPOO!!
	            MMMONNMMNNNIIIOO!					     MMMONNMMNNNIIIOO!					   MMMONNMMNNNIIIOO!
	          MN MOMMMNNNIIIIIO! OO					   MN MOMMMNNNIIIIIO! OO				 MN MOMMMNNNIIIIIO! OO
	         MNO! IiiiiiiiiiiiI OOO($F)				  MNO! IiiiiiiiiiiiI OOOO				MNO! IiiiiiiiiiiiI OOOO
	    NNN.MNO!   O!!!!!!!!!O   OONO NO!                        NNN.MNO!   O!!!!!!!!!O   OONO NO!      		   NNN.MNO!   O!!!!!!!!!O   OONO NO!     
	   MNNNNNO!    OOOOOOOO($B)OO    MMNNON!			    MNNNNNO!    OOOOOOOOOOO    MMNNON!			  MNNNNNO!    OOOOOOOOOOO    MMNNON! 
	     MNNNNO!    PP($B)PPPPPP    MMNON!			      MNNNNO!    PPPPPPPPP    MMNON!			    MNNNNO!    PPPPPPPPP    MMNON!
	        OO!                   ON! 

" | tr -d '(' | tr -d ')'

done
