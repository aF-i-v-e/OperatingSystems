#!/bin/bash
clear
RED="\033[41m"
GREEN="\033[42m"
YELLOW="\033[43m"
BLUE1="\033[44m"
PURPLE="\033[45m"
BLUE="\033[46m"
MAGENTA="\E[35;45m"
ENDCOLOR="\e[0m"
c2=${BLUE}
WHITE="\033[47m"

i=1
while :
do
y=$(($i%2))
if [[ "$y" -eq 0 ]];then
	eyes=${WHITE}
elif [[ "$y" -eq 1 ]];then
	eyes=${YELLOW}
fi
r=$(($i%6))
if [[ "$r" -eq 0 ]];then
	c=${RED}
	c1=${BLUE1}
elif [[ "$r" -eq 1 ]];then
	c=${GREEN}
	c1=${YELLOW}
elif [[ "$r" -eq 2 ]];then
	c=${BLUE1}
	c1=${GREEN}
elif [[ "$r" -eq 3 ]];then
	c=${MAGENTA}
	c1=${RED}
elif [[ "$r" -eq 4 ]];then
	c=${BLUE}
	c1=${BLUE1}
elif [[ "$r" -eq 5 ]];then
	c=${YELLOW}
	c1=${YELLOW}
	c2=${YELLOW}
fi
clear
if [[ "$i" -eq 1 || $(( "$i"%20 )) -eq 0 ]];then
	mpg123 -q abba_happy_new_year.mp3 &
fi
echo -e "
*********************************************************************************************************************************************************************************
... .. ....... .... ....... .. .... .. .... .. .... .. .... .. .... ....... .. .... .. .... ........... .. ....... .... ....... .. .... .. .... .. .... .. .... .. .... ....... .
...........................................................................................................................................${YELLOW}@${ENDCOLOR}.....................................
 .. .... .. .... .. .... .. ...-... .... .. .... .. .... .. .... .. .... .. .... .. .... .. .... ...-------------------------------------:${YELLOW}*@+${ENDCOLOR}::::::::*************+++++++++++++++ 
