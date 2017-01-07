grammar Address;
options
{
  // antlr will generate java lexer and parser
  language = Java;
  // generated parser should create abstract syntax tree
  output = AST;
}

//as the generated lexer will reside in org.meri.antlr_step_by_step.parsers 
//package, we have to add package declaration on top of it
@lexer::header {
package org.address;
}

//as the generated parser will reside in org.meri.antlr_step_by_step.parsers 
//package, we have to add package declaration on top of it
@parser::header {
package org.address;
}

// ***************** lexer rules:
COUNTRY : 'BD' | 'USA' ;
STATE : 'TX' | 'KS' | 'NY' ;
HOUSE_NAME : ('a'..'z')+ ;
HOUSE_NUMBER : ('0'..'9')+ ;



// ***************** parser rules:
validAddress : HOUSE_NUMBER name STATE COUNTRY ;
name : HOUSE_NAME;
