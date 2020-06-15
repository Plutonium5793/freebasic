 #Include "window9.bi"

dim as integer WM_LBUTTONDOWN,xsize, ysize
declare sub einstein_says()
Dim shared as string einstein(100)
dim shared as integer x


 '-----start------
 Randomize , 1

'' Print a sequence of random numbers
For i As Integer = 1 To 10
    x=int(Rnd *71)
Next

 einstein_says()

Messbox("Einstein says, #"+str(x),einstein(x))

Do
 var event=WaitEvent()
 If event=EventClose Then End
 If event=WM_LBUTTONDOWN Then
 'setgadgettext(1,murphy(x))
  endif
 
loop

 
 '-----end--------
 
 
 sub einstein_says()
 
 Einstein(1)= "Gravitation can not be held responsible for people falling in love."
 Einstein(2)= "Things should be made as simple as possible, but not any simpler."
 Einstein(3)= "Sometimes one pays most for the things one gets for nothing."
 Einstein(4)= "Science without religion is lame, religion without science is blind."
 Einstein(5)= "God does not play dice with the universe."
 Einstein(6)= "Common sense is the collection of prejudices acquired by age 18."
 Einstein(7)= "Problems cannot be solved at the same level of awareness that created them."
 Einstein(8)= "When the solution is simple, God is answering."
Einstein(9)= "I want to know God's thoughts . . . the rest are details."
 Einstein(10)= "The only source of knowledge is experience."
 Einstein(11)= "Nationalism is an infantile sickness.  It is the measles of the human race."
 Einstein(12)=  "The whole of science is nothing more than a refinement of everyday thinking."
 Einstein(13)= "The only reason for time is so that everything doesn't happen at once."
 Einstein(14)=  "I never think of the future. It comes soon enough."
 Einstein(15)=  "It is only to the individual that a soul is given."
 Einstein(16)= "Try not to become a man of success but rather to become a man of value."
 Einstein(17)=  "If you are out to describe the truth, leave elegance to the tailor."
 Einstein(18)=  "What is inconceivable about the universe is that it is at all conceivable."
 Einstein(19)=  "Strange is our situation here upon earth."
 Einstein(20)=  "Weakness of attitude becomes weakness of character."
 Einstein(21)=  "Too many of us look upon Americans as dollar chasers.  This is a cruel libel, even If it is reiterated thoughtlessly by the Americans themselves."
 Einstein(22)= "If my theory of relativity is proven successful, Germany will claim me as a German and France will declare that I am a citizen of the world."
 Einstein(23)= "All our lauded technological progress -- our very civilization -- is like the axe in the hand of the pathological criminal."
 Einstein(24)= "My life is a simple thing that would interest no one. It is a known fact that I was born and that is all that is necessary."
 Einstein(25)= "As far as the laws of mathematics refer to reality, they are not certain, and as far as they are certain, they do not refer to reality."
 Einstein(26)= "Nothing will benefit human health and increase the chances for survival of life on Earth as much as the evolution to a vegetarian diet."
 Einstein(27)= "Only two things are infinite, the universe and human stupidity, and I'm not sure about the former."
 Einstein(28)= "Peace cannot be achieved through violence, it can only be attained through understanding."
 Einstein(29)= "Do not worry about your difficulties in mathematics; I can assure you that mine are still greater."
 Einstein(30)="If we knew what it was we were doing, it would not be called research, would it?"
Einstein(31)= "A table, a chair, a bowl of fruit and a violin; what else does a man need to be happy?"
 Einstein(32)="Politics is a pendulum whose swings between anarchy and tyranny are fueled by perpetually rejuvenated illusions."
 Einstein(33)= "Force always attracts men of low morality, and I believe it to be an invariable rule that tyrants of genius are succeeded by scoundrels."
