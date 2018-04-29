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
probability ( constr | selcpt, init ) {
  (0, 0) : 0.804878, 0.195122;
  (1, 0) : 0.52, 0.48;
  (0, 1) : 0.48, 0.52;
  (1, 1) : 0.2285714, 0.7714286;
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
probability ( sequen | multi ) {
  (0) : 0.93918919, 0.06081081;
  (1) : 0.2105263, 0.7894737;
}
probability ( itcpt | incdcr, switch ) {
  (0, 0) : 0.97058824, 0.02941176;
  (1, 0) : 0.7142857, 0.2857143;
  (0, 1) : 0.5526316, 0.4473684;
  (1, 1) : 0.2777778, 0.7222222;
}
probability ( selcpt | switch ) {
  (0) : 0.93333333, 0.06666667;
  (1) : 0.4021739, 0.5978261;
}
probability ( fncs | ifelse ) {
  (0) : 0.7793103, 0.2206897;
  (1) : 0.2727273, 0.7272727;
}
probability ( pasaddr ) {
   0.5209581, 0.4790419;
}
probability ( fncpar | beflp ) {
  (0) : 0.7830189, 0.2169811;
  (1) : 0.3114754, 0.6885246;
}
probability ( fncpro | block, fncdef, endlp ) {
  (0, 0, 0) : 1.0, 0.0;
  (1, 0, 0) : 0.3333333, 0.6666667;
  (0, 1, 0) : 0.3125, 0.6875;
  (1, 1, 0) : 0.3, 0.7;
  (0, 0, 1) : 0.5909091, 0.4090909;
  (1, 0, 1) : 0.4285714, 0.5714286;
  (0, 1, 1) : 0.6666667, 0.3333333;
  (1, 1, 1) : 0.2666667, 0.7333333;
}
probability ( nestit ) {
   0.5868263, 0.4131737;
}
probability ( multi | break ) {
  (0) : 0.98148148, 0.01851852;
  (1) : 0.7118644, 0.2881356;
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
probability ( eventit | sequen, countit, beflp ) {
  (0, 0, 0) : 0.8101266, 0.1898734;
  (1, 0, 0) : 1.0, 0.0;
  (0, 1, 0) : 0.6086957, 0.3913043;
  (1, 1, 0) : 0.0, 1.0;
  (0, 0, 1) : 0.35, 0.65;
  (1, 0, 1) : 0.6666667, 0.3333333;
  (0, 1, 1) : 0.4285714, 0.5714286;
  (1, 1, 1) : 0.0, 1.0;
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
probability ( callfnc | endlp ) {
  (0) : 0.8631579, 0.1368421;
  (1) : 0.4166667, 0.5833333;
}
probability ( stdio ) {
   0.6526946, 0.3473054;
}
probability ( lrvalue | assgn ) {
  (0) : 0.8, 0.2;
  (1) : 0.4047619, 0.5952381;
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
probability ( beflp ) {
   0.6347305, 0.3652695;
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
