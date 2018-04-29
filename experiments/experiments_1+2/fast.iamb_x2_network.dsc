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
probability ( decl | fncs ) {
  (0) : 0.7647059, 0.2352941;
  (1) : 0.3541667, 0.6458333;
}
probability ( varscop ) {
   0.7365269, 0.2634731;
}
probability ( constr ) {
   0.5928144, 0.4071856;
}
probability ( opaspr ) {
   0.7245509, 0.2754491;
}
probability ( arith | exprn ) {
  (0) : 0.90163934, 0.09836066;
  (1) : 0.2, 0.8;
}
probability ( assgn ) {
   0.748503, 0.251497;
}
probability ( constl ) {
   0.92814371, 0.07185629;
}
probability ( logrel | assgn ) {
  (0) : 0.92, 0.08;
  (1) : 0.1190476, 0.8809524;
}
probability ( exprn ) {
   0.7305389, 0.2694611;
}
probability ( ampas ) {
   0.6586826, 0.3413174;
}
probability ( sequen | multi, elseif ) {
  (0, 0) : 0.95384615, 0.04615385;
  (1, 0) : 0.6, 0.4;
  (0, 1) : 0.8333333, 0.1666667;
  (1, 1) : 0.07142857, 0.92857143;
}
probability ( itcpt | incdcr ) {
  (0) : 0.8207547, 0.1792453;
  (1) : 0.3278689, 0.6721311;
}
probability ( selcpt | constr, switch ) {
  (0, 0) : 1.0, 0.0;
  (1, 0) : 0.7222222, 0.2777778;
  (0, 1) : 0.5, 0.5;
  (1, 1) : 0.32, 0.68;
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
probability ( fncpro ) {
   0.5988024, 0.4011976;
}
probability ( nestit ) {
   0.5868263, 0.4131737;
}
probability ( multi ) {
   0.8862275, 0.1137725;
}
probability ( init | fncpro ) {
  (0) : 0.81, 0.19;
  (1) : 0.3880597, 0.6119403;
}
probability ( incdcr ) {
   0.6347305, 0.3652695;
}
probability ( countit | block, fncpar, prepost ) {
  (0, 0, 0) : 0.96610169, 0.03389831;
  (1, 0, 0) : 0.5714286, 0.4285714;
  (0, 1, 0) : 0.5384615, 0.4615385;
  (1, 1, 0) : 0.5, 0.5;
  (0, 0, 1) : 0.5882353, 0.4117647;
  (1, 0, 1) : 0.4166667, 0.5833333;
  (0, 1, 1) : 0.5, 0.5;
  (1, 1, 1) : 0.1428571, 0.8571429;
}
probability ( eventit ) {
   0.5808383, 0.4191617;
}
probability ( switch | itcpt, lrvalue ) {
  (0, 0) : 0.7931034, 0.2068966;
  (1, 0) : 0.06666667, 0.93333333;
  (0, 1) : 0.1, 0.9;
  (1, 1) : 0.06666667, 0.93333333;
}
probability ( fncdef | fncpro ) {
  (0) : 0.8, 0.2;
  (1) : 0.3731343, 0.6268657;
}
probability ( exitlp ) {
   0.7005988, 0.2994012;
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
probability ( ifelse ) {
   0.8682635, 0.1317365;
}
probability ( callfnc | endlp ) {
  (0) : 0.8631579, 0.1368421;
  (1) : 0.4166667, 0.5833333;
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
probability ( beflp | block, fncpar, eventit ) {
  (0, 0, 0) : 0.96875, 0.03125;
  (1, 0, 0) : 0.6666667, 0.3333333;
  (0, 1, 0) : 0.5555556, 0.4444444;
  (1, 1, 0) : 0.3333333, 0.6666667;
  (0, 0, 1) : 0.5833333, 0.4166667;
  (1, 0, 1) : 0.4285714, 0.5714286;
  (0, 1, 1) : 0.5, 0.5;
  (1, 1, 1) : 0.2142857, 0.7857143;
}
probability ( endlp ) {
   0.5688623, 0.4311377;
}
probability ( default | incdcr, break ) {
  (0, 0) : 0.8333333, 0.1666667;
  (1, 0) : 0.375, 0.625;
  (0, 1) : 0.5454545, 0.4545455;
  (1, 1) : 0.2162162, 0.7837838;
}
probability ( prepost | endlp ) {
  (0) : 0.7578947, 0.2421053;
  (1) : 0.3611111, 0.6388889;
}