Einstein(34)= "In order to be an immaculate member of a flock of sheep, one must above all be a sheep oneself."
 Einstein(35)= "If A equals success, then the formula is:  A=X+Y+Z.  X is work.  Y is play. Z is keep your mouth shut."
 Einstein(36)= "We should take care not to make the intellect our god; it has, of course, powerful muscles, but no personality."
 Einstein(37)= "Perfections of mean and confusion of goals seem -in my opinion- to characterize our age."
 Einstein(38)= "The fear of death is the most unjustified of all fears, for there's no risk of accident for someone who's dead."
 Einstein(39)= "The real problem is in the hearts and minds of men.  It is easier to denature plutonium than to denature the evil spirit of man."
 Einstein(40)= "Great spirits have often encountered violent opposition from mediocre minds.  The latter cannot understand it when a man does not thoughtlessly submit to hereditary prejudices but honestly and courageously uses his intelligence."
 Einstein(41)= "Where the world ceases to be the scene of our personal hopes and wishes, where we face it as free beings admiring, asking and observing, there we enter the realm of Art and Science."
 Einstein(42)= "Watch the stars, and from them learn.  To the Master's honor all must turn, each in its track, without a sound, forever tracing Newton's ground."
 Einstein(43)= "When asked how World War III would be fought, Einstein replied that he didn't know. But he knew how World War IV would be fought: with sticks and stones!"
 Einstein(44)= "Put your hand on a hot stove for a minute, and it seems like an hour.  Sit With a pretty girl For an hour, and it seems like a minute. THAT'S relativity."
 Einstein(45)= "If I were not a physicist, I would probably be a musician.  I often think in music.  I live my daydreams in music.  I see my life in terms of music....  I get most joy in life out of music."
 Einstein(46)="The religion of the future will be a cosmic religion. The religion which based on experience, which refuses dogmatic. If there's any religion that would cope the scientific needs it will be Buddhism."
 Einstein(47)= "When I examine myself and my methods of thought, I come to the conclusion that the gift of fantasy has meant more to me than any talent For abstract, positive thinking."
 Einstein(48)= "I am enough of an artist to draw freely upon my imagination.  Imagination is more important than knowledge.  Knowledge is limited. Imagination encircles the world."
 Einstein(49)= "The wireless telegraph is not difficult to understand. The ordinary telegraph is like a very long cat. You pull the tail in New York, And it meows in Los Angeles. The wireless is the same, only without the cat."
 Einstein(50)= "Reading, after a certain age, diverts the mind too much from its creative pursuits.  Any man who read too much and uses his own brain too little falls into lazy habits of thinking."
 Einstein(51)= "Few people are capable of expressing with equanimity opinions which differ from the prejudices of their social environment.  Most people are even incapable of forming such opinions."
 Einstein(52)= "The intuitive mind is a sacred gift and the rational mind is a faithful servant.  We have created a society that honors the servant and has forgotten the gift."
 Einstein(53)= "The ideals which have always shone before me and filled me with the joy of living are goodness, beauty, and truth. To make a goal of comfort or happiness has never appealed to me; a system of ethics built on this basis would be sufficient only For a herd of cattle."
Einstein(54)= "Never regard study as a duty, but as the enviable opportunity to learn to know the liberating influence of beauty in the realm of the spirit For your own personal joy and To the profit of the community to which your later work belongs."                
 Einstein(55)= "The most beautiful thing we can experience is the mysterious.  It is the source of all true art and science.  He To whom this emotion is a stranger, who can no longer wonder and stand rapt in awe, is as good As dead: his eyes are closed."
Einstein(56)= "The point is to develop the childlike inclination for play and the childlike desire for recognition and to guide the child over to important fields For society.  Such a school demands from the teacher that he be a kind of artist in his province."
 Einstein(57)="To me the worst thing seems to be a school principally to work with methods of fear, force And artificial authority.  Such treatment destroys the sound sentiments, the sincerity And the self-confidence of pupils And produces a subservient subject."
