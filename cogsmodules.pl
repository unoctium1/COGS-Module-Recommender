:- use_module(library(aggregate)).

% ALL MODULES:
% Course    Faculty     Prereqs											Equivalents
% ANTH 417  ARTS		ANTH 100, LING 200
% ASIA 371  ARTS 														PHIL 371
% ASIA 378	ARTS														PHIL 378
% ASIA 470	ARTS														PHIL 470
% AUDI 402  AUDIOLOGY	ONE OF: PSYC 367, PSYC 368, LING 313, LING 314								
% AUDI 403	AUDIOLOGY	LING 200, LING 201, AUDI 402
% BIOL 361  SCIENCE		BIOL 200										
% BIOL 455  SCIENCE		ONE OF: BIOL 361, 362, 364, CAPS 301, PSYC 360
% BIOL 458  SCIENCE 	
% BIOL 459	SCIENCE		BIOL 455
% CPSC 304	SCIENCE		CPSC 221 or CPSC 260 and EECE 320, and ONE OF: CPSC 210, EECE 210, 309
% CPSC 310	SCIENCE		CPSC 210
% CPSC 311	SCIENCE		CPSC 210
% CPSC 312	SCIENCE		ONE OF: CPSC 210, EECE 210, EECE 309, CPEN 221
% CPSC 313 	SCIENCE 	CPSC 213, 221, or CPSC 210, 213, 260 EECE 320
% CPSC 314 	SCIENCE		ONE OF: MATH 200, 253, and ONE OF: MATH 152, 221,223 and CPSC 221 or CPSC 260 and EECE 320
% CPSC 317 	SCIENCE		CPSC 213 and CPSC 221 or CPSC 210, 260, EECE 320
% CPSC 319	SCIENCE		CPSC 310
% CPSC 320	SCIENCE		CPSC 221 or CPSC 260, EECE 320 and 2 MATH or STATS 200+ level courses
% CPSC 322	SCIENCE		CPSC 221 or CPSC 260, EECE 320, and ONE OF: CPSC 210, EECE 210, EECE 309
% CPSC 340  SCIENCE		ONE OF: MATH 152, 221, 223 and ONE OF: STAT 200, 203, 241, 251, 302, MATH 302, 318, BIOL 300 and CPSC 221 or CPSC 260, EECE 320 and ONE OF: CPSC 210, EECE 210, EECE 309
% CPSC 344	SCIENCE		ONE OF: CPSC 213, EECE 210, 309, CPEN 221
% CPSC 404	SCIENCE		CPSC 310 or ONE OF: EECE 310, CPEN 321, and ONE OF: EECE 315, CPEN 331
% CPSC 416	SCIENCE		ONE OF: CPSC 313, EECE 315, CPEN 331, and ONE OF: CPSC 317, EECE 358, ELEC 331
% CPSC 420	SCIENCE		CPSC 320
% CPSC 421	SCIENCE		CPSC 221 or CPSC 260, EECE 320
% CPSC 422	SCIENCE		CPSC 312, CPSC 322
% CPSC 425	SCIENCE		MATH 200, MATH 221, and CPSC 221 or CPSC 360, EECE 320
% CPSC 430	SCIENCE		3 credits of CPSC, and 3rd year standing
% CPSC 444	SCIENCE		CPSC 310, CPSC 344, ONE OF: STAT 200, 241
% CPSC 445	SCIENCE		CPSC 320, 6 credits BIOL, not BIOL 111
% LING 300	ARTS		LING 201
% LING 311	ARTS		LING 200
% LING 313	ARTS		LING 200
% LING 314	ARTS		LING 313
% LING 319	ARTS		LING 200, LING 201
% LING 327	ARTS		LING 201
% LING 345	ARTS		ONE OF: LING 201, ENGL 331, PHIL 220
% LING 405	ARTS		LING 300, LING 311
% LING 410	ARTS		LING 311
% LING 421	ARTS		LING 300
% LING 425	ARTS		LING 327 or PHIL 220
% LING 431	ARTS		LING 300, LING 311
% LING 432	ARTS		LING 431
% LING 447	ARTS
% LING 451	ARTS		LING 222, LING 311
% LING 452	ARTS		LING 222, LING 300
% MATH 302	SCIENCE		ONE OF: MATH 200, 217, 226, 253, 263			STAT 302
% MATH 303	SCIENCE		ONE OF: MATH 302, STAT 302
% MATH 344	SCIENCE		(MATH 152 or MATH 221 and ONE OF: MATH 220, 226, CPSC 121) or MATH 223
% MATH 443	SCIENCE		ONE OF: MATH 220, 226, CPSC 121 and 6 MATH 300-level credits
% MECH 421	APL. SCI 	METH 366, COREQ: MECH 420
% MUSC 320	MUSC		MUSC 319
% MUSC 415	MUSC		MUSC 201, MUSC 210
% PHIL 320	ARTS		PHIL 220
% PHIL 321	ARTS		ONE OF: PHIL 125, 220
% PHIL 322	ARTS		PHIL 220
% PHIL 323	ARTS		PHIL 220
% PHIL 326	ARTS		PHIL 220 or LING 201 and 6 PHIL or LING 200-level credits
% PHIL 333	ARTS		
% PHIL 340	ARTS
% PHIL 369	ARTS
% PHIL 441	ARTS		PHIL 240 or COGS 200 and 3 200-level PHIL credits
% PHIL 450	ARTS		9 200-level PHIL credits
% PHIL 451	ARTS		PHIL 240 or COGS 200 and 3 200-level PHIL credits
% PHIL 455	ARTS		PHIL 240 or COGS 200 and 3 200-level PHIL credits
% PHIL 470	ARTS															ASIA 470
% PSYC 304	ARTS		PSYC 100 or PSYC 101, 102, or TWO OF: PSYC 207, 208, 217, 218, or PSYC 260
% PSYC 309	ARTS		PSYC 100 or PSYC 101, 102, or 6 200-level PSYC credits
% PSYC 321	ARTS		PSYC 100 or TWO OF: PSYC 101, 102, 205, 207, 208, 216, 217
% PSYC 333	ARTS		PSYC 100 or PSYC 101, 102 or 6 200-level PSYC credits
% PSYC 336	ARTS		PYSC 100 or PSYC 101, 102 or ENGL 329 or LING 420 or LING 200, 201
% PSYC 359	ARTS		PSYC 217, 218 or PSYC 366
% PSYC 366	ARTS		PYSC 260
% PSYC 367	ARTS		PSYC 100 or PSYC 101, 102, or 6 200-level PSYC credits
% PSYC 368	ARTS		PSYC 367
% PSYC 370	ARTS		ONE OF: PSYC 260, 270 and ONE OF: PSYC 217, 277, and ONE OF: PSYC 218, 278
% PSYC 371	ARTS		PSYC 370
% PSYC 460	ARTS		ONE OF: PSYC 304, 360
% PSYC 461	ARTS		ONE OF: PSYC 304, 360, 460
% PSYC 462	ARTS		ONE OF: PSYC 304, 360
% STAT 302	SCIENCE		ONE OF: MATH 200, 226, 217, 253, 263				MATH 302
% STAT 306	SCIENCE		ONE OF: MATH 152, 221, 223, and ONE OF: MATH 302, STAT 302 and ONE OF: STAT 200, 241, 251, 300, BIOL 300, COMM 291, ECON 325, 327, FRST 231, PYSC 218, 278, 366
% STAT 344	SCIENCE		ONE OF: STAT 200, 241, 251, BIOL 300, COMM 291, ECON 325, 327, FRST 231, PSYC 218, 278, 366 COREQS: MATH 302, or STAT 302
% STAT 406	SCIENCE		STAT 306 or CPSC 340

