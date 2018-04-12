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
node conti {
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
probability ( keyid | beflp ) {
  (0) : 1.0, 0.0;
  (1) : 0.5, 0.5;
}
probability ( vars | decl ) {
  (0) : 1.0, 0.0;
  (1) : 0.1818182, 0.8181818;
}
probability ( constl | fncpro ) {
  (0) : 1.0, 0.0;
  (1) : 0.6923077, 0.3076923;
}
probability ( opaspr | exprn ) {
  (0) : 1.0, 0.0;
  (1) : 0.3076923, 0.6923077;
}
probability ( dtype | lrvalue ) {
  (0) : 1.0, 0.0;
  (1) : 0.2857143, 0.7142857;
}
probability ( ampas | scanf ) {
  (0) : 0.890411, 0.109589;
  (1) : 0.0, 1.0;
}
probability ( assgn | opaspr ) {
  (0) : 1.0, 0.0;
  (1) : 0.2222222, 0.7777778;
}
probability ( arith | endlp ) {
  (0) : 0.98245614, 0.01754386;
  (1) : 0.3478261, 0.6521739;
}
probability ( logrel | opaspr ) {
  (0) : 0.98591549, 0.01408451;
  (1) : 0.0, 1.0;
}
probability ( block | beflp ) {
  (0) : 0.96551724, 0.03448276;
  (1) : 0.09090909, 0.90909091;
}
probability ( decl | keyid ) {
  (0) : 0.97101449, 0.02898551;
  (1) : 0.1818182, 0.8181818;
}
probability ( exprn | incdcr ) {
  (0) : 1.0, 0.0;
  (1) : 0.07142857, 0.92857143;
}
probability ( lrvalue | assgn ) {
  (0) : 1.0, 0.0;
  (1) : 0.0, 1.0;
}
probability ( incdcr | multi ) {
  (0) : 1.0, 0.0;
  (1) : 0.125, 0.875;
}
probability ( varscop | selcpt ) {
  (0) : 0.97058824, 0.02941176;
  (1) : 0.3333333, 0.6666667;
}
probability ( fncpro | block ) {
  (0) : 0.9137931, 0.0862069;
  (1) : 0.04545455, 0.95454545;
}
probability ( init | countit ) {
  (0) : 0.93442623, 0.06557377;
  (1) : 0.1052632, 0.8947368;
}
probability ( itcpt | switch ) {
  (0) : 0.984375, 0.015625;
  (1) : 0.0625, 0.9375;
}
probability ( selcpt | incdcr ) {
  (0) : 1.0, 0.0;
  (1) : 0.1428571, 0.8571429;
}
probability ( fncpar ) {
   0.8, 0.2;
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
probability ( fncdef | fncpro ) {
  (0) : 0.98148148, 0.01851852;
  (1) : 0.1538462, 0.8461538;
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
probability ( conti | fncs ) {
  (0) : 0.4029851, 0.5970149;
  (1) : 0.8461538, 0.1538462;
}
probability ( exitlp | fncs ) {
  (0) : 0.95522388, 0.04477612;
  (1) : 0.3076923, 0.6923077;
}
probability ( endlp | eventit ) {
  (0) : 0.94915254, 0.05084746;
  (1) : 0.04761905, 0.95238095;
}
probability ( beflp | eventit ) {
  (0) : 0.98305085, 0.01694915;
  (1) : 0.0, 1.0;
}
probability ( ifelse | fncpar ) {
  (0) : 0.984375, 0.015625;
  (1) : 0.125, 0.875;
}
probability ( ifseri | eventit ) {
  (0) : 0.98305085, 0.01694915;
  (1) : 0.2857143, 0.7142857;
}
probability ( switch | fncpar ) {
  (0) : 0.984375, 0.015625;
  (1) : 0.0625, 0.9375;
}
probability ( scanf | exprn ) {
  (0) : 1.0, 0.0;
  (1) : 0.4615385, 0.5384615;
}
probability ( printf | selcpt ) {
  (0) : 0.95588235, 0.04411765;
  (1) : 0.1666667, 0.8333333;
}
probability ( break | switch ) {
  (0) : 0.984375, 0.015625;
  (1) : 0.0, 1.0;
}
probability ( prepost | block ) {
  (0) : 0.93103448, 0.06896552;
  (1) : 0.1363636, 0.8636364;
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
probability ( constr | default ) {
  (0) : 0.8688525, 0.1311475;
  (1) : 0.1578947, 0.8421053;
}
probability ( fncs | switch ) {
  (0) : 0.984375, 0.015625;
  (1) : 0.25, 0.75;
}
probability ( sequen | fncpar ) {
  (0) : 0.984375, 0.015625;
  (1) : 0.0, 1.0;
}
