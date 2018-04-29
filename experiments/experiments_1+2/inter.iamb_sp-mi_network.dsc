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
probability ( decl ) {
   0.6467066, 0.3532934;
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
probability ( arith | sequen ) {
  (0) : 0.7832168, 0.2167832;
  (1) : 0.2916667, 0.7083333;
}
probability ( assgn | logrel ) {
  (0) : 0.95833333, 0.04166667;
  (1) : 0.212766, 0.787234;
}
probability ( constl ) {
   0.92814371, 0.07185629;
}
probability ( logrel | switch ) {
  (0) : 0.98666667, 0.01333333;
  (1) : 0.5, 0.5;
}
probability ( exprn | arith ) {
  (0) : 0.92436975, 0.07563025;
  (1) : 0.25, 0.75;
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
probability ( fncpro | block, fncdef, callfnc, endlp ) {
  (0, 0, 0, 0) : 1.0, 0.0;
  (1, 0, 0, 0) : 0.5, 0.5;
  (0, 1, 0, 0) : 0.4166667, 0.5833333;
  (1, 1, 0, 0) : 0.6, 0.4;
  (0, 0, 1, 0) : 0.5, 0.5;
  (1, 0, 1, 0) : 0.0, 1.0;
  (0, 1, 1, 0) : 0.0, 1.0;
  (1, 1, 1, 0) : 0.0, 1.0;
  (0, 0, 0, 1) : 0.5833333, 0.4166667;
  (1, 0, 0, 1) : 0.3333333, 0.6666667;
  (0, 1, 0, 1) : 0.3333333, 0.6666667;
  (1, 1, 0, 1) : 0.3333333, 0.6666667;
  (0, 0, 1, 1) : 0.6, 0.4;
  (1, 0, 1, 1) : 0.5, 0.5;
  (0, 1, 1, 1) : 1.0, 0.0;
  (1, 1, 1, 1) : 0.2380952, 0.7619048;
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
probability ( incdcr | ampas, itcpt, eventit ) {
  (0, 0, 0) : 0.93650794, 0.06349206;
  (1, 0, 0) : 0.6666667, 0.3333333;
  (0, 1, 0) : 0.2222222, 0.7777778;
  (1, 1, 0) : 0.3, 0.7;
  (0, 0, 1) : 0.8421053, 0.1578947;
  (1, 0, 1) : 0.2, 0.8;
  (0, 1, 1) : 0.4736842, 0.5263158;
  (1, 1, 1) : 0.2272727, 0.7727273;
}
probability ( countit | exitlp ) {
  (0) : 0.7435897, 0.2564103;
  (1) : 0.32, 0.68;
}
probability ( eventit ) {
   0.5808383, 0.4191617;
}
probability ( switch | itcpt, selcpt, eventit ) {
  (0, 0, 0) : 0.90909091, 0.09090909;
  (1, 0, 0) : 0.0, 1.0;
  (0, 1, 0) : 0.0, 1.0;
  (1, 1, 0) : 0.09090909, 0.90909091;
  (0, 0, 1) : 0.5625, 0.4375;
  (1, 0, 1) : 0.05882353, 0.94117647;
  (0, 1, 1) : 0.1538462, 0.8461538;
  (1, 1, 1) : 0.08333333, 0.91666667;
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
probability ( callfnc | opaspr, selcpt, endlp ) {
  (0, 0, 0) : 0.97058824, 0.02941176;
  (1, 0, 0) : 0.625, 0.375;
  (0, 1, 0) : 0.7, 0.3;
  (1, 1, 0) : 0.4444444, 0.5555556;
  (0, 0, 1) : 0.5909091, 0.4090909;
  (1, 0, 1) : 0.4444444, 0.5555556;
  (0, 1, 1) : 0.3333333, 0.6666667;
  (1, 1, 1) : 0.3, 0.7;
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
