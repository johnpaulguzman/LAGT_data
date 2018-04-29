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
probability ( vars | scanf ) {
  (0) : 0.96129032, 0.03870968;
  (1) : 0.4166667, 0.5833333;
}
probability ( block | fncpro ) {
  (0) : 0.79, 0.21;
  (1) : 0.3283582, 0.6716418;
}
probability ( decl | incdcr ) {
  (0) : 0.8018868, 0.1981132;
  (1) : 0.3770492, 0.6229508;
}
probability ( varscop | printf ) {
  (0) : 0.8085106, 0.1914894;
  (1) : 0.3461538, 0.6538462;
}
probability ( constr | block ) {
  (0) : 0.7128713, 0.2871287;
  (1) : 0.4090909, 0.5909091;
}
probability ( opaspr ) {
   0.7245509, 0.2754491;
}
probability ( arith | sequen ) {
  (0) : 0.7832168, 0.2167832;
  (1) : 0.2916667, 0.7083333;
}
probability ( assgn | switch ) {
  (0) : 0.98666667, 0.01333333;
  (1) : 0.5543478, 0.4456522;
}
probability ( constl ) {
   0.92814371, 0.07185629;
}
probability ( logrel | assgn ) {
  (0) : 0.92, 0.08;
  (1) : 0.1190476, 0.8809524;
}
probability ( exprn | arith ) {
  (0) : 0.92436975, 0.07563025;
  (1) : 0.25, 0.75;
}
probability ( ampas ) {
   0.6586826, 0.3413174;
}
probability ( sequen ) {
   0.8562874, 0.1437126;
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
probability ( fncpar | opaspr ) {
  (0) : 0.7272727, 0.2727273;
  (1) : 0.3043478, 0.6956522;
}
probability ( fncpro ) {
   0.5988024, 0.4011976;
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
probability ( incdcr | default ) {
  (0) : 0.8282828, 0.1717172;
  (1) : 0.3529412, 0.6470588;
}
probability ( countit | block ) {
  (0) : 0.7920792, 0.2079208;
  (1) : 0.3484848, 0.6515152;
}
probability ( eventit | itcpt ) {
  (0) : 0.728972, 0.271028;
  (1) : 0.3166667, 0.6833333;
}
probability ( switch ) {
   0.4491018, 0.5508982;
}
probability ( fncdef | fncpro ) {
  (0) : 0.8, 0.2;
  (1) : 0.3731343, 0.6268657;
}
probability ( exitlp ) {
   0.7005988, 0.2994012;
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
probability ( lrvalue | switch ) {
  (0) : 0.94666667, 0.05333333;
  (1) : 0.5, 0.5;
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
probability ( default | opaspr ) {
  (0) : 0.7024793, 0.2975207;
  (1) : 0.3043478, 0.6956522;
}
probability ( prepost ) {
   0.5868263, 0.4131737;
}
