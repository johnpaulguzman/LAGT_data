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
probability ( dtype | assgn, scanf ) {
  (0, 0) : 1.0, 0.0;
  (1, 0) : 0.90625, 0.09375;
  (0, 1) : 1.0, 0.0;
  (1, 1) : 0.2, 0.8;
}
probability ( vars ) {
   0.92215569, 0.07784431;
}
probability ( block ) {
   0.6047904, 0.3952096;
}
probability ( decl | vars, fncs ) {
  (0, 0) : 0.7982456, 0.2017544;
  (1, 0) : 0.0, 1.0;
  (0, 1) : 0.425, 0.575;
  (1, 1) : 0.0, 1.0;
}
probability ( varscop ) {
   0.7365269, 0.2634731;
}
probability ( constr | init ) {
  (0) : 0.7383178, 0.2616822;
  (1) : 0.3333333, 0.6666667;
}
probability ( opaspr ) {
   0.7245509, 0.2754491;
}
probability ( arith ) {
   0.7125749, 0.2874251;
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
probability ( exprn | arith, printf ) {
  (0, 0) : 0.95412844, 0.04587156;
  (1, 0) : 0.375, 0.625;
  (0, 1) : 0.6, 0.4;
  (1, 1) : 0.0, 1.0;
}
probability ( ampas ) {
   0.6586826, 0.3413174;
}
probability ( sequen | multi ) {
  (0) : 0.93918919, 0.06081081;
  (1) : 0.2105263, 0.7894737;
}
probability ( itcpt ) {
   0.6407186, 0.3592814;
}
probability ( selcpt ) {
   0.6407186, 0.3592814;
}
probability ( fncs ) {
   0.7125749, 0.2874251;
}
probability ( pasaddr ) {
   0.5209581, 0.4790419;
}
probability ( fncpar ) {
   0.6107784, 0.3892216;
}
probability ( fncpro | block, init, fncdef ) {
  (0, 0, 0) : 0.93846154, 0.06153846;
  (1, 0, 0) : 0.4166667, 0.5833333;
  (0, 1, 0) : 0.6428571, 0.3571429;
  (1, 1, 0) : 0.3571429, 0.6428571;
  (0, 0, 1) : 0.5, 0.5;
  (1, 0, 1) : 0.5, 0.5;
  (0, 1, 1) : 0.25, 0.75;
  (1, 1, 1) : 0.125, 0.875;
}
probability ( nestit ) {
   0.5868263, 0.4131737;
}
probability ( multi ) {
   0.8862275, 0.1137725;
}
probability ( init ) {
   0.6407186, 0.3592814;
}
probability ( incdcr | ampas, default ) {
  (0, 0) : 0.92105263, 0.07894737;
  (1, 0) : 0.5217391, 0.4782609;
  (0, 1) : 0.4705882, 0.5294118;
  (1, 1) : 0.2352941, 0.7647059;
}
probability ( countit ) {
   0.6167665, 0.3832335;
}
probability ( eventit | callfnc, beflp ) {
  (0, 0) : 0.85, 0.15;
  (1, 0) : 0.4230769, 0.5769231;
  (0, 1) : 0.4375, 0.5625;
  (1, 1) : 0.137931, 0.862069;
}
probability ( switch | logrel, itcpt, selcpt ) {
  (0, 0, 0) : 0.95774648, 0.04225352;
  (1, 0, 0) : 0.09090909, 0.90909091;
  (0, 1, 0) : 0.05263158, 0.94736842;
  (1, 1, 0) : 0.0, 1.0;
  (0, 0, 1) : 0.1428571, 0.8571429;
  (1, 0, 1) : 0.0, 1.0;
  (0, 1, 1) : 0.1875, 0.8125;
  (1, 1, 1) : 0.0, 1.0;
}
probability ( fncdef ) {
   0.6287425, 0.3712575;
}
probability ( exitlp ) {
   0.7005988, 0.2994012;
}
probability ( return ) {
   0.5449102, 0.4550898;
}
probability ( break ) {
   0.6467066, 0.3532934;
}
probability ( conti ) {
   0.4491018, 0.5508982;
}
probability ( ifelse ) {
   0.8682635, 0.1317365;
}
probability ( callfnc ) {
   0.6706587, 0.3293413;
}
probability ( stdio ) {
   0.6526946, 0.3473054;
}
probability ( lrvalue ) {
   0.7005988, 0.2994012;
}
probability ( scanf ) {
   0.92814371, 0.07185629;
}
probability ( printf ) {
   0.8443114, 0.1556886;
}
probability ( ifseri | elseif ) {
  (0) : 0.8740741, 0.1259259;
  (1) : 0.25, 0.75;
}
probability ( elseif ) {
   0.8083832, 0.1916168;
}
probability ( beflp | block, fncpar, ifelse ) {
  (0, 0, 0) : 0.90666667, 0.09333333;
  (1, 0, 0) : 0.6363636, 0.3636364;
  (0, 1, 0) : 0.5217391, 0.4782609;
  (1, 1, 0) : 0.4, 0.6;
  (0, 0, 1) : 1.0, 0.0;
  (1, 0, 1) : 0.0, 1.0;
  (0, 1, 1) : 0.5, 0.5;
  (1, 1, 1) : 0.0, 1.0;
}
probability ( endlp | break, callfnc ) {
  (0, 0) : 0.8588235, 0.1411765;
  (1, 0) : 0.3333333, 0.6666667;
  (0, 1) : 0.3913043, 0.6086957;
  (1, 1) : 0.125, 0.875;
}
probability ( default ) {
   0.5928144, 0.4071856;
}
probability ( prepost ) {
   0.5868263, 0.4131737;
}
