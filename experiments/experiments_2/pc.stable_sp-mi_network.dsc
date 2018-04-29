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
probability ( keyid | decl ) {
  (0) : 0.97101449, 0.02898551;
  (1) : 0.1818182, 0.8181818;
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
probability ( dtype ) {
   0.9375, 0.0625;
}
probability ( ampas ) {
   0.8125, 0.1875;
}
probability ( assgn | lrvalue ) {
  (0) : 1.0, 0.0;
  (1) : 0.0, 1.0;
}
probability ( arith | logrel, endlp ) {
  (0, 0) : 0.98245614, 0.01754386;
  (1, 0) : 0.5, 0.5;
  (0, 1) : 0.6153846, 0.3846154;
  (1, 1) : 0.0, 1.0;
}
probability ( logrel ) {
   0.875, 0.125;
}
probability ( block | return ) {
  (0) : 1.0, 0.0;
  (1) : 0.2903226, 0.7096774;
}
probability ( decl ) {
   0.8625, 0.1375;
}
probability ( exprn ) {
   0.8375, 0.1625;
}
probability ( lrvalue ) {
   0.9125, 0.0875;
}
probability ( incdcr | exprn ) {
  (0) : 0.98507463, 0.01492537;
  (1) : 0.0, 1.0;
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
probability ( itcpt ) {
   0.8, 0.2;
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
probability ( eventit ) {
   0.7375, 0.2625;
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
probability ( stdio | varscop ) {
  (0) : 0.92857143, 0.07142857;
  (1) : 0.3, 0.7;
}
probability ( conti ) {
   0.475, 0.525;
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
probability ( ifelse ) {
   0.8125, 0.1875;
}
probability ( ifseri | exprn ) {
  (0) : 0.94029851, 0.05970149;
  (1) : 0.07692308, 0.92307692;
}
probability ( switch ) {
   0.8, 0.2;
}
probability ( scanf | dtype, ampas ) {
  (0, 0) : 1.0, 0.0;
  (1, 0) : 0.5, 0.5;
  (0, 1) : 0.8, 0.2;
  (1, 1) : 0.0, 1.0;
}
probability ( printf | varscop, pasaddr ) {
  (0, 0) : 1.0, 0.0;
  (1, 0) : 1.0, 0.0;
  (0, 1) : 0.8333333, 0.1666667;
  (1, 1) : 0.0, 1.0;
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
probability ( return ) {
   0.6125, 0.3875;
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
