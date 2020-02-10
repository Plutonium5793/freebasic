declare sub oddssheet()
declare sub betupdate()
declare sub directions_poker()
declare SUB poker_intro ()
declare SUB poker()
declare sub deckbuild()
declare sub choosecard()
declare sub sort_hand()
declare sub number_of_kind()
declare sub winner()
declare sub shell_sort()
declare sub check_hand()


'dim shared are global variables.
dim shared as integer black=0,blue=1,green=2,cyan=3,red=4,magenta=5,brown=6,gray=7,suit,rank,t,j
dim shared as integer v1,v2,v3,v4,v5,v6
dim shared as integer grey=8,bblue=9,bgreen=10,bcyan=11,bred=12,bmagenta=13,yellow=14,bwhite=15
dim shared as integer bucks=1000,payoff=0,bet_num=1,houselimit,i,card_kept
DIM SHARED as integer usr, ugold,indx(1000)
DIM SHARED as integer card(4,14),rank_num(5, 2), k1(5, 2), choice(5)

dim shared as string hand(5, 2),a(1000),s,n
dim shared as string coin_s, house_s,answer_s,bet_s,pseudo_s,suit_s,keep_card_s

randomize
 coin_s= "Buckazoids"
 house_s="St. Louis Shareware"
 pseudo_s="Benjamin"
 houselimit=500
'======================Program Start ================================= 
 poker_intro()
 poker()
 
'======================Program End ===================================
SUB poker_intro ()
 
 cls
 color red
Print "Diamond  ";"Heart  ";  "  F I V E    C A R D    D R A W  ";  "  Club  "; "Spade"
color yellow
Print house_s; " wishes you luck !"
Print "Smiling Jack welcomes you to the poker table..."
color bwhite
line input pseudo_s+", Would you like Directions? (y/n)";answer_s
if ucase(answer_s)="Y" then
cls
directions_poker
 else 
 cls
 poker
 end if
 'end if
END SUB

SUB directions_poker ()
cls
 PRINT  "     This is the poker game '5 card draw'.  The computer will deal 5"
 PRINT  "cards.  Your winning combinations are listed on the screen  and the"
 PRINT  "computer will check your hand for you and find any winners.  Choose the"
 PRINT  "cards you wish to KEEP by entering  1234 and/or 5 then pressing RETURN"
 PRINT  "DO NOT put commas or spaces between the numbers.  The cards you choose"
 PRINT  "will be kept, the others replaced.  After you press RETURN, the computer"
 PRINT  "will check your hand and indicate your holdings.  Your current number"
 PRINT  "of  buckos will be displayed at the start of the hand.  A new deck"
 PRINT  "is used for each hand.  GOOD LUCK ! "
 PRINT 
do
sleep 1,1
loop until inkey<>""
cls
poker



END SUB
SUB oddssheet ()


pRINT "  F I V E   C A R D   D R A W  " ' 

Print  coin_s
PRINT  "Bet: ";bet_num
PRINT  "Payoff"

PRINT  "1 PR (JACKS OR BETTER).....";bet_num
PRINT  "2 PR.......................";2*bet_num
PRINT  "3 OF A KIND................";3*bet_num
PRINT "STRAIGHT...................";4*bet_num
PRINT  "FLUSH......................";6*bet_num
PRINT  "FULL HOUSE.................";9*bet_num
Print  "4 of a kind................";25*bet_num
Print "STRAIGHT FLUSH.............";100*bet_num
Print  "ROYAL FLUSH................";250*bet_num
print

'do
'sleep 1,1
'loop until inkey<>""

END SUB
 


SUB poker()

startit:
color bwhite

locate 1,1:Print pseudo_s+", You have "+str(bucks)+" "+coin_s+" in your account.     "
locate 2,1:print "After first run, hit <enter> to keep the same bet."
bet_s=""
locate 3,1:line input pseudo_s+", Enter your bet or 'Q' to quit: ";bet_s
if bet_s="" then
	bet_s=str(bet_num)
end if
if ucase(bet_s)="Q" then
	cls
	end
end if

bet_num=val(bet_s)
IF bet_num <= 0 THEN GOTO startit

locate 3,1:IF bet_num > bucks THEN Print  "I don't give loans, "; pseudo_s:print: GOTO startit

IF houselimit > 0 AND bet_num > houselimit THEN
	locate 4,1:Print "Sorry, the house limit for this game is "+ str(houselimit)+" "+ coin_s
	goto startit
END IF

bucks=bucks-bet_num
'locate 25,1:print bucks,bet_num
betupdate()