:- dynamic hasTaken/1.

% faculty(course(A,B),C) is true if course(A,B) is in faculty C
faculty(course(anth, _),arts).
faculty(course(asia, _),arts).
faculty(course(econ, _),arts).
faculty(course(ling, _),arts).
faculty(course(phil, _),arts).
faculty(course(psyc, _),arts).
faculty(course(biol, _),science).
faculty(course(caps, _),science).
faculty(course(cpsc, _),science).
faculty(course(math, _),science).
faculty(course(stat, _),science).
faculty(course(mech, _),appliedscience).
faculty(course(eece, _),appliedscience).
faculty(course(elec, _),appliedscience).
faculty(course(X,_),X) :- 
	dif(X,Y),
	\+ faculty(course(X,_),Y).

% isModule(course(A,B)) is true if course(A,B) is a module
isModule(course(anth,417)).
isModule(course(asia,371)).
isModule(course(asia,378)).
isModule(course(asia,470)).
isModule(course(audi,402)).
isModule(course(audi,403)).
isModule(course(biol,361)).
isModule(course(biol,455)).
isModule(course(biol,458)).
isModule(course(biol,459)).
isModule(course(cpsc,304)).
isModule(course(cpsc,310)).
isModule(course(cpsc,311)).
isModule(course(cpsc,312)).
isModule(course(cpsc,313)).
isModule(course(cpsc,314)).
isModule(course(cpsc,317)).
isModule(course(cpsc,319)).
isModule(course(cpsc,320)).
isModule(course(cpsc,322)).
isModule(course(cpsc,340)).
isModule(course(cpsc,344)).
isModule(course(cpsc,404)).
isModule(course(cpsc,416)).
isModule(course(cpsc,420)).
isModule(course(cpsc,421)).
isModule(course(cpsc,422)).
isModule(course(cpsc,425)).
isModule(course(cpsc,430)).
isModule(course(cpsc,444)).
isModule(course(cpsc,445)).
isModule(course(ling,300)).
isModule(course(ling,311)).
isModule(course(ling,313)).
isModule(course(ling,314)).
isModule(course(ling,319)).
isModule(course(ling,327)).
isModule(course(ling,345)).
isModule(course(ling,405)).
isModule(course(ling,410)).
isModule(course(ling,421)).
isModule(course(ling,425)).
isModule(course(ling,431)).
isModule(course(ling,432)).
isModule(course(ling,447)).
isModule(course(ling,451)).
isModule(course(ling,452)).
isModule(course(math,302)).
isModule(course(math,303)).
isModule(course(math,344)).
isModule(course(math,443)).
isModule(course(mech,421)).
isModule(course(musc,320)).
isModule(course(musc,415)).
isModule(course(phil,320)).
isModule(course(phil,321)).
isModule(course(phil,322)).
isModule(course(phil,323)).
isModule(course(phil,326)).
isModule(course(phil,333)).
isModule(course(phil,340)).
isModule(course(phil,369)).
isModule(course(phil,441)).
isModule(course(phil,450)).
isModule(course(phil,451)).
isModule(course(phil,455)).
isModule(course(phil,470)).
isModule(course(psyc,304)).
isModule(course(psyc,309)).
isModule(course(psyc,321)).
isModule(course(psyc,333)).
isModule(course(psyc,336)).
isModule(course(psyc,359)).
isModule(course(psyc,366)).
isModule(course(psyc,367)).
isModule(course(psyc,368)).
isModule(course(psyc,370)).
isModule(course(psyc,371)).
isModule(course(psyc,460)).
isModule(course(psyc,461)).
isModule(course(psyc,462)).
isModule(course(stat,302)).
isModule(course(stat,306)).
isModule(course(stat,344)).
isModule(course(stat,406)).

