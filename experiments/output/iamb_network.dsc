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
probability ( constl | fncpro ) {
  (0) : 1.0, 0.0;
  (1) : 0.6923077, 0.3076923;
}
probability ( opaspr | logrel ) {
  (0) : 1.0, 0.0;
  (1) : 0.1, 0.9;
}
probability ( dtype | scanf ) {
  (0) : 1.0, 0.0;
  (1) : 0.2857143, 0.7142857;
}
probability ( ampas ) {
   0.8125, 0.1875;
}
probability ( assgn | lrvalue ) {
  (0) : 1.0, 0.0;
  (1) : 0.0, 1.0;
}
probability ( arith | endlp ) {
  (0) : 0.98245614, 0.01754386;
  (1) : 0.3478261, 0.6521739;
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
probability ( exprn | incdcr ) {
  (0) : 1.0, 0.0;
  (1) : 0.07142857, 0.92857143;
}
probability ( lrvalue ) {
   0.9125, 0.0875;
}
probability ( incdcr | selcpt ) {
  (0) : 0.97058824, 0.02941176;
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
probability ( itcpt | multi ) {
  (0) : 0.984375, 0.015625;
  (1) : 0.0625, 0.9375;
}
probability ( selcpt ) {
   0.85, 0.15;
}
probability ( fncpar | sequen ) {
  (0) : 1.0, 0.0;
  (1) : 0.05882353, 0.94117647;
}
probability ( countit | beflp ) {
  (0) : 1.0, 0.0;
  (1) : 0.1363636, 0.8636364;
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
probability ( pasaddr | printf ) {
  (0) : 0.6268657, 0.3731343;
  (1) : 0.0, 1.0;
}
probability ( stdio | ampas, varscop ) {
  (0, 0) : 0.96774194, 0.03225806;
  (1, 0) : 0.625, 0.375;
  (0, 1) : 0.3333333, 0.6666667;
  (1, 1) : 0.2857143, 0.7142857;
}
probability ( conti ) {
   0.475, 0.525;
}
probability ( exitlp | fncs ) {
  (0) : 0.95522388, 0.04477612;
  (1) : 0.3076923, 0.6923077;
}
probability ( endlp ) {
   0.7125, 0.2875;
}
probability ( beflp ) {
   0.725, 0.275;
}
probability ( ifelse | constr ) {
  (0) : 0.96428571, 0.03571429;
  (1) : 0.4583333, 0.5416667;
}
probability ( ifseri ) {
   0.8, 0.2;
}
probability ( switch | break ) {
  (0) : 1.0, 0.0;
  (1) : 0.05882353, 0.94117647;
}
probability ( scanf | ampas ) {
  (0) : 1.0, 0.0;
  (1) : 0.5333333, 0.4666667;
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