deckbuild()

 FOR i=1 TO 5
 choosecard()
 NEXT
 
 'prints red or blue hand on lines 16 to 21
fOR i = 1 TO 5
 suit_s = MID(hand(i, 2), 5, 8)
if suit_s="diamonds" or suit_s="hearts  " then
color red
end if
if suit_s="clubs   " or suit_s="spades  " then
color bblue
end if
Locate (15 + i, 1):Print  i, hand(i, 1); hand(i, 2)
NEXT
 
check_hand()


 FOR i = 1 TO 5: choice(i) = 0: NEXT
L400:
 
 locate 22,1:color yellow:line input pseudo_s+", Card numbers to keep (12345<CR>):  ";keep_card_s
 
 Print 
FOR i = 16 TO 20
locate i,1:Print  STRING(35, " ")
NEXT
locate 21, 1:Print  STRING(34, " ")
 locate 22, 1:Print  STRING(55, " ")
 FOR i = 1 TO 5: choice(i) = 1: NEXT
 IF keep_card_s = CHR(13) THEN
 FOR i = 1 TO 5: choice(i) = 0: NEXT
 GOTO L540
END IF
FOR i = 1 TO LEN(keep_card_s)
card_kept = VAL(MID(keep_card_s, i, 1))
choice(card_kept) = 0
NEXT

L540:
 
 FOR i = 1 TO 5
 IF choice(i) <> 0 THEN choosecard
suit_s = MID(hand(i, 2), 5, 8)
IF suit_s = "diamonds" OR suit_s = "hearts  " THEN 
color red
end if

IF suit_s = "clubs   " OR suit_s = "spades  " THEN 
color bblue
end if
locate 15 + i, 1:Print i, hand(i, 1); hand(i, 2)
NEXT

number_of_kind()

winner()

GOTO startit
end sub

sub deckbuild()
FOR i = 1 TO 13
card(1,i)=i
card(2,i)=i
card(3,i)=i
card(4,i)=i

NEXT
end sub

sub choosecard()
ccard:

 suit = INT(RND * 4 + 1)
rank = INT(RND * 13 + 1)
 IF card(suit,rank) <> 0 THEN GOTO suit_name ELSE GOTO ccard
 
 
suit_name:
 card(suit, rank) = 0
 IF suit = 1 THEN S = " of " + "spades  "
 IF suit = 2 THEN S = " of " + "clubs   "
 IF suit = 3 THEN S = " of " + "hearts  "
 IF suit = 4 THEN S = " of " + "diamonds"

 hand(i, 2) = S: rank_num(i, 2) = suit
 
 n = "    " + STR(rank): n = RIGHT(n, 5)
 IF rank = 1 THEN n = "  ACE": rank = 14
 IF rank = 11 THEN n = " JACK"
 IF rank = 12 THEN n = "QUEEN"
 IF rank = 13 THEN n = " KING"
 choice(i) = 0: hand(i, 1) = n: rank_num(i, 1) = rank
 'print hand(i,1) +" "+ hand(i,2)
 end sub
 
sub number_of_kind()
 'T determines winner
 'if T=0, no pair, if T=1 a pair,etc
 T = 0: suit_s = ""
 FOR i = 1 TO 4: FOR J = (i + 1) TO 5
 IF hand(i, 1) = hand(J, 1) THEN suit_s = hand(J, 1): T = T + 1
 NEXT: NEXT
  
end sub
sub winner()
 'WINNER
color bwhite
payoff=0
 SELECT CASE T
 CASE 10
    locate 21,1:Print  "Royal Flush"
    payoff = 250 * bet_num
    
 CASE 9
    locate 21,1:Print  "Straight Flush"
    payoff = 100 * bet_num
   
 CASE 8
    locate 21,1:Print  "Straight"
    payoff = 4 * bet_num
    
 CASE 7
    locate 21,1:Print  "Flush"
    payoff = 6 * bet_num
    
CASE 6
    locate 21,1:Print  "Four of a Kind"
    payoff = 25 * bet_num
    
CASE 4
    locate 21,1:Print  "Full House"
    payoff = 9 * bet_num
    
CASE 3
    locate 21,1:Print  "3 of a kind"
    payoff = 3 * bet_num
    
CASE 2
    locate 21,1:Print  "Two Pair"
    payoff = 2 * bet_num
    
CASE 1
    IF suit_s = "  ACE" OR suit_s = " KING" OR suit_s = "QUEEN" OR suit_s = " JACK" THEN
    Print "A GOOD PAIR"
    payoff = bet_num
    
GOTO endsel
END IF
locate 21,1:Print  "Pair too low           "
CASE ELSE
IF T < 1 THEN locate 21,1:Print  "NOTHING."
endsel:
END SELECT
bucks = bucks + payoff