course(cpsc, 100).
	
% requires(X,Y) is true if course X requires courses Y
requires(course(anth,417),[course(ling,200),course(anth,100)]).
requires(course(audi,402),[Y]) :- member(Y,[course(psyc,367),course(psyc,368),course(ling,313),course(ling,314)]).
requires(course(audi,403),[course(ling,200),course(ling,201),course(audi,402)]).
requires(course(biol,361),[course(biol,200)]).
requires(course(biol,455),[Y]) :- member(Y,[course(biol,361),course(biol,362),course(biol,364),course(caps,301),course(psyc,360)]).					
requires(course(biol,459),[course(psyc,455)]).
requires(course(cpsc,304),[course(cpsc,221),Y]) :- member(Y,[course(cpsc,210),course(eece,210),course(eece,309)]).
requires(course(cpsc,304),[course(cpsc,260),course(eece,320),Y]) :- member(Y,[course(cpsc,210),course(eece,210),course(eece,309)]).
requires(course(cpsc,310),[course(cpsc,210)]).
requires(course(cpsc,311),[course(cpsc,210)]).
requires(course(cpsc,312),[Y]) :- member(Y,[course(cpsc,210),course(eece,210),course(eece,309),course(cpen,221)]).
requires(course(cpsc,313),[course(cpsc,213),course(cpsc,221)]).
requires(course(cpsc,313),[course(cpsc,210),course(cpsc,213),cpurse(cpsc,260),course(eece,320)]).
requires(course(cpsc,314),[course(cpsc,221),X,Y]) :- 
	member(X,[course(math,200),course(math,253)]),
	member(Y,[course(math,152),course(math,221),course(math,223)]).
