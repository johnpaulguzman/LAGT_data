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
probability ( dtype ) {
   0.9375, 0.0625;
}
probability ( ampas ) {
   0.8125, 0.1875;
}
probability ( assgn ) {
   0.9125, 0.0875;
}
probability ( arith | fncpro, fncdef ) {
  (0, 0) : 1.0, 0.0;
  (1, 0) : 0.5, 0.5;
  (0, 1) : 0.0, 1.0;
  (1, 1) : 0.4090909, 0.5909091;
}
probability ( logrel ) {
   0.875, 0.125;
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
probability ( fncpro ) {
   0.675, 0.325;
}
probability ( init | default ) {
  (0) : 0.90163934, 0.09836066;
  (1) : 0.2105263, 0.7894737;
}
probability ( itcpt | fncpar ) {
  (0) : 0.96875, 0.03125;
  (1) : 0.125, 0.875;
}
probability ( selcpt ) {
   0.85, 0.15;
}
probability ( fncpar ) {
   0.8, 0.2;
}
probability ( countit | fncpro ) {
  (0) : 0.98148148, 0.01851852;
  (1) : 0.3076923, 0.6923077;
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
probability ( fncdef | fncpro ) {
  (0) : 0.98148148, 0.01851852;
  (1) : 0.1538462, 0.8461538;
}
probability ( callfnc ) {
   0.8125, 0.1875;
}
probability ( pasaddr ) {
   0.525, 0.475;
}
probability ( stdio | ampas, varscop, printf ) {
  (0, 0, 0) : 0.98305085, 0.01694915;
  (1, 0, 0) : 0.6666667, 0.3333333;
  (0, 1, 0) : 0.5, 0.5;
  (1, 1, 0) : 0.5, 0.5;
  (0, 0, 1) : 0.6666667, 0.3333333;
  (1, 0, 1) : 0.5, 0.5;
  (0, 1, 1) : 0.0, 1.0;
  (1, 1, 1) : 0.2857143, 0.7142857;
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