IF bucks <= 0 THEN locate 22,1:Print "Heh, Heh, I've BROKEN You."
end sub


sub shell_sort()
 'SHELL SORT OF V( )
 FOR i = 1 TO 5: k1(i, 1) = rank_num(i, 1): k1(i, 2) = rank_num(i, 2): NEXT
 V1 = 5
 V2 = V1

L1130:
 V2 = INT(V2 / 2)
 IF V2 = 0 THEN goto endit
 V3 = 1: V4 = V1 - V2

L1160:
 V5 = V3

L1170:
 V6 = V5 + V2
 IF rank_num(V5, 1) <= rank_num(V6, 1) THEN GOTO L1230
 FOR i = 1 TO 2: SWAP rank_num(V5, i), rank_num(V6, i): NEXT
 V5 = V5 - V2
 IF V5 < 1 THEN GOTO L1230
 GOTO L1170

L1230:
 V3 = V3 + 1
 IF V3 > V4 THEN GOTO L1130
 GOTO L1160
 endit:
end sub

sub check_hand()
'added
L890:
 T = 0: suit_s = ""
 FOR i = 1 TO 4: FOR J = (i + 1) TO 5
 IF Hand(i, 1) = Hand(J, 1) THEN suit_s = Hand(J, 1): T = T + 1
 NEXT: NEXT
 'end add
 'FLUSHES
 FOR i = 1 TO 5
 IF rank_num(i, 2) <> rank_num(1, 2) THEN GOTO straights
 NEXT
 T = 7

straights:
 shell_sort()
 
 IF rank_num(1, 1) = 2 AND rank_num(2, 1) = 3 AND rank_num(3, 1) = 4 AND rank_num(4, 1) = 5 AND rank_num(5, 1) = 14 THEN GOTO L1050
 FOR i = 1 TO 4
 IF rank_num(i + 1, 1) <> (1 + rank_num(i, 1)) THEN GOTO L1080
 NEXT

L1050:
 IF T = 7 AND rank_num(1, 1) = 10 THEN T = 10
 IF T = 7 THEN T = 9
 IF T = 0 THEN T = 8

L1080:
 FOR i = 1 TO 5: rank_num(i, 1) = k1(i, 1): rank_num(i, 2) = k1(i, 2): NEXT


'---------------------------------------------------------------------------

L1470:
color bwhite
ON (T + 1) GOTO L1490, L1500, L1520, L1530, L1540, L1550, L1560, L1570, L1580, L1590, L1600

L1490:
color yellow
 locate 21,1:Print " Hmmm....possibilities ! ": GOTO L1610

L1500:
 IF suit_s = "  ACE" OR suit_s = " KING" OR suit_s = "QUEEN" OR suit_s = " JACK" THEN locate 21,1:Print " A Good Pair ":  ELSE locate 21,1:Print " Pair too low "
 GOTO L1610

L1520:
 locate 21,1:Print " Two Pair ! ": GOTO L1610

L1530:
 locate 21,1:Print " Three of a Kind ! ": GOTO L1610

L1540:
 locate 21,1:Print " Full House ! ": GOTO L1610

L1550:
 GOTO L1610

L1560:
 locate 21,1:Print " Four of a Kind ! ": GOTO L1610

L1570:
 locate 21,1:Print " Flush ! ": GOTO L1610

L1580:
 locate 21,1:Print " Straight ! ": GOTO L1610

L1590:
 locate 21,1:Print " Straight Flush ! ": GOTO L1610

L1600:
 locate 21,1:Print " ROYAL FLUSH ! ": GOTO L1610
L1610:

end sub
SUB betupdate ()

'payoff = 0
'locate 25,1:print bucks,bet_num
locate 1,1:Print pseudo_s+", You have "+str(bucks)+" "+coin_s+" in your account.      "


locate 5,1:PRINT  "Payoff"
locate 7,1:PRINT  "1 PR (JACKS OR BETTER).....";bet_num
locate 8,1:PRINT  "2 PR.......................";2*bet_num
locate 9,1:PRINT  "3 OF A KIND................";3*bet_num
locate 10,1:PRINT "STRAIGHT...................";4*bet_num
locate 11,1:PRINT  "FLUSH......................";6*bet_num
locate 12,1:PRINT  "FULL HOUSE.................";9*bet_num
locate 13,1:Print  "4 of a kind................";25*bet_num
locate 14,1:Print "STRAIGHT FLUSH.............";100*bet_num
locate 15,1:Print  "ROYAL FLUSH................";250*bet_num
END SUB
