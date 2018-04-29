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
probability ( decl | switch ) {
  (0) : 0.8666667, 0.1333333;
  (1) : 0.4673913, 0.5326087;
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
probability ( arith | exprn, sequen ) {
  (0, 0) : 0.92982456, 0.07017544;
  (1, 0) : 0.2068966, 0.7931034;
  (0, 1) : 0.5, 0.5;
  (1, 1) : 0.1875, 0.8125;
}
probability ( assgn ) {
   0.748503, 0.251497;
}
probability ( constl | logrel ) {
  (0) : 0.96666667, 0.03333333;
  (1) : 0.8297872, 0.1702128;
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
probability ( sequen ) {
   0.8562874, 0.1437126;
}
probability ( itcpt ) {
   0.6407186, 0.3592814;
}
probability ( selcpt | switch, lrvalue ) {
  (0, 0) : 0.97183099, 0.02816901;
  (1, 0) : 0.4565217, 0.5434783;
  (0, 1) : 0.25, 0.75;
  (1, 1) : 0.3478261, 0.6521739;
}
probability ( fncs | fncpar, ifelse ) {
  (0, 0) : 0.7938144, 0.2061856;
  (1, 0) : 0.75, 0.25;
  (0, 1) : 0.4, 0.6;
  (1, 1) : 0.2352941, 0.7647059;
}
probability ( pasaddr ) {
   0.5209581, 0.4790419;
}
probability ( fncpar ) {
   0.6107784, 0.3892216;
}
probability ( fncpro | block, nestit, fncdef, endlp ) {
  (0, 0, 0, 0) : 1.0, 0.0;
  (1, 0, 0, 0) : 0.3333333, 0.6666667;
  (0, 1, 0, 0) : 1.0, 0.0;
  (1, 1, 0, 0) : 0.3333333, 0.6666667;
  (0, 0, 1, 0) : 0.3333333, 0.6666667;
  (1, 0, 1, 0) : 0.3333333, 0.6666667;
  (0, 1, 1, 0) : 0.2857143, 0.7142857;
  (1, 1, 1, 0) : 0.25, 0.75;
  (0, 0, 0, 1) : 0.6153846, 0.3846154;
  (1, 0, 0, 1) : 0.4285714, 0.5714286;
  (0, 1, 0, 1) : 0.5555556, 0.4444444;
  (1, 1, 0, 1) : 0.4285714, 0.5714286;
  (0, 0, 1, 1) : 1.0, 0.0;
  (1, 0, 1, 1) : 0.7777778, 0.2222222;
  (0, 1, 1, 1) : 0.3333333, 0.6666667;
  (1, 1, 1, 1) : 0.04761905, 0.95238095;
}
probability ( nestit ) {
   0.5868263, 0.4131737;
}
probability ( multi | sequen, break ) {
  (0, 0) : 0.98058252, 0.01941748;
  (1, 0) : 1.0, 0.0;
  (0, 1) : 0.95, 0.05;
  (1, 1) : 0.2105263, 0.7894737;
}
probability ( init ) {
   0.6407186, 0.3592814;
}
probability ( incdcr | ampas, itcpt ) {
  (0, 0) : 0.91463415, 0.08536585;
  (1, 0) : 0.48, 0.52;
  (0, 1) : 0.3928571, 0.6071429;
  (1, 1) : 0.25, 0.75;
}
probability ( countit | exitlp ) {
  (0) : 0.7435897, 0.2564103;
  (1) : 0.32, 0.68;
}
probability ( eventit | beflp ) {
  (0) : 0.745283, 0.254717;
  (1) : 0.295082, 0.704918;
}
probability ( switch | itcpt ) {
  (0) : 0.6635514, 0.3364486;
  (1) : 0.06666667, 0.93333333;
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
probability ( endlp ) {
   0.5688623, 0.4311377;
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