requires(course(cpsc,314),[course(cpsc,260),course(eece,320),X,Y]) :- 
	member(X,[course(math,200),course(math,253)]),
	member(Y,[course(math,152),course(math,221),course(math,223)]).
requires(course(cpsc,317),[course(cpsc,213),course(cpsc,221)]).
requires(course(cpsc,317),[course(cpsc,213),course(cpsc,210),course(cpsc,260),course(eece,320)]).
requires(course(cpsc,319),[course(cpsc,310)]).

% Ask in office hours
requires(course(cpsc,320),[course(cpsc,221),course(X,Y),course(A,B)]) :-
	member(X,[stat,math]),
	member(A,[stat,math]),
	number(Y),
	number(B),
	Y >= 200,
	B >= 200.
requires(course(cpsc,320),[course(cpsc,260),course(eece,320),course(X,Y),course(A,B)]) :-
	member(X,[stat,math]),
	member(A,[stat,math]),
	number(Y),
	number(B),
	Y >= 200,
	B >= 200.

requires(course(cpsc,322),[course(cpsc,221),Y]) :- member(Y,[course(cpsc,210),course(eece,210),course(eece,309)]).
requires(course(cpsc,322),[course(cpsc,260),course(eece,320),Y]) :- member(Y,[course(cpsc,210),course(eece,210),course(eece,309)]).		
requires(course(cpsc,340),[course(cpsc,221),X,Y]) :-
	member(X,[course(math,152),course(math,221),course(math,223)]),
	member(Y,[course(math,302),course(math,318),course(biol,300),course(stat,200),course(stat,203),course(stat,241),course(stat,251),course(stat,302)]).
requires(course(cpsc,340),[course(cpsc,260),course(eece,320),X,Y,Z]) :-
	member(X,[course(math,152),course(math,221),course(math,223)]),
	member(Y,[course(math,302),course(math,318),course(biol,300),course(stat,200),course(stat,203),course(stat,241),course(stat,251),course(stat,302)]),
	member(Z,[course(cpsc,210),course(eece,210),course(eece,309)]).
requires(course(cpsc,344),[Y]) :- member(Y,[course(cpsc,213),course(eece,210),course(eece,309),course(cpen,221)]).
requires(course(cpsc,404),[course(cpsc,304),course(cpsc,213)]).	
requires(course(cpsc,404),[course(cpsc,304),course(cpsc,261)]).	
requires(course(cpsc,404),[X,Y]) :-
	member(X,[course(cpsc,313),course(eece,315),course(cpen,331)]),
	member(Y,[course(cpsc,317),course(eece,358),course(elec,331)]).
requires(course(cpsc,420),[course(cpsc,320)]).
requires(course(cpsc,421),[course(cpsc,221)]).
requires(course(cpsc,421),[course(cpsc,260),course(eece,320)]).
requires(course(cpsc,422),[course(cpsc,312),course(cpsc,322)]).
requires(course(cpsc,425),[course(math,200),course(math,221),course(cpsc,221)]).
requires(course(cpsc,425),[course(math,200),course(math,221),course(cpsc,360),course(eece,320)]).

% also 3rd year standing
requires(course(cpsc,430),[course(cpsc,X)]) :-
	number(X).

requires(course(cpsc,444),[course(cpsc,310),course(cpsc,344),course(stat,200)]).
requires(course(cpsc,444),[course(cpsc,310),course(cpsc,344),course(stat,241)]).
requires(course(cpsc,445),[course(cpsc,320),course(biol,X),course(biol,Y)]) :-
	dif(X,Y).
