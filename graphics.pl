:- use_module(library(pce)).

helloWorld(P) :-
	new(P,picture('hello world')),
	send(P, display, text('Hello World'), point(20, 20)),
	send(@prolog, format, 'Hello World\n', []),
	send(P, open).
	