....................................................................................................-------------------------------------${YELLOW}*%@@*${ENDCOLOR}:::::::::*************+++++++++++++                       
.... .... .. .... .. .... .. ....... .... .. .... .. .... .. ......+%@=*............................---------------------------------------${YELLOW}%${ENDCOLOR}::::::::::::**************+++++++++++                      
... .... .. .... .. ...+####%*... .... .... .. .... .. .... ....:#########%..  .  ..................--------------------------------------:%=:::::::::::::**************+++++++++
... .... .. .... .. .=###*....:#@-.... .... .. .... .. .... ..-#*#:*########...............................------------------------------:=@@+---::::::::::**************++++++++                    
... .... .. ..... . ####+ ...* ...#.....  ..  ...  .. ...  . ==@.##+-@######*.. ..............................---------------------------*=%@=*----:::::::::***************++++++                    
... .... .. .......-#######%.. #:...... ..:+=%@+:%=*:-:@:  ....@=+#==#######: . ...................................-....................:=%%%=+----:::::::::::**************+++++                    
... .... .. .... ..:######+*=@ .... . ...*%%=*=#####+:... ......*###########.. . ......................................................*+%$c%${ENDCOLOR}@#$c1%${ENDCOLOR}%%*----::::::::::**************++++                   
... .... .. ...... .%########=........:##*...%-#@...+##@+..===*....-#######+. ........................................................-:=$c1%${ENDCOLOR}%@%$c2%${ENDCOLOR}%%+-----:::::::::::**************++                    
... .... .. ..... ...-######@....+.-.:..+@@@##.#######@=.... .:@##*.*####.@#.. .......................................................:=%%%%$c%${ENDCOLOR}%#$c@${ENDCOLOR}%%-----::::::::::::::::**********                   
... .... .. .... .. ...#=###* ..@.@  .. . ....-##=  .   .... .. . +##..:.............................................................*=%@%=====%@%:----:::::::::-----------::****                      
... .... .. .... .......:@-...#*.....-%#%=%%@:#@..###..#@-......+#*.-#%..............................................................*$c+${ENDCOLOR}====@%+=@@=+----------:::-------------::**
... .... .. .... .. ............=.**%...+@%:-##%%=.-##.#-#+.:--#@. -#:.::...........................................................$c*${ENDCOLOR}+%%$c1=${ENDCOLOR}%=%@@$c1%${ENDCOLOR}%%@%*-----------::-----------::**:
... .... .. .... .. .... .. ..==%#@:+-.+.=*+#.%.+# .-%..:##=@#=@@*...*#:..........................................................-+%==*%%$c2@${ENDCOLOR}%@%+=%@$c%${ENDCOLOR}%=:----------:::----:---:::::-
... .... .. .... .. .... -..- #-.-:*:..:%...........-#. .... .*#+.@#-.=#-.........................................................*+*=%$c1#${ENDCOLOR}%=%=%@@$c2@${ENDCOLOR}%@@%+:...--------::::::::::::::--
... .... .. .... .. ... .#.%@:#=##=@##.-# ... . ...###:.##==#-##=.=##..#@.. .....................................................-+%$c2+${ENDCOLOR}%++$c1+${ENDCOLOR}%@==@%$c@${ENDCOLOR}##%=%%:...-------:::-----::::::--                     
... .... .. .... .. .  .+::#--.##*:####...       .=% %####+-%#=.#+=#= =#-. #-...................................................*===++*+=@+=@@*$c2@${ENDCOLOR}@#@@@$c1@${ENDCOLOR}+-..-----------------:::::-                    
... .... .. .... .. ....#.=#.+....+= ${eyes}##${ENDCOLOR}...           .${eyes}##${ENDCOLOR}..:- .....@.##..#@..*#@:................................................:**+$c1+${ENDCOLOR}%%=##=$c%${ENDCOLOR}%@=++*$c1%${ENDCOLOR}=%%*+:-------::------:::::::::                    
... .... .. .... .. ...:# %@.=#% ....-*..           ....... ....=@#.% %# .=#*..*#+.. . .........................................:*=%==%$c#${ENDCOLOR}#%+==%$c#${ENDCOLOR}@@%@@=%@:-------::::::::::::::::::       
... .... .. .... .. . .@#.=@...@#*. .....            .. .....-##+*#:.@#..+#@-..%@:-...........................................-:*$c=${ENDCOLOR}%%#%$c2%${ENDCOLOR}%+*=+=%%@@#$c%${ENDCOLOR}=@$c1@${ENDCOLOR}==%:------------------:::--             
... .... .. .... .. ..### :@...=#.. =. .             .....@.#+..++..#=..+#=...+#==... ........................................-*+$c2+${ENDCOLOR}+++%==%$c=${ENDCOLOR}*@@@+=$c1@${ENDCOLOR}@##$c#${ENDCOLOR}#@@=*:.-----------------::--             
... .... .. .... .. .-@##..#**:%.-%.....              ....#:@:.:+ .*#. .=#=....##+. .................... .. ..................-:=+$c1*${ENDCOLOR}*+=%=$c2=${ENDCOLOR}@+%#=++%###+=@%==*------------------::--               
.. .... .. .... .. ...###..:@...=:......              .....:#.@#...##...##...-...@@................. ........ . ... . .. .....-*++==%$c=${ENDCOLOR}%%++%++=%@%$c%${ENDCOLOR}%%%@%@%::*:----------------::-.             
.. .... .. ...... ....###=.+#. #..-...*+:==+-.-+%%%=@.....:- @%+..:##=.=#- ..-@........................... . .................+++%#$c1#${ENDCOLOR}##=%%=%%++==+%%@%===@@+*-----------------::--              
.. .... .. .... ...+..*###-.@= .-%.....=###########@.. .......-...#+=#.#@....-%= ... ........................................:==%@++=%=%%=%@%@#%=+%%$c2#${ENDCOLOR}#@@#%*:*----------------::--              
.. .... .. .... .. # .   ##. .#..+####@.. :######: . *#*.... *..+:.. ..##.. ...+ .  . ......................................**==@$c=${ENDCOLOR}==++%=%%%@%#=+==@%=%=$c1%${ENDCOLOR}#%%+:---------------::::-              
.. .... .. .... . .+* .  .@#* ..-::-.... -.%###@........-+##.......-:....... ..##. . .......................................*$c2+${ENDCOLOR}=%==+=@#$c@${ENDCOLOR}#=%==$c+${ENDCOLOR}@@@@#%=+%###%%@+-------------:::::::               
.. .... .. .... .  +=.... =##..%+*.:===%+ -. #=... ..---...:+%..+#%-..........:%#:. ......................................:=%=+=++*==%=@=@@@@#@#$c2%${ENDCOLOR}%+%@##@#%@%++:-::---------:::::*               
.. .... .. .... ...##. . ..+*. ..-*+*++++-.-@#@..:#####@+*:.-%#*.          ....=-. .. ...................................-+%==++%$c=${ENDCOLOR}=%@%=%#%@@%@$c1=${ENDCOLOR}%@@##@%##@%@@++::::--------::::::*              
.. .... .. .... ..@#+-...... ...-=#####=.:#######% .:#######:....          ....#. . . ...................................:+$c1%${ENDCOLOR}%==%$c2%${ENDCOLOR}%%=%###@@####@=#%####@@@##@=@+:::----------::::*              
.. .... .. .... ...##@ ..     ... . +.@##%**++****+##+:###%.      ..*- .. . .  =........................................-*=+*%@=%%=%$c%${ENDCOLOR}%@##@#$c2#${ENDCOLOR}##=@#@#%%@$c1#${ENDCOLOR}##%%%@$c@${ENDCOLOR}=+-----------:::::+                    
.. .... .. ..... .**##*..      ......... ...  .... ......@..     .+@.##-... .:-=.......................................-+=%$c2%${ENDCOLOR}=+=++$c2=${ENDCOLOR}+==%@@###$c1@${ENDCOLOR}##@$c1#${ENDCOLOR}@%@@@=%###@@##=::----------:::::+                   
.. .... .. ..... . :-##+.     ....-+@+..  ........ ...+*....      .=:-.%%....#........................................-:=%@#@=%%+=+#@#$c#${ENDCOLOR}#=%%@@@@$c#${ENDCOLOR}###@$c%${ENDCOLOR}%%@#####@%::----------:::*:+                   
.. .... .. ........ .@:#@.........-#=#=-:............-:%..... .....@. .-+=. %=........................................:=%%%$c%${ENDCOLOR}@%%%@$c@^${ENDCOLOR}###$c1%${ENDCOLOR}%@@$c@${ENDCOLOR}%@##@@@##+@$c#${ENDCOLOR}####$c#${ENDCOLOR}###@=::--------:::***              
.. .... .. ...........-*+#.... .....*-*+@*..........*=* :%@###@-..........*#=....-.......................-........----:-*+%$c1%${ENDCOLOR}%%%@@$c2@${ENDCOLOR}%%@@@@#$c#${ENDCOLOR}#####@::=%%%%%@+@@==+@:..-----:::=..***              
.. .... .. ....#*..# .. . =...       ...*=--++-@@+.%####@.=##.. .. ... @##%.....@+.....................--.-------.....:%$c@${ENDCOLOR}@#%%:+%@@@%@%==%%%$c@${ENDCOLOR}@%%##%=++*=**$c2@${ENDCOLOR}%+*:%%#@=:-----------**              
.. .... .. ....##+.+#.... ....       ... -..:.-:####%.:###=. ....-%##%........%%:...................------------......@%$c1#${ENDCOLOR}###:*=%@+***=%==@%$c2%${ENDCOLOR}@%+%@=$c1*${ENDCOLOR}+*+%*:*@%==@@%@..:----:::---.*             
.. .... .. ....-##-.@#.. .....     ..... .. -@###* .+##%- .:+##%*.......:*+@##%: .. ..........................--------%%@%:*+==+*$c*${ENDCOLOR}@@%=$c%${ENDCOLOR}@%====+$c2*${ENDCOLOR}%#%=%%$c1@${ENDCOLOR}@%%%===@@@=+@..:---:::-----               
.. .... .. .....%##- =#-. .  .     ... ...%###*...-#=.-%##+- .....:%##*:....    ...:=............................----*++%+=%==@##%%%$c1%${ENDCOLOR}@@@@*$c+${ENDCOLOR}++%%%$c1%${ENDCOLOR}%%+:--------@@@=$c1+${ENDCOLOR}*.---..........       
.. .... .. .... .*##..:##:....     ....=####-....#:.##+.......+##+-..=. . .   .  . .#................-----------.--:---*=$c=${ENDCOLOR}#@%$c1%${ENDCOLOR}%%====$c1=${ENDCOLOR}=%===+@$c2+${ENDCOLOR}=%#@$c@${ENDCOLOR}=+*%%$c%${ENDCOLOR}%%%%--::@@---............     
.. .... .. .... ...##*. %#=###=*--*######=... .:+ #@...  ..@##@.. %@..          .. .#.............................---*=+*:=@%+=+%==%+==#@+$c+${ENDCOLOR}%%=%$c1=${ENDCOLOR}@=*+*:%$c2%${ENDCOLOR}%%%%--::@------..........               
.. .... .. .... ....###:..##.. . ...--........@.........*###..:##... .          ....#............... --............-:+*+*$c1*${ENDCOLOR}*+%=*+=$c2+${ENDCOLOR}+=%@$c+${ENDCOLOR}@#@@#$c%${ENDCOLOR}==$c2=${ENDCOLOR}+=%==*:--$c%${ENDCOLOR}%%%%%---@-.---:------..         
.. .... .. ..........@###*.-%= . ...........%+.... ...%##%.-##* .....             .+#...............--...........-::**==%==%==%%%+=@+*%#$c@${ENDCOLOR}@%@$c1+${ENDCOLOR}++%+=%+*$c2*${ENDCOLOR}%%%$c%${ENDCOLOR}%%%%-$c2:${ENDCOLOR}@@@@@---.........         
.. .... .. .... .. ...@####@:.::... . ...-@@...... .%##*.-#%.....      ...........-#................---..........*=*+$c1%${ENDCOLOR}%+=@%$c2@${ENDCOLOR}%=%%$c@${ENDCOLOR}+=====%=$c1=${ENDCOLOR}=======$c%${ENDCOLOR}@@=%+:-%%%---:$c#${ENDCOLOR}##-----.........             
.. .... .. .... .. ....%######@...:*..:@##-.......-##...=#..... .     . ......@+.......................--.--------:+%@@$c@${ENDCOLOR}%@%==%%%@@%$c1%${ENDCOLOR}##%=$c1+${ENDCOLOR}+*=**$c@${ENDCOLOR}%+*:%$c%${ENDCOLOR}#@=:--$c1@${ENDCOLOR}########-------------            
.. .... .. .... .. .....:#######. .           ...=#... =+  .  .... ..  -%#####:......................------------*+%$c1%${ENDCOLOR}@=@%+=*+$c=${ENDCOLOR}*+%#$c2#${ENDCOLOR}+=%%+$c1=${ENDCOLOR}@==+++++%+%@+++*----#-:#####------------               
.. .... .. .... .. .... . -@######+          ...#* ...  ..-%@=... .*==+-.. .........................--------------*++=%+=%%@=*++**+$c*${ENDCOLOR}+@%%@$c1%${ENDCOLOR}=:-*%=$c2%${ENDCOLOR}@%%=$c1+${ENDCOLOR}+=%*-*%*%*%*%**..---:::----                
.. .... .. .... .. .... . .. .:=@#%          ..%-. . . ....... .. . ...   .. .......................------------:*=$c%${ENDCOLOR}@+***$c=${ENDCOLOR}%==@%%@%+%$c1@${ENDCOLOR}=*+*+%*:*$c2@${ENDCOLOR}%==@@%=++:*--@@@@##@#%..----......       
.. .... .. .... .. .. .... ....... .. .... ....-....................................................------------:*+==+**@@%=%@%====+*%#%=$c1%${ENDCOLOR}%@@%%%===$c2@${ENDCOLOR}@@=+$c1*${ENDCOLOR}@@@*::@#@#:---:::-------
... .... .. .... .. .... .. .... ....... .. .... .. .... .. .... .. .... .. .... ....... .. .... ....-----------*:+%=*$c1*${ENDCOLOR}+==+::@@%%$c2@${ENDCOLOR}+*%%#%*%$c1@${ENDCOLOR}%@@%$c+${ENDCOLOR}==%=++::%===:-$c@${ENDCOLOR}#@#@$c1#${ENDCOLOR}###:::-------
.....................................................................................................------------**+=+*=:+*:*%@%%$c@${ENDCOLOR}=*:$c2:${ENDCOLOR}+#@$c1=${ENDCOLOR}%##=++$c1%${ENDCOLOR}=**%%%@%+++@#@###@@@@+:----::::-
.... .. .... .. .... .. .... .. .... .. ...-... .... .. .... .. .... .. .... .. .... ...-... .. ......---------*+=$c2=${ENDCOLOR}%%@@%===%###@@=%%==@@%$c+${ENDCOLOR}=@%%*-:*$c1%${ENDCOLOR}@+=@%+:*+*@::@@@####::::-:----
.......................................-::...........................................................--------:%@@@##%$c1@${ENDCOLOR}#@=$c%${ENDCOLOR}@#@@%===$c=${ENDCOLOR}=%==#@%==@$c#${ENDCOLOR}%++%%#@#%+%%=@@##$c2#${ENDCOLOR}@#@@$c@${ENDCOLOR}@@@@--::::--
 .. .... .. .... .*%+=@%:*%-.... .. +%*+=@*:@:.. .. ..-%=+%@+:%:... ....:%==%@*:@:. -... ....... ....--------*++==$c@${ENDCOLOR}%=%@@%%%$c1%${ENDCOLOR}%@@%@$c2@${ENDCOLOR}%@++==*+=%@#%=%@#@=%%%*=*@#@@######+**:::------