Einstein(58)= "One should guard against preaching to young people success in the customary form as the main aim in life.  The most important motive for work in school and in life is pleasure in work, pleasure in its result, and the knowledge of the value of the result To the community."
Einstein(59)= "There's a wonderful family named Stein, There's Ep, there's Gert, And there's Ein. Ep's statues are junk, Gert's poems are bunk, And nobody understands Ein."
 Einstein(60)= "The important thing is not to stop questioning.  Curiosity has its own reason For existing.  One cannot help but be in awe when he contemplates the mysteries of eternity, of life, of the marvelous Structure of reality.  It is enough If one tries merely To comprehend a little of this mystery every day.  Never lose a holy curiosity."
 Einstein(61)= "Desire for approval and recognition is a healthy motive, but the desire to be acknowledged As better, stronger Or more intelligent than a fellow being Or fellow scholar easily leads To an excessively egoistic psychological adjustment, which may become injurious For the individual And For the community."
 Einstein(62)= "Einstein was attending a music salon in Germany before the second  world war, With the violinist S. Suzuki.  Two Japanese women played  a German piece of music And a woman in the audience excaimed:  'How wonderful!  It sounds so German!'  Einstein responded:  'Madam, people are all the same.'"
 Einstein(63)="I cannot conceive of a God who rewards and punishes his creatures, Or has a will of the type of which we are conscious in ourselves. An individual who should survive his physical death is also beyond my comprehension,... ; such notions are for the fears or absurd egoism of feeble souls."
 Einstein(64)= "The discovery of nuclear chain reactions need not bring about the destruction of mankind any more than did the discovery of matches.  We only must do everything in our power To safeguard against its abuse.  Only a supranational organization, equipped With a sufficiently strong executive power, can protect us."
 Einstein(65)= "Unless Americans come to realize that they are not stronger in the world because they have the bomb but weaker because of their vulnerability To atomic attack, they are Not likely To conduct their policy at Lake Success [the United Nations] Or in their relations With Russia in a spirit that furthers the arrival at an understanding. "
 Einstein(66)= "The school has always been the most important means of transferring the wealth of tradition from one generation To the Next. This applies today in an even higher degree than in former times, For through modern development of economic life, the family As bearer of tradition And education has become weakened.  The continuance And health of human society is therefore in a still higher degree dependent on school than formally."
 Einstein(67)= "The human mind is not capable of grasping the Universe.  We are like a little child entering a huge library.  The walls are covered To the ceilings With books in many different tongues.  The child knows that someone must have written these books.  It does Not know who Or how.  It does Not understand the languages in which they are written.  But the child notes a definite plan in the arrangement of the books -- a mysterious order which it does Not  comprehend, but only dimly suspects. "
Einstein(68)= "Nor do I take into account a danger of starting a chain reaction of a scope great enough To destroy part Or all of the planet . . . But it is Not necessary To imagine the earth being destroyed like a nova by a stellar explosion To understand vividly the growing scope of atomic war And To recognize that unless another war is prevented it is likely To bring destruction on a scale never before held possible, And even now hardly conceived, And that little civilization would survive it. "
 Einstein(69)= "With the affairs of active human beings it is different.  Here knowledge of truth alone does Not suffice; on the contrary this knowledge must continually be renewed by ceaseless effort, If it is Not To be lost.  It resembles a statue of marble which stands in the desert And is continuously threatened With burial by the shifting sands. The hands of science must ever be at work in order that the marble column Continue everlastingly To shine in the sun. To those serving hands mine also belong."
 Einstein(70)= "Man tries to make for himself in the fashion that suits him best a simplified And intelligible picture of the world; he then tries to some extent to substitute this cosmos of his For the world of experience, And thus To overcome it.  This is what the painter, the poet, the speculative philosopher, And the natural scientists do, each in his own fashion.  Each makes this cosmos And its construction the pivot of his emotional life, in order To find in this way peace And security which he can Not find in the narrow whirlpool of personal experience."
 Einstein(71)= "A human being is part of a whole, called by us the 'Universe,' a part limited  in time And space.  He experiences himself, his thoughts And feelings, As something separated from the rest -- a kind of optical delusion of his consciousness.  This delusion is a kind of prison For us, restricting us To our personal desires And To affection For a few persons nearest us.  Our task must be To free ourselves from this prison by widening our circles of compassion To embrace all living creatures And the whole of nature in its beauty."

end sub