requires(course(ling,300),[course(ling,201)]).
requires(course(ling,311),[course(ling,200)]).
requires(course(ling,313),[course(ling,200)]).
requires(course(ling,314),[course(ling,313)]).
requires(course(ling,319),[course(ling,200),course(ling,201)]).
requires(course(ling,327),[course(ling,201)]).
requires(course(ling,345),[Y]) :- member(Y,[course(ling,201),course(engl,331),course(phil,220)]).
requires(course(ling,405),[course(ling,300),course(ling,311)]).
requires(course(ling,410),[course(ling,311)]).
requires(course(ling,421),[course(ling,300)]).
requires(course(ling,425),[course(ling,327)]).
requires(course(ling,425),[course(phil,220)]).
requires(course(ling,431),[course(ling,300),course(ling,311)]).
requires(course(ling,432),[course(ling,431)]).
requires(course(ling,451),[course(ling,222),course(ling,311)]).
requires(course(ling,452),[course(ling,222),course(ling,300)]).
requires(course(math,302),[Y]) :- member(Y,[course(math,200),course(math,217),course(math,226),course(math,253),course(math,263)]).
requires(course(math,303),[course(math,302)]).
requires(course(math,303),[course(stat,302)]).
requires(course(math,344),[course(math,223)]).
requires(course(math,344),[X,Y]) :-
	member(X,[course(math,152),course(math,221)]),
	member(Y,[course(math,220),course(math,226),course(cpsc,121)]).
requires(course(math,443),[X,course(math,Y),course(math,Z)]) :-
	member(X,[course(math,220),course(math,226),course(cpsc,121)]),
	dif(Y,Z),
	number(Y),
	number(Z),
	Y >= 300,
	Z >= 300.
requires(course(mech,421),[course(mech,366),course(mech,420)]).
requires(course(musc,320),[course(musc,319)]).
requires(course(musc,415),[course(musc,201),course(musc,210)]).
requires(course(phil,320),[course(phil,220)]).
requires(course(phil,321),[course(phil,220)]).
requires(course(phil,321),[course(phil,125)]).
requires(course(phil,322),[course(phil,220)]).
requires(course(phil,323),[course(phil,220)]).
requires(course(phil,326),[course(phil,220),course(A,B),course(C,D)]) :-
	member(A,[phil,ling]),
	member(C,[phil,ling]),
	number(B),
	number(D),
	B >= 200,
	D >= 200.
requires(course(phil,326),[course(ling,201),course(A,B),course(C,D)]) :-
	member(A,[phil,ling]),
	member(C,[phil,ling]),
	number(B),
	number(D),
	B >= 200,
	D >= 200.

% PHIL 441	ARTS		PHIL 240 or COGS 200 and 3 200-level PHIL credits
% PHIL 450	ARTS		9 200-level PHIL credits
% PHIL 451	ARTS		PHIL 240 or COGS 200 and 3 200-level PHIL credits
% PHIL 455	ARTS		PHIL 240 or COGS 200 and 3 200-level PHIL credits
% PHIL 470	ARTS															ASIA 470
% PSYC 304	ARTS		PSYC 100 or PSYC 101, 102, or TWO OF: PSYC 207, 208, 217, 218, or PSYC 260
% PSYC 309	ARTS		PSYC 100 or PSYC 101, 102, or 6 200-level PSYC credits
% PSYC 321	ARTS		PSYC 100 or TWO OF: PSYC 101, 102, 205, 207, 208, 216, 217
% PSYC 333	ARTS		PSYC 100 or PSYC 101, 102 or 6 200-level PSYC credits
% PSYC 336	ARTS		PYSC 100 or PSYC 101, 102 or ENGL 329 or LING 420 or LING 200, 201
% PSYC 359	ARTS		PSYC 217, 218 or PSYC 366
% PSYC 366	ARTS		PYSC 260
% PSYC 367	ARTS		PSYC 100 or PSYC 101, 102, or 6 200-level PSYC credits
% PSYC 368	ARTS		PSYC 367
% PSYC 370	ARTS		ONE OF: PSYC 260, 270 and ONE OF: PSYC 217, 277, and ONE OF: PSYC 218, 278
% PSYC 371	ARTS		PSYC 370
% PSYC 460	ARTS		ONE OF: PSYC 304, 360
% PSYC 461	ARTS		ONE OF: PSYC 304, 360, 460
% PSYC 462	ARTS		ONE OF: PSYC 304, 360
% STAT 302	SCIENCE		ONE OF: MATH 200, 226, 217, 253, 263				MATH 302
% STAT 306	SCIENCE		ONE OF: MATH 152, 221, 223, and ONE OF: MATH 302, STAT 302 and ONE OF: STAT 200, 241, 251, 300, BIOL 300, COMM 291, ECON 325, 327, FRST 231, PYSC 218, 278, 366
% STAT 344	SCIENCE		ONE OF: STAT 200, 241, 251, BIOL 300, COMM 291, ECON 325, 327, FRST 231, PSYC 218, 278, 366 COREQS: MATH 302, or STAT 302
% STAT 406	SCIENCE		STAT 306 or CPSC 340