................-%%+@####%%*+-.....=@+@####%%+=+.....+@+=####@==**.....=@+%####@=++:.................-------:*==**=%#@%==%%=+@@#@=@@@=%@=+@#=+%%=%##**%%%#@==+#@@#@#::####=+:-:::
.... .. .... ...-*+#@-. .=*%%#- ..::+#@....=:@%#:...--+@#:.. *=+=#*. .-:+##- ..++==#:.. .... ........-.----*:*++==%@#%$c#${ENDCOLOR}%%===$c1+${ENDCOLOR}=@@@@#+::++@@+%@$c=${ENDCOLOR}@===@#=+$c2@${ENDCOLOR}==+**:+++++++#@+*::-:-----
...............:++@#:.....==@#*...@+@#+....:@=@#*...=*%#+.....*%=#=...=*@#*.....+=%#+................-----=:*%==$c2#${ENDCOLOR}##%##=+@===+$c1*${ENDCOLOR}@#@%%+**=#@@=@$c2#${ENDCOLOR}++++=@%=+@@:+=*=%$c@${ENDCOLOR}@#@#@#$c@${ENDCOLOR}#@##+*-----
 .. ...-... ...-++++-... .::@@:. .#+@#+. ..:@+@#*...====:.. ..:-=#+ ..++++- ....:-%#*... .. .... ...-------:==@##%#%%=:$c1*${ENDCOLOR}%%=@==@%####$c@${ENDCOLOR}@##@@##@##@#$c2#${ENDCOLOR}@**+=%#=*:=::===@@====%%%+::-:-
