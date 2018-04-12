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
probability ( opaspr ) {
   0.8875, 0.1125;
}
probability ( dtype | scanf ) {
  (0) : 1.0, 0.0;
  (1) : 0.2857143, 0.7142857;
}
probability ( ampas | conti ) {
  (0) : 0.6842105, 0.3157895;
  (1) : 0.92857143, 0.07142857;
}
probability ( assgn | lrvalue ) {
  (0) : 1.0, 0.0;
  (1) : 0.0, 1.0;
}
probability ( arith ) {
   0.8, 0.2;
}
probability ( logrel | arith ) {
  (0) : 1.0, 0.0;
  (1) : 0.375, 0.625;
}
probability ( block | break ) {
  (0) : 0.92063492, 0.07936508;
  (1) : 0.0, 1.0;
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
probability ( fncpro | arith, fncdef ) {
  (0, 0) : 0.96363636, 0.03636364;
  (1, 0) : 0.0, 1.0;
  (0, 1) : 0.0, 1.0;
  (1, 1) : 0.07142857, 0.92857143;
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
probability ( countit | beflp ) {
  (0) : 1.0, 0.0;
  (1) : 0.1363636, 0.8636364;
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
probability ( fncdef | arith ) {
  (0) : 0.859375, 0.140625;
  (1) : 0.125, 0.875;
}
probability ( callfnc ) {
   0.8125, 0.1875;
}
probability ( pasaddr ) {
   0.525, 0.475;
}
probability ( stdio ) {
   0.85, 0.15;
}
probability ( conti ) {
   0.475, 0.525;
}
probability ( exitlp ) {
   0.85, 0.15;
}
probability ( endlp ) {
   0.7125, 0.2875;
}
probability ( beflp ) {
   0.725, 0.275;
}
probability ( ifelse ) {
   0.8125, 0.1875;
}
probability ( ifseri ) {
   0.8, 0.2;
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
probability ( break ) {
   0.7875, 0.2125;
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
probability ( default | break ) {
  (0) : 0.96825397, 0.03174603;
  (1) : 0.0, 1.0;
}
probability ( constr ) {
   0.7, 0.3;
}
probability ( fncs ) {
   0.8375, 0.1625;
}
probability ( sequen | block ) {
  (0) : 1.0, 0.0;
  (1) : 0.2272727, 0.7727273;
}
