
   type :- 
      repeat,
      readln(ST),                             /*      Read a line      */
      write("\nINPUT LINE:::::"), 
      write(ST), 
      write(":::::\n"),
      ST = "END".
      
   test :-
   	readln(X), write(":::::"), write(X), write(":::::"), nl.
	

	testReadCodes :-
		read_line_to_codes(user_input,X),
		atom_codes(Y,X),
		atomic_list_concat(L,' ',Y),
		writeln(L).