.........................:++#%....#+@#+....*@+@#*............-*+@#-............-*+##................--......----:==+@##@%%%=%=@###$c#${ENDCOLOR}###@@##$c1#${ENDCOLOR}@@%@@%%#%+=@%++:*+%$c2=${ENDCOLOR}@@%@=@%++*----:...
...-... .... .. .... ...*%+@#-. ..#+@#+ ...*@+@#*... .......:=%@#*.. .. .... .*%=@#: .. .... ...-...------+%%%@%=%$c1@${ENDCOLOR}=%%@@%@@$c1#${ENDCOLOR}#@@#@@#@==%$c2@${ENDCOLOR}%%=%@#@#@#@##$c#${ENDCOLOR}####=%@@=@%@@%@@=++::+==*--
.......................%@=#@-.....@+@#+....:@+@#*..........+@=@#*............=@=##-.................-----+%%*++=====%$c@${ENDCOLOR}%@@##@@%%$c1@${ENDCOLOR}%%@@%%@=%+=%@$c2%${ENDCOLOR}@@@@%@%@%@%++-===*%*--###@@@----...
 .. .... .. .... .. .:@%%#%..... .#+@#+. ..:@+@#*.. .... -@@=#@- .. .... ..-@@=#@.. .... .. .... ...----*=++++===+:=%@+**:+=%*+==$c@${ENDCOLOR}@@=%*=**@#++@%+$c1*${ENDCOLOR}%%+:+*=$c+${ENDCOLOR}+++===+:=%@+**:+=%*+...
