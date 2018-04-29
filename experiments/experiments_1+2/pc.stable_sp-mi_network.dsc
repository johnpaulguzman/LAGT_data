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
probability ( decl ) {
   0.6467066, 0.3532934;
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
probability ( fncpro ) {
   0.5988024, 0.4011976;
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
probability ( eventit | callfnc ) {
  (0) : 0.7321429, 0.2678571;
  (1) : 0.2727273, 0.7272727;
}
probability ( switch | itcpt, selcpt ) {
  (0, 0) : 0.8414634, 0.1585366;
  (1, 0) : 0.04, 0.96;
  (0, 1) : 0.08, 0.92;
  (1, 1) : 0.08571429, 0.91428571;
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
probability ( elseif ) {
   0.8083832, 0.1916168;
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
