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
probability ( block ) {
   0.6047904, 0.3952096;
}
probability ( decl | incdcr ) {
  (0) : 0.8018868, 0.1981132;
  (1) : 0.3770492, 0.6229508;
}
probability ( varscop ) {
   0.7365269, 0.2634731;
}
probability ( constr | init ) {
  (0) : 0.7383178, 0.2616822;
  (1) : 0.3333333, 0.6666667;
}
probability ( opaspr | callfnc ) {
  (0) : 0.8303571, 0.1696429;
  (1) : 0.5090909, 0.4909091;
}
probability ( arith | exprn, fncdef ) {
  (0, 0) : 0.94505495, 0.05494505;
  (1, 0) : 0.07142857, 0.92857143;
  (0, 1) : 0.7741935, 0.2258065;
  (1, 1) : 0.2580645, 0.7419355;
}
probability ( assgn | lrvalue ) {
  (0) : 0.8547009, 0.1452991;
  (1) : 0.5, 0.5;
}
probability ( constl ) {
   0.92814371, 0.07185629;
}
probability ( logrel | assgn, constl ) {
  (0, 0) : 0.94117647, 0.05882353;
  (1, 0) : 0.1111111, 0.8888889;
  (0, 1) : 0.5, 0.5;
  (1, 1) : 0.1666667, 0.8333333;
}
probability ( exprn ) {
   0.7305389, 0.2694611;
}
probability ( ampas ) {
   0.6586826, 0.3413174;
}
probability ( sequen | arith ) {
  (0) : 0.94117647, 0.05882353;
  (1) : 0.6458333, 0.3541667;
}
probability ( itcpt ) {
   0.6407186, 0.3592814;
}
probability ( selcpt | lrvalue ) {
  (0) : 0.7692308, 0.2307692;
  (1) : 0.34, 0.66;
}
probability ( fncs | fncpar ) {
  (0) : 0.7745098, 0.2254902;
  (1) : 0.6153846, 0.3846154;
}
probability ( pasaddr ) {
   0.5209581, 0.4790419;
}
probability ( fncpar ) {
   0.6107784, 0.3892216;
}
probability ( fncpro | fncdef, endlp ) {
  (0, 0) : 0.884058, 0.115942;
  (1, 0) : 0.3076923, 0.6923077;
  (0, 1) : 0.5277778, 0.4722222;
  (1, 1) : 0.3333333, 0.6666667;
}
probability ( nestit | sequen ) {
  (0) : 0.6643357, 0.3356643;
  (1) : 0.125, 0.875;
}
probability ( multi | sequen ) {
  (0) : 0.97202797, 0.02797203;
  (1) : 0.375, 0.625;
}
probability ( init ) {
   0.6407186, 0.3592814;
}
probability ( incdcr | itcpt ) {
  (0) : 0.8130841, 0.1869159;
  (1) : 0.3166667, 0.6833333;
}
probability ( countit | exitlp ) {
  (0) : 0.7435897, 0.2564103;
  (1) : 0.32, 0.68;
}
probability ( eventit ) {
   0.5808383, 0.4191617;
}
probability ( switch | itcpt, selcpt, lrvalue ) {
  (0, 0, 0) : 0.93150685, 0.06849315;
  (1, 0, 0) : 0.05882353, 0.94117647;
  (0, 1, 0) : 0.07142857, 0.92857143;
  (1, 1, 0) : 0.07692308, 0.92307692;
  (0, 0, 1) : 0.1111111, 0.8888889;
  (1, 0, 1) : 0.0, 1.0;
  (0, 1, 1) : 0.09090909, 0.90909091;
  (1, 1, 1) : 0.09090909, 0.90909091;
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
probability ( break | multi ) {
  (0) : 0.7162162, 0.2837838;
  (1) : 0.1052632, 0.8947368;
}
probability ( conti ) {
   0.4491018, 0.5508982;
}
probability ( ifelse | elseif ) {
  (0) : 0.94814815, 0.05185185;
  (1) : 0.53125, 0.46875;
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
probability ( scanf | dtype ) {
  (0) : 0.97435897, 0.02564103;
  (1) : 0.2727273, 0.7272727;
}
probability ( printf ) {
   0.8443114, 0.1556886;
}
probability ( ifseri ) {
   0.754491, 0.245509;
}
probability ( elseif | exprn, ifseri ) {
  (0, 0) : 0.97169811, 0.02830189;
  (1, 0) : 0.75, 0.25;
  (0, 1) : 0.625, 0.375;
  (1, 1) : 0.28, 0.72;
}
probability ( beflp | fncpar, eventit ) {
  (0, 0) : 0.92105263, 0.07894737;
  (1, 0) : 0.4285714, 0.5714286;
  (0, 1) : 0.5, 0.5;
  (1, 1) : 0.3181818, 0.6818182;
}
probability ( endlp ) {
   0.5688623, 0.4311377;
}
probability ( default | break ) {
  (0) : 0.7314815, 0.2685185;
  (1) : 0.3389831, 0.6610169;
}
probability ( prepost ) {
   0.5868263, 0.4131737;
}
