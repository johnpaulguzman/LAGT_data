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
probability ( dtype | opaspr ) {
  (0) : 0.98347107, 0.01652893;
  (1) : 0.8043478, 0.1956522;
}
probability ( vars | scanf ) {
  (0) : 0.96129032, 0.03870968;
  (1) : 0.4166667, 0.5833333;
}
probability ( block ) {
   0.6047904, 0.3952096;
}
probability ( decl | vars ) {
  (0) : 0.7012987, 0.2987013;
  (1) : 0.0, 1.0;
}
probability ( varscop ) {
   0.7365269, 0.2634731;
}
probability ( constr | block, selcpt ) {
  (0, 0) : 0.8271605, 0.1728395;
  (1, 0) : 0.4230769, 0.5769231;
  (0, 1) : 0.25, 0.75;
  (1, 1) : 0.4, 0.6;
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
probability ( logrel | block, assgn ) {
  (0, 0) : 1.0, 0.0;
  (1, 0) : 0.7674419, 0.2325581;
  (0, 1) : 0.1052632, 0.8947368;
  (1, 1) : 0.1304348, 0.8695652;
}
probability ( exprn ) {
   0.7305389, 0.2694611;
}
probability ( ampas ) {
   0.6586826, 0.3413174;
}
probability ( sequen | keyid ) {
  (0) : 0.90789474, 0.09210526;
  (1) : 0.3333333, 0.6666667;
}
probability ( itcpt | opaspr ) {
  (0) : 0.7272727, 0.2727273;
  (1) : 0.4130435, 0.5869565;
}
probability ( selcpt ) {
   0.6407186, 0.3592814;
}
probability ( fncs | itcpt ) {
  (0) : 0.8504673, 0.1495327;
  (1) : 0.4666667, 0.5333333;
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
probability ( incdcr ) {
   0.6347305, 0.3652695;
}
probability ( countit ) {
   0.6167665, 0.3832335;
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
probability ( elseif ) {
   0.8083832, 0.1916168;
}
probability ( beflp ) {
   0.6347305, 0.3652695;
}
probability ( endlp ) {
   0.5688623, 0.4311377;
}
probability ( default ) {
   0.5928144, 0.4071856;
}
probability ( prepost ) {
   0.5868263, 0.4131737;
}
