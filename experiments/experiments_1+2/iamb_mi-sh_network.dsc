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
probability ( vars ) {
   0.92215569, 0.07784431;
}
probability ( block ) {
   0.6047904, 0.3952096;
}
probability ( decl ) {
   0.6467066, 0.3532934;
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
probability ( sequen | multi ) {
  (0) : 0.93918919, 0.06081081;
  (1) : 0.2105263, 0.7894737;
}
probability ( itcpt | incdcr ) {
  (0) : 0.8207547, 0.1792453;
  (1) : 0.3278689, 0.6721311;
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
probability ( nestit | fncpro ) {
  (0) : 0.73, 0.27;
  (1) : 0.3731343, 0.6268657;
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
probability ( switch | itcpt, selcpt ) {
  (0, 0) : 0.8414634, 0.1585366;
  (1, 0) : 0.04, 0.96;
  (0, 1) : 0.08, 0.92;
  (1, 1) : 0.08571429, 0.91428571;
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
probability ( beflp | fncpar, eventit ) {
  (0, 0) : 0.92105263, 0.07894737;
  (1, 0) : 0.4285714, 0.5714286;
  (0, 1) : 0.5, 0.5;
  (1, 1) : 0.3181818, 0.6818182;
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
