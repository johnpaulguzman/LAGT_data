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
probability ( dtype | arith, scanf ) {
  (0, 0) : 1.0, 0.0;
  (1, 0) : 0.91891892, 0.08108108;
  (0, 1) : 1.0, 0.0;
  (1, 1) : 0.2727273, 0.7272727;
}
probability ( vars | decl ) {
  (0) : 1.0, 0.0;
  (1) : 0.779661, 0.220339;
}
probability ( block ) {
   0.6047904, 0.3952096;
}
probability ( decl | fncs ) {
  (0) : 0.7647059, 0.2352941;
  (1) : 0.3541667, 0.6458333;
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
probability ( arith | exprn ) {
  (0) : 0.90163934, 0.09836066;
  (1) : 0.2, 0.8;
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
probability ( exprn ) {
   0.7305389, 0.2694611;
}
probability ( ampas ) {
   0.6586826, 0.3413174;
}
probability ( sequen ) {
   0.8562874, 0.1437126;
}
probability ( itcpt | incdcr, switch ) {
  (0, 0) : 0.97058824, 0.02941176;
  (1, 0) : 0.7142857, 0.2857143;
  (0, 1) : 0.5526316, 0.4473684;
  (1, 1) : 0.2777778, 0.7222222;
}
probability ( selcpt | switch, lrvalue ) {
  (0, 0) : 0.97183099, 0.02816901;
  (1, 0) : 0.4565217, 0.5434783;
  (0, 1) : 0.25, 0.75;
  (1, 1) : 0.3478261, 0.6521739;
}
probability ( fncs ) {
   0.7125749, 0.2874251;
}
probability ( pasaddr ) {
   0.5209581, 0.4790419;
}
probability ( fncpar | countit ) {
  (0) : 0.776699, 0.223301;
  (1) : 0.34375, 0.65625;
}
probability ( fncpro | block, init, fncdef, return ) {
  (0, 0, 0, 0) : 0.98039216, 0.01960784;
  (1, 0, 0, 0) : 0.0, 1.0;
  (0, 1, 0, 0) : 0.8571429, 0.1428571;
  (1, 1, 0, 0) : 0.5, 0.5;
  (0, 0, 1, 0) : 0.6, 0.4;
  (1, 0, 1, 0) : 0.8333333, 0.1666667;
  (0, 1, 1, 0) : 0.1666667, 0.8333333;
  (1, 1, 1, 0) : 0.5, 0.5;
  (0, 0, 0, 1) : 0.7857143, 0.2142857;
  (1, 0, 0, 1) : 0.625, 0.375;
  (0, 1, 0, 1) : 0.4285714, 0.5714286;
  (1, 1, 0, 1) : 0.1666667, 0.8333333;
  (0, 0, 1, 1) : 0.4444444, 0.5555556;
  (1, 0, 1, 1) : 0.3, 0.7;
  (0, 1, 1, 1) : 0.5, 0.5;
  (1, 1, 1, 1) : 0.05, 0.95;
}
probability ( nestit ) {
   0.5868263, 0.4131737;
}
probability ( multi | sequen ) {
  (0) : 0.97202797, 0.02797203;
  (1) : 0.375, 0.625;
}
probability ( init ) {
   0.6407186, 0.3592814;
}
probability ( incdcr ) {
   0.6347305, 0.3652695;
}
probability ( countit | prepost ) {
  (0) : 0.7959184, 0.2040816;
  (1) : 0.3623188, 0.6376812;
}
probability ( eventit ) {
   0.5808383, 0.4191617;
}
probability ( switch ) {
   0.4491018, 0.5508982;
}
probability ( fncdef ) {
   0.6287425, 0.3712575;
}
probability ( exitlp | eventit ) {
  (0) : 0.8350515, 0.1649485;
  (1) : 0.5142857, 0.4857143;
}
probability ( return ) {
   0.5449102, 0.4550898;
}
probability ( break | endlp ) {
  (0) : 0.8631579, 0.1368421;
  (1) : 0.3611111, 0.6388889;
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
probability ( printf | varscop, exprn ) {
  (0, 0) : 0.96039604, 0.03960396;
  (1, 0) : 0.9047619, 0.0952381;
  (0, 1) : 0.7727273, 0.2272727;
  (1, 1) : 0.3478261, 0.6521739;
}
probability ( ifseri | sequen, elseif ) {
  (0, 0) : 0.8976378, 0.1023622;
  (1, 0) : 0.5, 0.5;
  (0, 1) : 0.3125, 0.6875;
  (1, 1) : 0.1875, 0.8125;
}
probability ( elseif | exprn ) {
  (0) : 0.92622951, 0.07377049;
  (1) : 0.4888889, 0.5111111;
}
probability ( beflp | block, fncpar, eventit, ifelse ) {
  (0, 0, 0, 0) : 0.96875, 0.03125;
  (1, 0, 0, 0) : 0.6666667, 0.3333333;
  (0, 1, 0, 0) : 0.5714286, 0.4285714;
  (1, 1, 0, 0) : 0.3636364, 0.6363636;
  (0, 0, 1, 0) : 0.5454545, 0.4545455;
  (1, 0, 1, 0) : 0.6, 0.4;
  (0, 1, 1, 0) : 0.5, 0.5;
  (1, 1, 1, 0) : 0.4285714, 0.5714286;
  (0, 0, 0, 1) : 0.5, 0.5;
  (1, 0, 0, 1) : 0.5, 0.5;
  (0, 1, 0, 1) : 0.5, 0.5;
  (1, 1, 0, 1) : 0.0, 1.0;
  (0, 0, 1, 1) : 1.0, 0.0;
  (1, 0, 1, 1) : 0.0, 1.0;
  (0, 1, 1, 1) : 0.5, 0.5;
  (1, 1, 1, 1) : 0.0, 1.0;
}
probability ( endlp | prepost ) {
  (0) : 0.7346939, 0.2653061;
  (1) : 0.3333333, 0.6666667;
}
probability ( default | incdcr, break ) {
  (0, 0) : 0.8333333, 0.1666667;
  (1, 0) : 0.375, 0.625;
  (0, 1) : 0.5454545, 0.4545455;
  (1, 1) : 0.2162162, 0.7837838;
}
probability ( prepost ) {
   0.5868263, 0.4131737;
}