% isEligible(X) is true if the user has taken all required courses.
isEligible(X) :-
	requires(X,Y),
	foreach(member(H,Y),hasTaken(H)).
isEligible(X) :-
	\+ requires(X,_).
	
% Equivalent courses: hasTaken(X) is true if an equivalent course has been taken	TODO: figure out how to get this to work both ways
% hasTaken(course(math,302)) :- hasTaken(course(stat,302)).
% hasTaken(course(asia,371)) :- hasTaken(course(phil,371)).
% hasTaken(course(asia,378)) :- hasTaken(course(phil,378)).
% hasTaken(course(asia,470)) :- hasTaken(course(phil,470)).

% TODO: refactor to rdf? could be our extra thing and would handle a lot of features much better

% noun_phrase(T0,T4,Ind) is true if
%  T0 and T4 are list of words, such that
%        T4 is an ending of T0
%        the words in T0 before T4 (written T0-T4) form a noun phrase
%  Ind is an individual that the noun phrase is referring to

% A noun phrase is a determiner followed by adjectives followed
% by a noun followed by an optional modifying phrase:
noun_phrase(T0,T4,Ind) :-
    det(T0,T1,Ind),
    adjectives(T1,T2,Ind),
    noun(T2,T3,Ind),
    mp(T3,T4,Ind).

% Determiners (articles) are ignored in this oversimplified example.
% They do not provide any extra constraints.
det([the | T],T,_).
det([a | T],T,_).
det(T,T,_).

% adjectives(T0,T1,Ind) is true if 
% T0-T1 is an adjective is true of Ind
adjectives(T0,T2,Ind) :-
    adj(T0,T1,Ind),
    adjectives(T1,T2,Ind).
adjectives(T,T,_).

% An optional modifying phrase / relative clause is either
% a relation (verb or preposition) followed by a noun_phrase or
% 'that' followed by a relation then a noun_phrase or
% nothing 
mp(T0,T2,Subject) :-
    reln(T0,T1,Subject,Object),
    noun_phrase(T1,T2,Object).
mp([that|T0],T2,Subject) :-
    reln(T0,T1,Subject,Object),
    noun_phrase(T1,T2,Object).
mp(T,T,_).

% DICTIONARY
%adj([large | T],T,Obj) :- large(Obj).
%adj([Lang,speaking | T],T,Obj) :- speaks(Obj,Lang).

%reln([borders | T],T,O1,O2) :- borders(O1,O2).
%reln([the,capital,of | T],T,O1,O2) :- capital(O2,O1).
%reln([next,to | T],T,O1,O2) :- borders(O1,O2).

adj([faculty | T], T, Obj) :- faculty(_, faculty).

% noun([course, Department, Number | T],T,course(Department, Number)) :- course(Department, Number).
noun([course | T], T, course(Department, Number)) :- course(Department, Number).
noun([module, course | T], T, Obj) :- isModule(Obj).

reln([requires | T], T, O1, O2) :- requires(O1, O2).

% question(Question,QR,Object) is true if Query provides an answer about Object to Question
question(['Is' | T0],T2,Obj) :-
    noun_phrase(T0,T1,Obj),
    mp(T1,T2,Obj).
question(['What',is | T0], T1, Obj) :-
    mp(T0,T1,Obj).
question(['What',is | T0],T1,Obj) :-
    noun_phrase(T0,T1,Obj).
question(['What' | T0],T2,Obj) :-
    noun_phrase(T0,T1,Obj),
    mp(T1,T2,Obj).

% ask(Q,A) gives answer A to question Q
ask(Q,A) :-
    question(Q,[],A).
	
% To get the input from a line:

q(Ans) :-
    write("Ask me: "), flush_output(current_output),
    readln(Ln),
    question(Ln,End,Ans),
    member(End,[[],['?'],['.']]).