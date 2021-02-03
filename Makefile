# part of the makefile

calculator: 	dc.l calc.y
							bison -d calc.y
							flex dc.l
							cc -o $@ calc.tab.c lex.yy.c -lfl

fb1-5:	fb1-5.l fb1-5.y
				bison -d fb1-5.y
				flex fb1-5.l
				gcc -o $@ fb1-5.tab.c lex.yy.c -lfl
