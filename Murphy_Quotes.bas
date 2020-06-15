 #Include "window9.bi"

dim as integer WM_LBUTTONDOWN,xsize, ysize
declare sub murphy_says()
Dim shared as string Murphy(400)
dim shared as integer x

/'
; M U R P H Y ' S   L A W   Q U O T E S
;  Originally by James Marshall   December 19, 1995
; Rewritten for purebasic, December 14, 2010 by John Duchek
rewritten for FreeBasic and window9 2020-0415
; Randomly selects And prints one of a selected number of sayings from
; _The_Complete_Murphy's_Law_ by Arthur Bloch
Procedure load_data()
'/
 '-----start------
 Randomize , 1

'' Print a sequence of random numbers
For i As Integer = 1 To 10
    x=int(Rnd *351)
Next

 murphy_says()

Messbox("Murphys Law "+str(x),murphy(x))

Do
 var event=WaitEvent()
 If event=EventClose Then End
 If event=WM_LBUTTONDOWN Then
 setgadgettext(1,murphy(x))
  endif
 
loop

 
 '-----end--------


sub murphy_says()
murphy(1)= "If anything can go wrong, it will."
murphy(2) =  "Nothing is as easy as it looks."
murphy(3) =  "Everything takes longer than you think."
murphy(4) =  "If there is a possibility of several things going wrong, the one that will cause the most damage will be the one to go wrong."
murphy(5) =  "If you perceive that there are four possible ways in which a procedure can go wrong, and circumvent these, then a fifth way will promptly develop."
murphy(6) =  "Left to themselves, things tend to go from bad to worse."
murphy(7) =  "Whenever you set out to do something, something else must be done first."
murphy(8) =  "Every solution breeds new problems."
murphy(9) =  "It is impossible to make anything foolproof because fools are so ingenious."
murphy(10) =  "Mother nature is a bitch."
murphy(11) =  "There is always an easier way to do it."
murphy(12) =  "Mediocrity imitates."
murphy(13) =  "When things are going well, something will go wrong."
murphy(14) =  "Proposals, as understood by the proposer will be judged otherwise by others."
murphy(15) =  "No matter how often a lie is shown to be false, there will remain a percentage of people who believe it true."
murphy(16) =  "No matter what goes wrong, it will probably look right."
murphy(17) =  "When an error has been detected and corrected, it will be found to have been correct in the first place."
murphy(18) =  "The probability of anything happening is in inverse ratio to its desirability."
murphy(19) =  "Most things get steadily worse."
murphy(20) =  "A shortcut is the longest distance between two points."
murphy(21) =  "Direct action produces direct reaction."
murphy(22) =  "Society is a mule, not a car.  If pressed too hard, it will kick and throw off its rider."
murphy(23) =  "When a person attempts a task, he will be thwarted in that task by the unconscious intervention of some other presence (animate or inanimate)."
murphy(24) =  "Sooner or later, the worst possible set of circumstances is bound to occur."
murphy(25) =  "Everything put together falls apart sooner or later."
murphy(26) =  "All pluses have their minuses."
murphy(27) =  "One should always prefer the probable impossible to the improbable possible."
murphy(28) =  "In crises that force people to choose among alternative courses of action, most people will choose the worst one possible."
murphy(29) =  "You can't win.  You can't break even.  You can't even quit the game."
murphy(30) =  "Things will get worse before they get better.  Who said things would get better?"
murphy(31) =  "Confusion is always increasing in society."
murphy(32) =  "Confusion not only reigns, it pours."
murphy(33) =  "Things get worse under pressure."
murphy(34) =  "The simple explanation always follow the complex solution."
murphy(35) =  "Only someone who understands something absolutely can explain it so no one else can understand it."
murphy(36) =  "Nothing ever goes away."
murphy(37) =  "Anything that begins well, ends badly.  Anything that begins badly, ends worse."
murphy(38) =  "If it looks easy, it's tough. If it looks tough, it's damn well impossible."
murphy(39) =  "Negative slack intends to increase."
murphy(40) =  "Random events tend to occur in groups."
murphy(41) =  "Once you open a can of worms, the only way to recan them is to use a larger can."
murphy(42) =  "Never open a can of worms unless you plan to go fishing."
murphy(43) =  "Ninety percent of everything is crud."
murphy(44) =  "Negative expectations yield negative results. Positive expectations yield negative results."
murphy(45) =  "Last year was always better."
murphy(46) =  "As soon as you mention something good, it goes away.  As soon as you mention something bad, it happens."
murphy(47) =  "An ounce of application is worth a ton of abstraction."
murphy(48) =  "A fail-safe circuit will destroy others."
murphy(49) =  "If wires can be connected in two different ways, the first way blows the fuse."
murphy(50) =  "In any calculation, any error that can creep in will do so."
murphy(51) =  "Any error in any calculation will be in the direction of most harm."
murphy(52) =  "In any formula, constants are to be treated as variables."
murphy(53) =  "If more than one person is responsible for a miscalculation,  no one will be at fault."
murphy(54) =  "If you keep anything long enough you can throw it away.  If you throw anything away, you will need it  as soon as it is no longer accessible."
murphy(55) =  "The location of all objects can not be known simultaneously."
murphy(56) =  "You can always find what you're not looking for."
murphy(57) =  "If you have a pen, there's no paper.  If you have paper, there's no pen. If you have both, there's no message."
murphy(58) =  "If anything can't go wrong, it will."
murphy(59) =  "If Murphy's Law can go wrong, it will."
murphy(60) =  "If a series of events goes wrong, it will do so in the worst possible sequence."
murphy(61) =  "After things have gone from bad to worse, the cycle will repeat itself."
murphy(62) =  "Nothing is ever so bad that it can't get worse."
murphy(63) =  "When the going gets tough, everyone leaves."
murphy(64) =  "Two wrongs are only the beginning."
murphy(65) =  "In any given set of circumstances, the proper course of action is determined by subsequent events."
murphy(66) =  "Things go right so they can go wrong."
murphy(67) =  "In precise mathematical terms, 1 + 1 = 2, where '=' is a symbol meaning 'seldom if ever.'"
murphy(68) =  "You can know something has gone wrong only when you make an odd number of mistakes."
murphy(69) =  "Nothing is as inevitable as a mistake whose time has come."
murphy(70) =  "Whatever hits the fan will not be evenly distributed."
murphy(71) =  "If at first you don't succeed, destroy all evidence that you tried."
murphy(72) =  "No matter what goes wrong, there is always somebody who knew it would."
murphy(73) =  "Everything depends. Nothing is always. Everything is sometimes."
murphy(74) =  "If you wait it will go away.  Having done its damage. If it was bad, it'll be back."
murphy(75) =  "Complex problems have simple, easy-to-understand wrong answers."
murphy(76) =  "Things equal to nothing else are equal to each other."
murphy(77) =  "If you don't care where you are, you aren't lost."
murphy(78) =  "It is impossible for an optimist to be pleasantly surprised."
murphy(79) =  "A crisis is when you can't say, 'Let's forget the whole thing.'"
murphy(80) =  "Washing your car to make it rain doesn't work."
murphy(81) =  "The worst is enemy of the bad."
murphy(82) =  "An optimist believes we live in the best of all possible worlds. A pessimist fears this is true."
murphy(83) =  "You can make it foolproof, but you can't make it damnfoolproof."
murphy(84) =  "Of two possible events, only the undesired one will occur."
murphy(85) =  "There is no limit to how bad things can get."
murphy(86) =  "There is no job so simple that it cannot be done wrong."
murphy(87) =  "Nature abhors people."
murphy(88) =  "You can't guard against the arbitrary."
murphy(89) =  "Never be first.  Never be last.  Never volunteer for anything."
murphy(90) =  "Good judgement comes from bad experience.  Experience comes from bad judgement."
murphy(91) =  "Given a bad start, trouble will increase at an exponential rate."
murphy(92) =  "Quantity is inversely proportional to quality."
murphy(93) =  "There's never time to do it right, but there's always time to do it over."
murphy(94) =  "Almost anything is easier to get into than to get out of."
murphy(95) =  "Urgency varies inversely with importance."
murphy(96) =  "Never do anything you wouldn't be caught dead doing."
murphy(97) =  "All inanimate objects can move just enough to get in your way."
murphy(98) =  "An object will fall so as to do the most damage."
murphy(99) =  "The effort to catch a falling, breakable object will produce more destruction than if the object had been allowed to fall in the first place."
murphy(100) =  "No real problem has a solution."
murphy(101) =  "A good solution can be successfully applied to almost any problem."
murphy(102) =  "The solution to a problem changes the nature of the problem."
murphy(103) =  "Error is often more earnest than truth."
murphy(104) =  "When a problem goes away, the people working to solve it do not."
murphy(105) =  "The best laid plans of mice and men are usually about equal."
murphy(106) =  "Nothing ever comes out as planned."
murphy(107) =  "There is nothing so small that it can't be blown out of proportion."
murphy(108) =  "The means justify the means.  The approach to a problem is more important than its solution."
murphy(109) =  "An error in the premise will appear in the conclusion."
murphy(110) =  "It is the dead wood that holds up the tree."
murphy(111) =  "The person with the least expertise has the most opinions."
murphy(112) =  "No boss will keep an employee who is right all the time."
murphy(113) =  "Delay is the deadliest form of denial."
murphy(114) =  "People specialize in their area of greatest weakness."
murphy(115) =  "The length of a progress report is inversely proportional to the amount of progress."
murphy(116) =  "It is easier to get forgiveness than permission."
murphy(117) =  "Don't let your superiors know you're better than they are."
murphy(118) =  "Anyone can make a decision given enough facts. A good manager can make a decision without enough facts. A perfect manager can operate in perfect ignorance."
murphy(119) =  "Never make a decision you can get someone else to make."
murphy(120) =  "Look after the molehills and the mountains will look after themselves."
murphy(121) =  "Spend sufficient time in confirming the need and the need will disappear."
murphy(122) =  "An ounce of image is worth a pound of performance."
murphy(123) =  "People are always available for work in the past tense."
murphy(124) =  "The toughest thing in business is minding your own."
murphy(125) =  "If people listened to themselves more often, they would talk less."
murphy(126) =  "Any simple problem can be made insoluble if enough conferences are held To discuss it."
murphy(127) =  "You can't outtalk a man who knows what he's talking about."
murphy(128) =  "Any issue worth debating is worth avoiding altogether."
murphy(129) =  "If you cannot convince them, confuse them."
murphy(130) =  "Never argue with a fool -- people might not know the difference."
murphy(131) =  "When in doubt, mumble.  When in trouble, delegate.  When in charge, ponder."
murphy(132) =  "Truth varies."
murphy(133) =  "If you can keep your head when all others about you are losing theirs, then you just don't understand the problem."
murphy(134) =  "A fool and your money are soon partners."
murphy(135) =  "Say no, then negotiate."
murphy(136) =  "The secret of success is sincerity.  Once you can fake that, you've got it made."
murphy(137) =  "Nothing is ever done for the right reasons."
murphy(138) =  "If the facts are against you, argue the law. If the law is against you, argue the facts. If the facts and the law are against you, yell like hell."
murphy(139) =  "Where you stand depends on where you sit. Where you sit depends on who you know."
murphy(140) =  "Arrogance is too often the companion of excellence."
murphy(141) =  "Glory may be fleeting, but obscurity is forever."
murphy(142) =  "When the going gets weird, the weird turn pro."
murphy(143) =  "Wisdom consists of knowing when to avoid perfection."
murphy(144) =  "The simplest subjects are the ones you don't know anything about."
murphy(145) =  "Two monologues do not make a dialogue."
murphy(146) =  "In every work of genius we recognize our rejected thoughts."
murphy(147) =  "If you consult enough experts you can confirm any opinion."
murphy(148) =  "Never speculate on that which can be known for certain."
murphy(149) =  "To decide not to decide is a decision.  To fail to decide is a failure."
murphy(150) =  "Any simple idea will be worded in the most complicated way."
murphy(151) =  "Always leave room to add an explanation if it doesn't work out."
murphy(152) =  "The only way to discover the limits of the possible is to go beyond them into the impossible."
murphy(153) =  "Any sufficiently advanced technology is indistinguishable from magic."
murphy(154) =  "An expert is anyone from out of town."
murphy(155) =  "If it sits on your desk for fifteen minutes, you've just become the expert."
murphy(156) =  "Indecision is the basis for flexibility."
murphy(157) =  "Hindsight is an exact science."
murphy(158) =  "Never create a problem for which you do not have the answer."
murphy(159) =  "Create problems for which only you have the answer."
murphy(160) =  "A conclusion is the place where you got tired of thinking."
murphy(161) =  "Fact is solidified opinion.  Facts may weaken under extreme pressure. Truth is elastic."
murphy(162) =  "When in trouble, obfuscate."
murphy(163) =  "It is a simple task to make things complex, but a complex task to make them simple."
murphy(164) =  "If you have a difficult task, give it to a lazy man -- he will find an easier way to do it."
murphy(165) =  "Effort * Time = Constant"
murphy(166) =  "In America, it's not how much an item costs, it's how much you save."
murphy(167) =  "If anything is used to its full potential, it will break."
murphy(168) =  "The easier it is to do, the harder it is to change."
murphy(169) =  "If you understand it, it's obsolete."
murphy(170) =  "Variables won't; constants aren't."
murphy(171) =  "Machines should work; people should think."
murphy(172) =  "Anything is easier to take apart than to put together."
murphy(173) =  "That which cannot be taken apart will fall apart."
murphy(174) =  "The chaos in the universe always increases."
murphy(175) =  "If it jams -- force it.  If it breaks, it needed replacing anyway."
murphy(176) =  "Push something hard enough and it will fall over."
murphy(177) =  "When all else fails, read the instructions."
murphy(178) =  "Enough research will tend to support your theory."
murphy(179) =  "If the facts do not conform to the theory, they must be disposed of."
murphy(180) =  "If enough data are collected, anything may be proven by statistical methods."
murphy(181) =  "If an experiment works, something has gone wrong."
murphy(182) =  "No matter what the anticipated result, there will always be someone eager to (a) misinterpret it (b) fake it, Or (c) believe it happened To their own pet theory."
murphy(183) =  "In any collection of data, the figure most obviously correct, beyond all need of checking, is the mistake."
murphy(184) =  "Once a job is fouled up, anything done to improve it only makes it worse."
murphy(185) =  "To study a subject best, understand it thoroughly before you start."
murphy(186) =  "Always keep a record of data -- it indicates you've been working."
murphy(187) =  "Always draw your curves, then plot your readings."
murphy(188) =  "In  doubt, make it sound convincing."
murphy(189) =  "Experiments should be reproducible -- they should all fail in the same way."
murphy(190) =  "Do not believe in miracles -- rely on them."
murphy(191) =  "When working toward the solution of a problem, it always helps if you know the answer."
murphy(192) =  "All great discoveries are made by mistake."
murphy(193) =  "Never replicate a successful experiment."
murphy(194) =  "No experiment is reproducible."
murphy(195) =  "No experiment is ever a complete failure -- it can always serve as a negative example."
murphy(196) =  "The progress of science varies inversely with the number of journals published."
murphy(197) =  "Nature abhors a vacuous experimenter."
murphy(198) =  "Only a fool can reproduce another fool's work."
murphy(199) =  "The most interesting results happen only once."
murphy(200) =  "Repetition does not establish validity."
murphy(201) =  "If it's green or wriggles, it's biology."
murphy(202) =  "If it stinks, it's chemistry."
murphy(203) =  "If it doesn't work, it's physics."
murphy(204) =  "If it's incomprehensible, it's mathematics."
murphy(205) =  "If it doesn't make sense, it's either economics or psychology."
murphy(206) =  "Asking scientists to revise their theory is like asking cops to revise the law."
murphy(207) =  "The advance of science can be measured by the rate at which exceptions to previously held laws accumulate."
murphy(208) =  "The shorter the life of the particle, the more it costs to produce."
murphy(209) =  "The basic building blocks of matter do not occur in nature."
murphy(210) =  "Don't believe the thirty-third order consequences of a first-order model. 'Cum grano salis'"
murphy(211) =  "Don't extrapolate beyond the region of fit. Don't go off the deep end."
murphy(212) =  "Don't apply any model until you understand the simplifying assumptions on which it is based and can test their applicability. 'Use only as directed.'"
murphy(213) =  "Don't believe that the model is the reality. 'Don't eat the menu.'"
murphy(214) =  "Don't distort reality to fit the model. The 'Procrustes Method.'"
murphy(215) =  "Don't limit yourself to a single model. 'Legalize polygamy.'"
murphy(216) =  "Don't retain a discredited model. 'Don't beat a dead horse.'"
murphy(217) =  "Don't fall in love with your model. 'Pygmalion.'"
murphy(218) =  "Don't apply the terminology of Subject A to the problems of Subject B if it is to the enrichment of neither. 'New names for old.'"
murphy(219) =  "Don't expect that by having named a demon you have destroyed him. 'Rumpelstiltskin.'"
murphy(220) =  "Hot glass looks exactly the same as cold glass."
murphy(221) =  "To steal ideas from one person is plagiarism; to steal from many is research."
murphy(222) =  "History is the science of what never happens twice."
murphy(223) =  "If you do not understand a particular word in a piece of technical writing, ignore it.  The piece will make perfect sense without it."
murphy(224) =  "When you do not know what you are doing, do it neatly."
murphy(225) =  "Teamwork is essential.  It allows you to blame someone else."
murphy(226) =  "Science is true.  Don't be mislead by facts."
murphy(227) =  "If reproducibility may be a problem, conduct the test only once."
murphy(228) =  "If a straight line fit is required, obtain only two data points."
murphy(229) =  "Any technical problem can be overcome given enough time and money."
murphy(230) =  "An easily understood, workable falsehood is more useful than a complex, incomprehensible truth."
murphy(231) =  "If a scientist uncovers a publishable fact, it will become central to his theory."
murphy(232) =  "There is no such thing as a straight line."
murphy(233) =  "In any series of calculations, errors tend to occur at the opposite end from which you begin checking."
murphy(234) =  "One man's error is another man's data."
murphy(235) =  "To err is human, but to really foul things up requires a computer."
murphy(236) =  "A computer program does what you tell it to do, not what you want it to do."
murphy(237) =  "The most useless computer tasks are the most fun to do."
murphy(238) =  "When putting it into memory, remember where you put it."
murphy(239) =  "Never test for an error condition you don't know how to handle."
murphy(240) =  "Any given program, when running, is obsolete."
murphy(241) =  "Any given program costs more and takes longer."
murphy(242) =  "If a program is useful, it will have to be changed."
murphy(243) =  "If a program is useless, it will have to be documented."
murphy(244) =  "Any given program will expand to fill all available memory."
murphy(245) =  "The value of a program is proportional to the weight of its output."
murphy(246) =  "Program complexity grows until it exceeds the capability of the programmer who must maintain it."
murphy(247) =  "Computers are unreliable, but humans are even more unreliable."
murphy(248) =  "Any system that depends on human reliability is unreliable."
murphy(249) =  "There's always one more bug."
murphy(250) =  "Those who can, do.  Those who cannot, teach. Those who cannot teach, administrate."
murphy(251) =  "No one is listening until you make a mistake."
murphy(252) =  "There are no answers, only cross-references."
murphy(253) =  "When reviewing your notes for an exam, the most important ones will be illegible."
murphy(254) =  "The more studying you did for the exam, the less sure you are as to which answer they want."
murphy(255) =  "Every instructor assumes that you have nothing else to do except study for that instructor's course."
murphy(256) =  "In your toughest final, the most distractingly attractive student in class will sit next to you for the first time."
murphy(257) =  "You never catch on until after the test."
murphy(258) =  "The most valuable quotation will be the one for which you cannot determine the source."
murphy(259) =  "The more general the title of a course, the less you will learn from it."
murphy(260) =  "The more specific a title is, the less you will be able to apply it later."
murphy(261) =  "There's no time like the present for postponing what you don't want to do."
murphy(262) =  "Any task worth doing was worth doing yesterday."
murphy(263) =  "Assumption is the mother of all screw-ups."
murphy(264) =  "Beware of a day in which you don't have something to bitch about."
murphy(265) =  "He who hesitates is probably right."
murphy(266) =  "Asking dumb questions is easier than correcting dumb mistakes."
murphy(267) =  "When all else fails, try the boss' suggestion."
murphy(268) =  "If you are given two contradictory orders, obey them both."
murphy(269) =  "The one who does the least work will get the most credit."
murphy(270) =  "The slower one works, the fewer mistakes one makes."
murphy(271) =  "Free time that unexpectedly becomes available will be wasted."
murphy(272) =  "It's worth scheming to be the bearer of good news."
murphy(273) =  "Do someone a favor and it becomes your job."
murphy(274) =  "It's difficult to soar with eagles when you work with turkeys."
murphy(275) =  "If you're early, it will be canceled. If you knock yourself out to be on time, you'll have to wait. If you're late, you'll be too late."
murphy(276) =  "Good times end too quickly.  Bad times go on forever."
murphy(277) =  "Whatever happens, look as if it was intended."
murphy(278) =  "Bad habits ill cancel out good ones."
murphy(279) =  "The degree to which you overreact to information will be in inverse proportion to its accuracy."
murphy(280) =  "You remember to mail a letter only when you're nowhere near a mailbox."
murphy(281) =  "A doctor can bury his mistakes, but an architect can only advise the client to plant vines."
murphy(282) =  "You can only be young once, but you can be immature forever."
murphy(283) =  "The length of a marriage is inversely proportional to the amount spent on the wedding."
murphy(284) =  "Never get excited about a blind date because of how she sounds over the phone."
murphy(285) =  "Never get excited about a person because of how she looks like from behind."
murphy(286) =  "All probabilities are 50 percent.  Either a thing will happen or it won't. This is especially true when dealing with women. Likelihoods, however, are 90 percent against you."
murphy(287) =  "The better the relationship starts out, the faster it fades."
murphy(288) =  "Virtue is its own punishment."
murphy(289) =  "The one day you'd sell your soul for something, souls are a glut."
murphy(290) =  "When opportunity knocks, you've got headphones on."
murphy(291) =  "To err is human -- to blame it on someone else is even more human."
murphy(292) =  "Celibacy is not hereditary."
murphy(293) =  "Necessity is the mother of strange bedfellows."
murphy(294) =  "Never sleep with anyone crazier than yourself."
murphy(295) =  "Beauty times brains equals a constant."
murphy(296) =  "Beauty is only skin deep, but ugly goes clean to the bone."
murphy(297) =  "Anything good in life is either illegal, immoral, or fattening."
murphy(298) =  "The total amount of evil in any system remains constant."
murphy(299) =  "Everybody should believe in something -- I believe I'll have another drink."
murphy(300) =  "To make an enemy, do someone a favor."
murphy(301) =  "Don't get mad -- get even."
murphy(302) =  "Friends come and go, but enemies accumulate."
murphy(303) =  "Hell is others."
murphy(304) =  "There are two things on earth that are universal:  hydrogen and stupidity."
murphy(305) =  "For every '10' there are ten '1's."
murphy(306) =  "There is nothing wrong with sex on the television, just as long as you don't fall off."
murphy(307) =  "Only adults have difficulty with childproof bottles."
murphy(308) =  "Successful research attracts the bigger grant, which makes further research impossible."
murphy(309) =  "An alcoholic is a person who drinks more than his own physician."
murphy(310) =  "Never leave hold of what you've got until you've got hold of something else."
murphy(311) =  "When it gets to be your turn, they change the rules."
murphy(312) =  "Never do card tricks for the group you play poker with."
murphy(313) =  "The sooner you fall behind, the more time you will have to catch up."
murphy(314) =  "The one who least wants to play is the one who will win."
murphy(315) =  "Nobody loves a winner who wins all the time."
murphy(316) =  "No matter where you go, there you are!"
murphy(317) =  "Nothing can be done in one trip."
murphy(318) =  "You never really learn to swear until you learn to drive."
murphy(319) =  "Insurance covers everything except what happens."
murphy(320) =  "The possibility of getting lost is directly proportional to the number of times the direction giver says, 'You can't miss it.'"
murphy(321) =  "The more food you prepare, the less your guests eat."
murphy(322) =  "Anything is edible if it is chopped finely enough."
murphy(323) =  "Housework is what nobody notices unless it's not done."
murphy(324) =  "A lost tool will be found immediately upon purchasing a new one."
murphy(325) =  "When you dial a wrong number, you never get a busy signal."
murphy(326) =  "Whenever you turn on the radio, you hear the last few notes of your favorite song."
murphy(327) =  "Never invest in anything that eats."
murphy(328) =  "People will buy anything that's one to a customer."
murphy(329) =  "Experience is something you don't get until just after you need it."
murphy(330) =  "Most well-trodden paths lead nowhere."
murphy(331) =  "The wise are pleased when they discover truth, fools when they discover falsehood."
murphy(332) =  "The only people who find what they are looking for in life are the fault-finders."
murphy(333) =  "You will save yourself a lot of needless worry if you don't burn your bridges until you come to them."
murphy(334) =  "What you resist, you become."
murphy(335) =  "Knowledge based on external advice is unreliable."
murphy(336) =  "Logic can never decide what is possible or impossible."
murphy(337) =  "Memory serves its own master."
murphy(338) =  "There is nothing more respectable than an ancient evil."
murphy(339) =  "The only real errors are human errors."
murphy(340) =  "There is no such thing as an instant experience."
murphy(341) =  "Believing is seeing."
murphy(342) =  "Life can only be understood backwards, but it must be lived forward."
murphy(343) =  "All laws, whether good, bad, or indifferent, must be obeyed to the letter."
murphy(344) =  "All laws are simulations of reality."
murphy(345) =  "If it's worth doing, it's worth overdoing."
murphy(346) =  "There are some things that are impossible to know -- but it is impossible to know these things."
murphy(347) =  "Disorder expands proportionately to the tolerance for it."
murphy(348) =  "The only imperfect thing in nature is the human race."
murphy(349) =  "Man will occasionally stumble over the truth, but most of the time he will pick himself up and continue on."
murphy(350) =  "A bird in the hand is safer than one overhead."
murphy(351)= "It's better to have a horrible ending than to have horrors without end."
   end sub
