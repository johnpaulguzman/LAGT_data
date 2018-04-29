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
probability ( keyid ) {
   0.8625, 0.1375;
}
probability ( vars | decl ) {
  (0) : 1.0, 0.0;
  (1) : 0.1818182, 0.8181818;
}
probability ( constl ) {
   0.9, 0.1;
}
probability ( opaspr | logrel ) {
  (0) : 1.0, 0.0;
  (1) : 0.1, 0.9;
}
probability ( dtype | scanf ) {
  (0) : 1.0, 0.0;
  (1) : 0.2857143, 0.7142857;
}
probability ( ampas | stdio ) {
  (0) : 0.8970588, 0.1029412;
  (1) : 0.3333333, 0.6666667;
}
probability ( assgn ) {
   0.9125, 0.0875;
}
probability ( arith ) {
   0.8, 0.2;
}
probability ( logrel ) {
   0.875, 0.125;
}
probability ( block ) {
   0.725, 0.275;
}
probability ( decl ) {
   0.8625, 0.1375;
}
probability ( exprn | incdcr ) {
  (0) : 1.0, 0.0;
  (1) : 0.07142857, 0.92857143;
}
probability ( lrvalue ) {
   0.9125, 0.0875;
}
probability ( incdcr ) {
   0.825, 0.175;
}
probability ( varscop ) {
   0.875, 0.125;
}
probability ( fncpro | fncdef ) {
  (0) : 0.92982456, 0.07017544;
  (1) : 0.04347826, 0.95652174;
}
probability ( init ) {
   0.7375, 0.2625;
}
probability ( itcpt | switch ) {
  (0) : 0.984375, 0.015625;
  (1) : 0.0625, 0.9375;
}
probability ( selcpt ) {
   0.85, 0.15;
}
probability ( fncpar ) {
   0.8, 0.2;
}
probability ( countit ) {
   0.7625, 0.2375;
}
probability ( eventit | beflp ) {
  (0) : 1.0, 0.0;
  (1) : 0.04545455, 0.95454545;
}
probability ( multi ) {
   0.8, 0.2;
}
probability ( nestit ) {
   0.6125, 0.3875;
}
probability ( fncdef ) {
   0.7125, 0.2875;
}
probability ( callfnc ) {
   0.8125, 0.1875;
}
probability ( pasaddr ) {
   0.525, 0.475;
}
probability ( stdio | printf ) {
  (0) : 0.94029851, 0.05970149;
  (1) : 0.3846154, 0.6153846;
}
probability ( conti ) {
   0.475, 0.525;
}
probability ( exitlp ) {
   0.85, 0.15;
}
probability ( endlp | fncpro ) {
  (0) : 0.96296296, 0.03703704;
  (1) : 0.1923077, 0.8076923;
}
probability ( beflp ) {
   0.725, 0.275;
}
probability ( ifelse ) {
   0.8125, 0.1875;
}
probability ( ifseri | sequen ) {
  (0) : 0.95238095, 0.04761905;
  (1) : 0.2352941, 0.7647059;
}
probability ( switch ) {
   0.8, 0.2;
}
probability ( scanf ) {
   0.9125, 0.0875;
}
probability ( printf ) {
   0.8375, 0.1625;
}
probability ( break | default ) {
  (0) : 1.0, 0.0;
  (1) : 0.1052632, 0.8947368;
}
probability ( prepost ) {
   0.7125, 0.2875;
}
probability ( elseif ) {
   0.8125, 0.1875;
}
probability ( return | fncdef ) {
  (0) : 0.8421053, 0.1578947;
  (1) : 0.04347826, 0.95652174;
}
probability ( default ) {
   0.7625, 0.2375;
}
probability ( constr ) {
   0.7, 0.3;
}
probability ( fncs ) {
   0.8375, 0.1625;
}
probability ( sequen ) {
   0.7875, 0.2125;
}
