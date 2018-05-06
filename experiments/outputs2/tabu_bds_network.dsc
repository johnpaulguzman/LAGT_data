belief network "unknown"
node keyid {
  type : discrete [ 2 ] = { "Known", "NotKnown" };
}
node vars {
  type : discrete [ 2 ] = { "Known", "NotKnown" };
}
node constl {
  type : discrete [ 2 ] = { "Known", "NotKnown" };
}
node opaspr {
  type : discrete [ 2 ] = { "Known", "NotKnown" };
}
node dtype {
  type : discrete [ 2 ] = { "Known", "NotKnown" };
}
node ampas {
  type : discrete [ 2 ] = { "Known", "NotKnown" };
}
node assgn {
  type : discrete [ 2 ] = { "Known", "NotKnown" };
}
node arith {
  type : discrete [ 2 ] = { "Known", "NotKnown" };
}
node logrel {
  type : discrete [ 2 ] = { "Known", "NotKnown" };
}
node block {
  type : discrete [ 2 ] = { "Known", "NotKnown" };
}
node decl {
  type : discrete [ 2 ] = { "Known", "NotKnown" };
}
node exprn {
  type : discrete [ 2 ] = { "Known", "NotKnown" };
}
node lrvalue {
  type : discrete [ 2 ] = { "Known", "NotKnown" };
}
node incdcr {
  type : discrete [ 2 ] = { "Known", "NotKnown" };
}
node varscop {
  type : discrete [ 2 ] = { "Known", "NotKnown" };
}
node fncpro {
  type : discrete [ 2 ] = { "Known", "NotKnown" };
}
node init {
  type : discrete [ 2 ] = { "Known", "NotKnown" };
}
node itcpt {
  type : discrete [ 2 ] = { "Known", "NotKnown" };
}
node selcpt {
  type : discrete [ 2 ] = { "Known", "NotKnown" };
}
node fncpar {
  type : discrete [ 2 ] = { "Known", "NotKnown" };
}
node countit {
  type : discrete [ 2 ] = { "Known", "NotKnown" };
}
node eventit {
  type : discrete [ 2 ] = { "Known", "NotKnown" };
}
node multi {
  type : discrete [ 2 ] = { "Known", "NotKnown" };
}
node nestit {
  type : discrete [ 2 ] = { "Known", "NotKnown" };
}
node fncdef {
  type : discrete [ 2 ] = { "Known", "NotKnown" };
}
node callfnc {
  type : discrete [ 2 ] = { "Known", "NotKnown" };
}
node pasaddr {
  type : discrete [ 2 ] = { "Known", "NotKnown" };
}
node stdio {
  type : discrete [ 2 ] = { "Known", "NotKnown" };
}
node exitlp {
  type : discrete [ 2 ] = { "Known", "NotKnown" };
}
node endlp {
  type : discrete [ 2 ] = { "Known", "NotKnown" };
}
node beflp {
  type : discrete [ 2 ] = { "Known", "NotKnown" };
}
node ifelse {
  type : discrete [ 2 ] = { "Known", "NotKnown" };
}
node ifseri {
  type : discrete [ 2 ] = { "Known", "NotKnown" };
}
node switch {
  type : discrete [ 2 ] = { "Known", "NotKnown" };
}
node scanf {
  type : discrete [ 2 ] = { "Known", "NotKnown" };
}
node printf {
  type : discrete [ 2 ] = { "Known", "NotKnown" };
}
node break {
  type : discrete [ 2 ] = { "Known", "NotKnown" };
}
node prepost {
  type : discrete [ 2 ] = { "Known", "NotKnown" };
}
node elseif {
  type : discrete [ 2 ] = { "Known", "NotKnown" };
}
node return {
  type : discrete [ 2 ] = { "Known", "NotKnown" };
}
node default {
  type : discrete [ 2 ] = { "Known", "NotKnown" };
}
node constr {
  type : discrete [ 2 ] = { "Known", "NotKnown" };
}
node fncs {
  type : discrete [ 2 ] = { "Known", "NotKnown" };
}
node sequen {
  type : discrete [ 2 ] = { "Known", "NotKnown" };
}
probability ( keyid | decl, callfnc ) {
  (0, 0) : 1.0, 0.0;
  (1, 0) : 0.5, 0.5;
  (0, 1) : 0.75, 0.25;
  (1, 1) : 0.0, 1.0;
}
probability ( vars | assgn ) {
  (0) : 0.95890411, 0.04109589;
  (1) : 0.1428571, 0.8571429;
}
probability ( constl | fncpro ) {
  (0) : 1.0, 0.0;
  (1) : 0.6923077, 0.3076923;
}
probability ( opaspr ) {
   0.8875, 0.1125;
}
probability ( dtype | assgn ) {
  (0) : 1.0, 0.0;
  (1) : 0.2857143, 0.7142857;
}
probability ( ampas | stdio, scanf ) {
  (0, 0) : 0.93846154, 0.06153846;
  (1, 0) : 0.5, 0.5;
  (0, 1) : 0.0, 1.0;
  (1, 1) : 0.0, 1.0;
}
probability ( assgn | opaspr, fncs ) {
  (0, 0) : 1.0, 0.0;
  (1, 0) : 1.0, 0.0;
  (0, 1) : 1.0, 0.0;
  (1, 1) : 0.0, 1.0;
}
probability ( arith | logrel, endlp ) {
  (0, 0) : 0.98245614, 0.01754386;
  (1, 0) : 0.5, 0.5;
  (0, 1) : 0.6153846, 0.3846154;
  (1, 1) : 0.0, 1.0;
}
probability ( logrel | opaspr ) {
  (0) : 0.98591549, 0.01408451;
  (1) : 0.0, 1.0;
}
probability ( block | beflp, break ) {
  (0, 0) : 0.98245614, 0.01754386;
  (1, 0) : 0.3333333, 0.6666667;
  (0, 1) : 0.0, 1.0;
  (1, 1) : 0.0, 1.0;
}
probability ( decl | vars, exprn ) {
  (0, 0) : 1.0, 0.0;
  (1, 0) : 0.0, 1.0;
  (0, 1) : 0.7142857, 0.2857143;
  (1, 1) : 0.0, 1.0;
}
probability ( exprn | opaspr ) {
  (0) : 0.94366197, 0.05633803;
  (1) : 0.0, 1.0;
}
probability ( lrvalue | assgn ) {
  (0) : 1.0, 0.0;
  (1) : 0.0, 1.0;
}
probability ( incdcr | exprn ) {
  (0) : 0.98507463, 0.01492537;
  (1) : 0.0, 1.0;
}
probability ( varscop | selcpt, stdio ) {
  (0, 0) : 0.98387097, 0.01612903;
  (1, 0) : 0.6666667, 0.3333333;
  (0, 1) : 0.8333333, 0.1666667;
  (1, 1) : 0.0, 1.0;
}
probability ( fncpro | block, endlp ) {
  (0, 0) : 0.94444444, 0.05555556;
  (1, 0) : 0.3333333, 0.6666667;
  (0, 1) : 0.5, 0.5;
  (1, 1) : 0.0, 1.0;
}
probability ( init | countit ) {
  (0) : 0.93442623, 0.06557377;
  (1) : 0.1052632, 0.8947368;
}
probability ( itcpt | incdcr ) {
  (0) : 0.96969697, 0.03030303;
  (1) : 0.0, 1.0;
}
probability ( selcpt | incdcr ) {
  (0) : 1.0, 0.0;
  (1) : 0.1428571, 0.8571429;
}
probability ( fncpar | ifelse, switch ) {
  (0, 0) : 1.0, 0.0;
  (1, 0) : 0.0, 1.0;
  (0, 1) : 0.0, 1.0;
  (1, 1) : 0.07142857, 0.92857143;
}
probability ( countit | beflp ) {
  (0) : 1.0, 0.0;
  (1) : 0.1363636, 0.8636364;
}
probability ( eventit | sequen ) {
  (0) : 0.93650794, 0.06349206;
  (1) : 0.0, 1.0;
}
probability ( multi | itcpt ) {
  (0) : 0.984375, 0.015625;
  (1) : 0.0625, 0.9375;
}
probability ( nestit | block ) {
  (0) : 0.8103448, 0.1896552;
  (1) : 0.09090909, 0.90909091;
}
probability ( fncdef | arith, fncpro ) {
  (0, 0) : 1.0, 0.0;
  (1, 0) : 0.0, 1.0;
  (0, 1) : 0.1818182, 0.8181818;
  (1, 1) : 0.1333333, 0.8666667;
}
probability ( callfnc | fncpar ) {
  (0) : 0.984375, 0.015625;
  (1) : 0.125, 0.875;
}
probability ( pasaddr | callfnc ) {
  (0) : 0.6461538, 0.3538462;
  (1) : 0.0, 1.0;
}
probability ( stdio | printf ) {
  (0) : 0.94029851, 0.05970149;
  (1) : 0.3846154, 0.6153846;
}
probability ( exitlp | elseif, fncs ) {
  (0, 0) : 0.9516129, 0.0483871;
  (1, 0) : 1.0, 0.0;
  (0, 1) : 1.0, 0.0;
  (1, 1) : 0.1, 0.9;
}
probability ( endlp | eventit ) {
  (0) : 0.94915254, 0.05084746;
  (1) : 0.04761905, 0.95238095;
}
probability ( beflp | keyid, eventit ) {
  (0, 0) : 1.0, 0.0;
  (1, 0) : 0.0, 1.0;
  (0, 1) : 0.0, 1.0;
  (1, 1) : 0.0, 1.0;
}
probability ( ifelse | itcpt ) {
  (0) : 0.984375, 0.015625;
  (1) : 0.125, 0.875;
}
probability ( ifseri | eventit ) {
  (0) : 0.98305085, 0.01694915;
  (1) : 0.2857143, 0.7142857;
}
probability ( switch | logrel, itcpt ) {
  (0, 0) : 1.0, 0.0;
  (1, 0) : 0.0, 1.0;
  (0, 1) : 0.1428571, 0.8571429;
  (1, 1) : 0.0, 1.0;
}
probability ( scanf | dtype, exprn ) {
  (0, 0) : 1.0, 0.0;
  (1, 0) : 0.5, 0.5;
  (0, 1) : 0.75, 0.25;
  (1, 1) : 0.0, 1.0;
}
probability ( printf | selcpt ) {
  (0) : 0.95588235, 0.04411765;
  (1) : 0.1666667, 0.8333333;
}
probability ( break | switch ) {
  (0) : 0.984375, 0.015625;
  (1) : 0.0, 1.0;
}
probability ( prepost | block, countit ) {
  (0, 0) : 0.92857143, 0.07142857;
  (1, 0) : 0.6, 0.4;
  (0, 1) : 1.0, 0.0;
  (1, 1) : 0.0, 1.0;
}
probability ( elseif | fncpar ) {
  (0) : 0.984375, 0.015625;
  (1) : 0.125, 0.875;
}
probability ( return | block ) {
  (0) : 0.8448276, 0.1551724;
  (1) : 0.0, 1.0;
}
probability ( default | break ) {
  (0) : 0.96825397, 0.03174603;
  (1) : 0.0, 1.0;
}
probability ( constr | countit, prepost ) {
  (0, 0) : 0.8545455, 0.1454545;
  (1, 0) : 1.0, 0.0;
  (0, 1) : 1.0, 0.0;
  (1, 1) : 0.05882353, 0.94117647;
}
probability ( fncs | fncpar ) {
  (0) : 0.984375, 0.015625;
  (1) : 0.25, 0.75;
}
probability ( sequen | fncpar ) {
  (0) : 0.984375, 0.015625;
  (1) : 0.0, 1.0;
}
