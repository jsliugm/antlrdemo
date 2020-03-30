grammar PriceCompare;
row: brand ','price ;
brand: '\u54c1\u724c'SPLIT VALUE #brandFn ;
price: '\u4ef7\u683c'SPLIT NUM #priceFn;
VALUE: LETTER+;
fragment
LETTER: [a-zA-Z\u4E00-\u9FA5_];
NUM: [0-9]+   //正整数
  | '(' '-' [0-9]+ ')'  //负整数
| [0-9]+'.'[0-9]+   //正浮点数
| '(' '-' [0-9]+'.'[0-9]+ ')'   //负浮点数
;
SPLIT: ':';
WS: [ \t\r\n] -> skip;    //跳过空格、制表符、回车、换行