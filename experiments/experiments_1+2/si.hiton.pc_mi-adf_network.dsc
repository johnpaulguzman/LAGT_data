belief network "unknown"
node keyid {
  type : discrete [ 2 ] = { "Known", "NotKnown" };
}
node dtype {
  type : discrete [ 2 ] = { "Known", "NotKnown" };
}
node vars {
  type : discrete [ 2 ] = { "Known", "NotKnown" };
}
node block {
  type : discrete [ 2 ] = { "Known", "NotKnown" };
}
node decl {
  type : discrete [ 2 ] = { "Known", "NotKnown" };
}
node varscop {
  type : discrete [ 2 ] = { "Known", "NotKnown" };
}
node constr {
  type : discrete [ 2 ] = { "Known", "NotKnown" };
}
node opaspr {
  type : discrete [ 2 ] = { "Known", "NotKnown" };
}
node arith {
  type : discrete [ 2 ] = { "Known", "NotKnown" };
}
node assgn {
  type : discrete [ 2 ] = { "Known", "NotKnown" };
}
node constl {
  type : discrete [ 2 ] = { "Known", "NotKnown" };
}
node logrel {
  type : discrete [ 2 ] = { "Known", "NotKnown" };
}
node exprn {
  type : discrete [ 2 ] = { "Known", "NotKnown" };
}
node ampas {
  type : discrete [ 2 ] = { "Known", "NotKnown" };
}
node sequen {
  type : discrete [ 2 ] = { "Known", "NotKnown" };
}
node itcpt {
  type : discrete [ 2 ] = { "Known", "NotKnown" };
}
node selcpt {
  type : discrete [ 2 ] = { "Known", "NotKnown" };
}
node fncs {
  type : discrete [ 2 ] = { "Known", "NotKnown" };
}
node pasaddr {
  type : discrete [ 2 ] = { "Known", "NotKnown" };
}
node fncpar {
  type : discrete [ 2 ] = { "Known", "NotKnown" };
}
node fncpro {
  type : discrete [ 2 ] = { "Known", "NotKnown" };
}
node nestit {
  type : discrete [ 2 ] = { "Known", "NotKnown" };
}
node multi {
  type : discrete [ 2 ] = { "Known", "NotKnown" };
}
node init {
  type : discrete [ 2 ] = { "Known", "NotKnown" };
}
node incdcr {
  type : discrete [ 2 ] = { "Known", "NotKnown" };
}
node countit {
  type : discrete [ 2 ] = { "Known", "NotKnown" };
}
node eventit {
  type : discrete [ 2 ] = { "Known", "NotKnown" };
}
node switch {
  type : discrete [ 2 ] = { "Known", "NotKnown" };
}
node fncdef {
  type : discrete [ 2 ] = { "Known", "NotKnown" };
}
node exitlp {
  type : discrete [ 2 ] = { "Known", "NotKnown" };
}
node return {
  type : discrete [ 2 ] = { "Known", "NotKnown" };
}
node break {
  type : discrete [ 2 ] = { "Known", "NotKnown" };
}
node conti {
  type : discrete [ 2 ] = { "Known", "NotKnown" };
}
node ifelse {
  type : discrete [ 2 ] = { "Known", "NotKnown" };
}
node callfnc {
  type : discrete [ 2 ] = { "Known", "NotKnown" };
}
node stdio {
  type : discrete [ 2 ] = { "Known", "NotKnown" };
}
node lrvalue {
  type : discrete [ 2 ] = { "Known", "NotKnown" };
}
node scanf {
  type : discrete [ 2 ] = { "Known", "NotKnown" };
}
node printf {
  type : discrete [ 2 ] = { "Known", "NotKnown" };
}
node ifseri {
  type : discrete [ 2 ] = { "Known", "NotKnown" };
}
node elseif {
  type : discrete [ 2 ] = { "Known", "NotKnown" };
}
node beflp {
  type : discrete [ 2 ] = { "Known", "NotKnown" };
}
node endlp {
  type : discrete [ 2 ] = { "Known", "NotKnown" };
}
node default {
  type : discrete [ 2 ] = { "Known", "NotKnown" };
}
node prepost {
  type : discrete [ 2 ] = { "Known", "NotKnown" };
}
probability ( keyid | vars ) {
  (0) : 0.96103896, 0.03896104;
  (1) : 0.3076923, 0.6923077;
}
probability ( dtype | assgn ) {
  (0) : 1.0, 0.0;
  (1) : 0.7380952, 0.2619048;
}
probability ( vars | decl ) {
  (0) : 1.0, 0.0;
  (1) : 0.779661, 0.220339;
}
probability ( block | fncpro ) {
  (0) : 0.79, 0.21;
  (1) : 0.3283582, 0.6716418;
}
probability ( decl | fncs ) {
  (0) : 0.7647059, 0.2352941;
  (1) : 0.3541667, 0.6458333;
}
probability ( varscop | printf ) {
  (0) : 0.8085106, 0.1914894;
  (1) : 0.3461538, 0.6538462;
}
probability ( constr | init ) {
  (0) : 0.7383178, 0.2616822;
  (1) : 0.3333333, 0.6666667;
}
probability ( opaspr ) {
   0.7245509, 0.2754491;
}
probability ( arith | dtype ) {
  (0) : 0.7628205, 0.2371795;
  (1) : 0.0, 1.0;
}
probability ( assgn | logrel ) {
  (0) : 0.95833333, 0.04166667;
  (1) : 0.212766, 0.787234;
}
probability ( constl ) {
   0.92814371, 0.07185629;
}
probability ( logrel ) {
   0.7185629, 0.2814371;
}
probability ( exprn | arith ) {
  (0) : 0.92436975, 0.07563025;
  (1) : 0.25, 0.75;
}
probability ( ampas | incdcr ) {
  (0) : 0.8113208, 0.1886792;
  (1) : 0.3934426, 0.6065574;
}
probability ( sequen | countit ) {
  (0) : 0.96116505, 0.03883495;
  (1) : 0.6875, 0.3125;
}
probability ( itcpt | switch ) {
  (0) : 0.94666667, 0.05333333;
  (1) : 0.3913043, 0.6086957;
}
probability ( selcpt | switch ) {
  (0) : 0.93333333, 0.06666667;
  (1) : 0.4021739, 0.5978261;
}
probability ( fncs ) {
   0.7125749, 0.2874251;
}
probability ( pasaddr ) {
   0.5209581, 0.4790419;
}
probability ( fncpar | beflp ) {
  (0) : 0.7830189, 0.2169811;
  (1) : 0.3114754, 0.6885246;
}
probability ( fncpro ) {
   0.5988024, 0.4011976;
}
probability ( nestit ) {
   0.5868263, 0.4131737;
}
probability ( multi | sequen ) {
  (0) : 0.97202797, 0.02797203;
  (1) : 0.375, 0.625;
}
probability ( init | fncpro ) {
  (0) : 0.81, 0.19;
  (1) : 0.3880597, 0.6119403;
}
probability ( incdcr | itcpt ) {
  (0) : 0.8130841, 0.1869159;
  (1) : 0.3166667, 0.6833333;
}
probability ( countit | switch ) {
  (0) : 0.8933333, 0.1066667;
  (1) : 0.3913043, 0.6086957;
}
probability ( eventit | beflp ) {
  (0) : 0.745283, 0.254717;
  (1) : 0.295082, 0.704918;
}
probability ( switch | logrel ) {
  (0) : 0.6166667, 0.3833333;
  (1) : 0.0212766, 0.9787234;
}
probability ( fncdef | fncpro ) {
  (0) : 0.8, 0.2;
  (1) : 0.3731343, 0.6268657;
}
probability ( exitlp | countit ) {
  (0) : 0.8446602, 0.1553398;
  (1) : 0.46875, 0.53125;
}
probability ( return | fncpro ) {
  (0) : 0.71, 0.29;
  (1) : 0.2985075, 0.7014925;
}
probability ( break | endlp ) {
  (0) : 0.8631579, 0.1368421;
  (1) : 0.3611111, 0.6388889;
}
probability ( conti ) {
   0.4491018, 0.5508982;
}
probability ( ifelse | itcpt ) {
  (0) : 0.97196262, 0.02803738;
  (1) : 0.6833333, 0.3166667;
}
probability ( callfnc | endlp ) {
  (0) : 0.8631579, 0.1368421;
  (1) : 0.4166667, 0.5833333;
}
probability ( stdio ) {
   0.6526946, 0.3473054;
}
probability ( lrvalue | selcpt ) {
  (0) : 0.8411215, 0.1588785;
  (1) : 0.45, 0.55;
}
probability ( scanf | dtype ) {
  (0) : 0.97435897, 0.02564103;
  (1) : 0.2727273, 0.7272727;
}
probability ( printf ) {
   0.8443114, 0.1556886;
}
probability ( ifseri | elseif ) {
  (0) : 0.8740741, 0.1259259;
  (1) : 0.25, 0.75;
}
probability ( elseif | exprn ) {
  (0) : 0.92622951, 0.07377049;
  (1) : 0.4888889, 0.5111111;
}
probability ( beflp | ifelse ) {
  (0) : 0.7172414, 0.2827586;
  (1) : 0.09090909, 0.90909091;
}
probability ( endlp ) {
   0.5688623, 0.4311377;
}
probability ( default | incdcr ) {
  (0) : 0.7735849, 0.2264151;
  (1) : 0.2786885, 0.7213115;
}
probability ( prepost ) {
   0.5868263, 0.4131737;
}