....................=@=@#*........#+@#+....:@+@#*.......*@%%#%.....-......+@%@#+....................----:**+*-:-++==%@+:**+===+==+%@@%%+=+@#@%===+=+@%%+=+@#@%===+=+:-:*+:*=@=.*-
.... .. .... .. ..-@@=#@-... .. ..#+@#+ ...*@+@#*... ..=@=@#*.. -... .. -%@=##: .... .. .... .. ....-------***---:-::+:*****==*+=++**=++=%#@@@=*::**::--**+=++**=++=%#@=+=%+-----
.................*@%%#%...........@=@#+....:=+@#*....-@@=##-...........:@@=#@.......................-------------:-::::*+**:**++==++==++=++==%++*:::*+**:**++==++==++=+:::-------
 .. .... .. ...-*@==#+.. .. .... .-*%++- .-%%+@#-.. :%%+@@. -... .....:@%=#=.... .. .... .. .... ............:::::*:::::::****+++======+*+++%%%=====%%++++=++****::::::::::::::::
...............:+*#@++%@@@@@+@.....@%++:+@**+@#*....=:@#=*=@@@@@=%*..-=:#@+*=@@@@@+%-...............-.-..-.-.........::::::***+++*****+*%%@++****%%*:::++++*****::::::-----------
.... .. .... ..-=#############. ....*###@@@##%. ....+@############*. -+@############-.. .... ................::::::::::::***:::-:********:::::::*%%+**::::::::::::::::::::-------   
.... .. ....... .... ....... .. .... .. .... .. .... .. .... .. .... ....... .. .... .. .... .......--..........----::::::---:::::***::----------::::****:::::::-::::::::--------
....................................................................................................--------------:::::::------------::::::::::::::::-------------------.........
 .. .... .. .... .. .... .. ...-... .... .. .... .. .... .. .... .. .... .. .... .. .... .. .... ...... .. .... .. .... .. ...-........ .. .... .. .... .. .... .. ..... ........
....................................................................................................... .. .... .. .... .. ...-........ .. .... .. .... .. .... .. .... .. .... .
.... .. .... .. .... .. ...-........ .. .... .. .... .. .... .. .... .. .... ....... .. .... .. ....... .. .... .. .... .. ...-........ .. .... .. .... .. .... .. .... .. .... .
*********************************************************************************************************************************************************************************
"
sleep 2
i=$(( $i + 1 ))
done