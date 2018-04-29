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
probability ( dtype | scanf ) {
  (0) : 0.98064516, 0.01935484;
  (1) : 0.3333333, 0.6666667;
}
probability ( vars | scanf ) {
  (0) : 0.96129032, 0.03870968;
  (1) : 0.4166667, 0.5833333;
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
probability ( opaspr | fncpar ) {
  (0) : 0.8627451, 0.1372549;
  (1) : 0.5076923, 0.4923077;
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
probability ( sequen | multi ) {
  (0) : 0.93918919, 0.06081081;
  (1) : 0.2105263, 0.7894737;
}
probability ( itcpt | switch ) {
  (0) : 0.94666667, 0.05333333;
  (1) : 0.3913043, 0.6086957;
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
probability ( fncpro | fncdef ) {
  (0) : 0.7619048, 0.2380952;
  (1) : 0.3225806, 0.6774194;
}
probability ( nestit ) {
   0.5868263, 0.4131737;
}
probability ( multi | block ) {
  (0) : 0.99009901, 0.00990099;
  (1) : 0.7272727, 0.2727273;
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
probability ( switch | block ) {
  (0) : 0.6435644, 0.3564356;
  (1) : 0.1515152, 0.8484848;
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
probability ( lrvalue | assgn ) {
  (0) : 0.8, 0.2;
  (1) : 0.4047619, 0.5952381;
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
