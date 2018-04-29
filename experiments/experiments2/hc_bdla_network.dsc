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
probability ( keyid | assgn, fncpro, eventit, beflp ) {
  (0, 0, 0, 0) : 1.0, 0.0;
  (1, 0, 0, 0) : 0.5, 0.5;
  (0, 1, 0, 0) : 1.0, 0.0;
  (1, 1, 0, 0) : 0.5, 0.5;
  (0, 0, 1, 0) : 0.5, 0.5;
  (1, 0, 1, 0) : 0.5, 0.5;
  (0, 1, 1, 0) : 0.5, 0.5;
  (1, 1, 1, 0) : 0.5, 0.5;
  (0, 0, 0, 1) : 0.5, 0.5;
  (1, 0, 0, 1) : 0.5, 0.5;
  (0, 1, 0, 1) : 0.0, 1.0;
  (1, 1, 0, 1) : 0.5, 0.5;
  (0, 0, 1, 1) : 0.0, 1.0;
  (1, 0, 1, 1) : 0.5, 0.5;
  (0, 1, 1, 1) : 0.8461538, 0.1538462;
  (1, 1, 1, 1) : 0.0, 1.0;
}
probability ( vars | decl ) {
  (0) : 1.0, 0.0;
  (1) : 0.1818182, 0.8181818;
}
probability ( constl | fncpro ) {
  (0) : 1.0, 0.0;
  (1) : 0.6923077, 0.3076923;
}
probability ( opaspr | logrel, exprn ) {
  (0, 0) : 1.0, 0.0;
  (1, 0) : 1.0, 0.0;
  (0, 1) : 1.0, 0.0;
  (1, 1) : 0.0, 1.0;
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
probability ( arith | fncpro, endlp ) {
  (0, 0) : 0.98076923, 0.01923077;
  (1, 0) : 1.0, 0.0;
  (0, 1) : 1.0, 0.0;
  (1, 1) : 0.2857143, 0.7142857;
}
probability ( logrel | arith, nestit, switch ) {
  (0, 0, 0) : 1.0, 0.0;
  (1, 0, 0) : 1.0, 0.0;
  (0, 1, 0) : 1.0, 0.0;
  (1, 1, 0) : 1.0, 0.0;
  (0, 0, 1) : 0.5, 0.5;
  (1, 0, 1) : 1.0, 0.0;
  (0, 1, 1) : 1.0, 0.0;
  (1, 1, 1) : 0.0, 1.0;
}
probability ( block | break ) {
  (0) : 0.92063492, 0.07936508;
  (1) : 0.0, 1.0;
}
probability ( decl | keyid, assgn, callfnc, constr ) {
  (0, 0, 0, 0) : 1.0, 0.0;
  (1, 0, 0, 0) : 0.0, 1.0;
  (0, 1, 0, 0) : 0.5, 0.5;
  (1, 1, 0, 0) : 0.5, 0.5;
  (0, 0, 1, 0) : 1.0, 0.0;
  (1, 0, 1, 0) : 1.0, 0.0;
  (0, 1, 1, 0) : 0.5, 0.5;
  (1, 1, 1, 0) : 0.5, 0.5;
  (0, 0, 0, 1) : 0.8181818, 0.1818182;
  (1, 0, 0, 1) : 0.0, 1.0;
  (0, 1, 0, 1) : 0.5, 0.5;
  (1, 1, 0, 1) : 0.5, 0.5;
  (0, 0, 1, 1) : 1.0, 0.0;
  (1, 0, 1, 1) : 1.0, 0.0;
  (0, 1, 1, 1) : 0.5, 0.5;
  (1, 1, 1, 1) : 0.0, 1.0;
}
probability ( exprn | incdcr, switch ) {
  (0, 0) : 1.0, 0.0;
  (1, 0) : 1.0, 0.0;
  (0, 1) : 1.0, 0.0;
  (1, 1) : 0.0, 1.0;
}
probability ( lrvalue | assgn ) {
  (0) : 1.0, 0.0;
  (1) : 0.0, 1.0;
}
probability ( incdcr | arith, itcpt ) {
  (0, 0) : 1.0, 0.0;
  (1, 0) : 1.0, 0.0;
  (0, 1) : 0.3333333, 0.6666667;
  (1, 1) : 0.0, 1.0;
}
probability ( varscop | selcpt, stdio, exitlp, scanf ) {
  (0, 0, 0, 0) : 0.98275862, 0.01724138;
  (1, 0, 0, 0) : 1.0, 0.0;
  (0, 1, 0, 0) : 1.0, 0.0;
  (1, 1, 0, 0) : 0.0, 1.0;
  (0, 0, 1, 0) : 1.0, 0.0;
  (1, 0, 1, 0) : 1.0, 0.0;
  (0, 1, 1, 0) : 0.0, 1.0;
  (1, 1, 1, 0) : 0.5, 0.5;
  (0, 0, 0, 1) : 1.0, 0.0;
  (1, 0, 0, 1) : 0.5, 0.5;
  (0, 1, 0, 1) : 0.5, 0.5;
  (1, 1, 0, 1) : 0.5, 0.5;
  (0, 0, 1, 1) : 0.5, 0.5;
  (1, 0, 1, 1) : 0.0, 1.0;
  (0, 1, 1, 1) : 0.5, 0.5;
  (1, 1, 1, 1) : 0.0, 1.0;
}
probability ( fncpro | block, endlp, break ) {
  (0, 0, 0) : 0.94444444, 0.05555556;
  (1, 0, 0) : 0.0, 1.0;
  (0, 1, 0) : 0.5, 0.5;
  (1, 1, 0) : 0.0, 1.0;
  (0, 0, 1) : 0.5, 0.5;
  (1, 0, 1) : 1.0, 0.0;
  (0, 1, 1) : 0.5, 0.5;
  (1, 1, 1) : 0.0, 1.0;
}
probability ( init | keyid, itcpt, fncpar, countit ) {
  (0, 0, 0, 0) : 0.94915254, 0.05084746;
  (1, 0, 0, 0) : 0.5, 0.5;
  (0, 1, 0, 0) : 1.0, 0.0;
  (1, 1, 0, 0) : 0.5, 0.5;
  (0, 0, 1, 0) : 0.5, 0.5;
  (1, 0, 1, 0) : 0.0, 1.0;
  (0, 1, 1, 0) : 0.5, 0.5;
  (1, 1, 1, 0) : 0.5, 0.5;
  (0, 0, 0, 1) : 0.0, 1.0;
  (1, 0, 0, 1) : 1.0, 0.0;
  (0, 1, 0, 1) : 0.5, 0.5;
  (1, 1, 0, 1) : 0.0, 1.0;
  (0, 0, 1, 1) : 1.0, 0.0;
  (1, 0, 1, 1) : 0.5, 0.5;
  (0, 1, 1, 1) : 0.0, 1.0;
  (1, 1, 1, 1) : 0.0, 1.0;
}
probability ( itcpt | constl, block, switch ) {
  (0, 0, 0) : 1.0, 0.0;
  (1, 0, 0) : 1.0, 0.0;
  (0, 1, 0) : 1.0, 0.0;
  (1, 1, 0) : 0.0, 1.0;
  (0, 0, 1) : 0.5, 0.5;
  (1, 0, 1) : 0.5, 0.5;
  (0, 1, 1) : 0.0, 1.0;
  (1, 1, 1) : 0.1666667, 0.8333333;
}
probability ( selcpt | exprn, incdcr, callfnc ) {
  (0, 0, 0) : 1.0, 0.0;
  (1, 0, 0) : 0.5, 0.5;
  (0, 1, 0) : 0.0, 1.0;
  (1, 1, 0) : 1.0, 0.0;
  (0, 0, 1) : 1.0, 0.0;
  (1, 0, 1) : 0.5, 0.5;
  (0, 1, 1) : 0.5, 0.5;
  (1, 1, 1) : 0.0, 1.0;
}
probability ( fncpar | countit, switch, sequen ) {
  (0, 0, 0) : 1.0, 0.0;
  (1, 0, 0) : 1.0, 0.0;
  (0, 1, 0) : 1.0, 0.0;
  (1, 1, 0) : 0.5, 0.5;
  (0, 0, 1) : 0.0, 1.0;
  (1, 0, 1) : 1.0, 0.0;
  (0, 1, 1) : 0.5, 0.5;
  (1, 1, 1) : 0.0, 1.0;
}
probability ( countit | block, beflp, constr ) {
  (0, 0, 0) : 1.0, 0.0;
  (1, 0, 0) : 1.0, 0.0;
  (0, 1, 0) : 0.0, 1.0;
  (1, 1, 0) : 0.75, 0.25;
  (0, 0, 1) : 1.0, 0.0;
  (1, 0, 1) : 1.0, 0.0;
  (0, 1, 1) : 0.5, 0.5;
  (1, 1, 1) : 0.0, 1.0;
}
probability ( eventit | beflp, break ) {
  (0, 0) : 1.0, 0.0;
  (1, 0) : 0.1666667, 0.8333333;
  (0, 1) : 1.0, 0.0;
  (1, 1) : 0.0, 1.0;
}
probability ( multi | incdcr, itcpt, pasaddr ) {
  (0, 0, 0) : 1.0, 0.0;
  (1, 0, 0) : 0.5, 0.5;
  (0, 1, 0) : 1.0, 0.0;
  (1, 1, 0) : 0.0, 1.0;
  (0, 0, 1) : 0.95833333, 0.04166667;
  (1, 0, 1) : 0.5, 0.5;
  (0, 1, 1) : 0.0, 1.0;
  (1, 1, 1) : 0.0, 1.0;
}
probability ( nestit | block, fncpro ) {
  (0, 0) : 0.8301887, 0.1698113;
  (1, 0) : 1.0, 0.0;
  (0, 1) : 0.6, 0.4;
  (1, 1) : 0.04761905, 0.95238095;
}
probability ( fncdef | arith, fncpro, countit, switch, prepost ) {
  (0, 0, 0, 0, 0) : 1.0, 0.0;
  (1, 0, 0, 0, 0) : 0.0, 1.0;
  (0, 1, 0, 0, 0) : 0.0, 1.0;
  (1, 1, 0, 0, 0) : 1.0, 0.0;
  (0, 0, 1, 0, 0) : 1.0, 0.0;
  (1, 0, 1, 0, 0) : 0.5, 0.5;
  (0, 1, 1, 0, 0) : 1.0, 0.0;
  (1, 1, 1, 0, 0) : 0.5, 0.5;
  (0, 0, 0, 1, 0) : 0.5, 0.5;
  (1, 0, 0, 1, 0) : 0.5, 0.5;
  (0, 1, 0, 1, 0) : 0.5, 0.5;
  (1, 1, 0, 1, 0) : 0.0, 1.0;
  (0, 0, 1, 1, 0) : 0.5, 0.5;
  (1, 0, 1, 1, 0) : 0.5, 0.5;
  (0, 1, 1, 1, 0) : 0.5, 0.5;
  (1, 1, 1, 1, 0) : 0.5, 0.5;
  (0, 0, 0, 0, 1) : 1.0, 0.0;
  (1, 0, 0, 0, 1) : 0.5, 0.5;
  (0, 1, 0, 0, 1) : 0.0, 1.0;
  (1, 1, 0, 0, 1) : 0.0, 1.0;
  (0, 0, 1, 0, 1) : 0.5, 0.5;
  (1, 0, 1, 0, 1) : 0.5, 0.5;
  (0, 1, 1, 0, 1) : 1.0, 0.0;
  (1, 1, 1, 0, 1) : 0.0, 1.0;
  (0, 0, 0, 1, 1) : 0.5, 0.5;
  (1, 0, 0, 1, 1) : 0.5, 0.5;
  (0, 1, 0, 1, 1) : 0.5, 0.5;
  (1, 1, 0, 1, 1) : 0.5, 0.5;
  (0, 0, 1, 1, 1) : 0.5, 0.5;
  (1, 0, 1, 1, 1) : 0.5, 0.5;
  (0, 1, 1, 1, 1) : 0.0, 1.0;
  (1, 1, 1, 1, 1) : 0.0, 1.0;
}
probability ( callfnc | fncpar, nestit ) {
  (0, 0) : 1.0, 0.0;
  (1, 0) : 1.0, 0.0;
  (0, 1) : 0.9375, 0.0625;
  (1, 1) : 0.06666667, 0.93333333;
}
probability ( pasaddr | callfnc, printf, return ) {
  (0, 0, 0) : 0.7826087, 0.2173913;
  (1, 0, 0) : 0.5, 0.5;
  (0, 1, 0) : 0.0, 1.0;
  (1, 1, 0) : 0.5, 0.5;
  (0, 0, 1) : 0.375, 0.625;
  (1, 0, 1) : 0.0, 1.0;
  (0, 1, 1) : 0.5, 0.5;
  (1, 1, 1) : 0.0, 1.0;
}
probability ( stdio | printf ) {
  (0) : 0.94029851, 0.05970149;
  (1) : 0.3846154, 0.6153846;
}
probability ( conti | ifelse, fncs ) {
  (0, 0) : 0.4285714, 0.5714286;
  (1, 0) : 0.0, 1.0;
  (0, 1) : 1.0, 0.0;
  (1, 1) : 0.8181818, 0.1818182;
}
probability ( exitlp | elseif, fncs ) {
  (0, 0) : 0.9516129, 0.0483871;
  (1, 0) : 1.0, 0.0;
  (0, 1) : 1.0, 0.0;
  (1, 1) : 0.1, 0.9;
}
probability ( endlp | eventit, prepost, sequen ) {
  (0, 0, 0) : 0.98113208, 0.01886792;
  (1, 0, 0) : 0.0, 1.0;
  (0, 1, 0) : 0.6666667, 0.3333333;
  (1, 1, 0) : 1.0, 0.0;
  (0, 0, 1) : 0.5, 0.5;
  (1, 0, 1) : 0.0, 1.0;
  (0, 1, 1) : 0.5, 0.5;
  (1, 1, 1) : 0.0, 1.0;
}
probability ( beflp | block ) {
  (0) : 0.96551724, 0.03448276;
  (1) : 0.09090909, 0.90909091;
}
probability ( ifelse | itcpt, eventit, beflp, constr, sequen ) {
  (0, 0, 0, 0, 0) : 1.0, 0.0;
  (1, 0, 0, 0, 0) : 0.5, 0.5;
  (0, 1, 0, 0, 0) : 0.5, 0.5;
  (1, 1, 0, 0, 0) : 0.5, 0.5;
  (0, 0, 1, 0, 0) : 0.5, 0.5;
  (1, 0, 1, 0, 0) : 0.5, 0.5;
  (0, 1, 1, 0, 0) : 1.0, 0.0;
  (1, 1, 1, 0, 0) : 0.0, 1.0;
  (0, 0, 0, 1, 0) : 1.0, 0.0;
  (1, 0, 0, 1, 0) : 0.5, 0.5;
  (0, 1, 0, 1, 0) : 0.5, 0.5;
  (1, 1, 0, 1, 0) : 0.5, 0.5;
  (0, 0, 1, 1, 0) : 0.5, 0.5;
  (1, 0, 1, 1, 0) : 1.0, 0.0;
  (0, 1, 1, 1, 0) : 0.5, 0.5;
  (1, 1, 1, 1, 0) : 0.5, 0.5;
  (0, 0, 0, 0, 1) : 0.5, 0.5;
  (1, 0, 0, 0, 1) : 0.5, 0.5;
  (0, 1, 0, 0, 1) : 0.5, 0.5;
  (1, 1, 0, 0, 1) : 0.5, 0.5;
  (0, 0, 1, 0, 1) : 0.5, 0.5;
  (1, 0, 1, 0, 1) : 0.5, 0.5;
  (0, 1, 1, 0, 1) : 0.0, 1.0;
  (1, 1, 1, 0, 1) : 1.0, 0.0;
  (0, 0, 0, 1, 1) : 0.5, 0.5;
  (1, 0, 0, 1, 1) : 0.5, 0.5;
  (0, 1, 0, 1, 1) : 0.5, 0.5;
  (1, 1, 0, 1, 1) : 0.5, 0.5;
  (0, 0, 1, 1, 1) : 0.5, 0.5;
  (1, 0, 1, 1, 1) : 0.5, 0.5;
  (0, 1, 1, 1, 1) : 1.0, 0.0;
  (1, 1, 1, 1, 1) : 0.0, 1.0;
}
probability ( ifseri | opaspr, eventit ) {
  (0, 0) : 0.98305085, 0.01694915;
  (1, 0) : 0.5, 0.5;
  (0, 1) : 0.5, 0.5;
  (1, 1) : 0.0, 1.0;
}
probability ( switch | eventit, break ) {
  (0, 0) : 1.0, 0.0;
  (1, 0) : 1.0, 0.0;
  (0, 1) : 1.0, 0.0;
  (1, 1) : 0.0, 1.0;
}
probability ( scanf | dtype, exprn, fncpar ) {
  (0, 0, 0) : 1.0, 0.0;
  (1, 0, 0) : 0.5, 0.5;
  (0, 1, 0) : 0.0, 1.0;
  (1, 1, 0) : 0.5, 0.5;
  (0, 0, 1) : 1.0, 0.0;
  (1, 0, 1) : 0.5, 0.5;
  (0, 1, 1) : 0.8571429, 0.1428571;
  (1, 1, 1) : 0.0, 1.0;
}
probability ( printf | assgn, selcpt ) {
  (0, 0) : 0.95588235, 0.04411765;
  (1, 0) : 0.5, 0.5;
  (0, 1) : 0.4, 0.6;
  (1, 1) : 0.0, 1.0;
}
probability ( break | default ) {
  (0) : 1.0, 0.0;
  (1) : 0.1052632, 0.8947368;
}
probability ( prepost | block, countit ) {
  (0, 0) : 0.92857143, 0.07142857;
  (1, 0) : 0.6, 0.4;
  (0, 1) : 1.0, 0.0;
  (1, 1) : 0.0, 1.0;
}
probability ( elseif | selcpt, fncpar ) {
  (0, 0) : 0.98412698, 0.01587302;
  (1, 0) : 1.0, 0.0;
  (0, 1) : 0.4, 0.6;
  (1, 1) : 0.0, 1.0;
}
probability ( return | constl, block, fncdef ) {
  (0, 0, 0) : 0.8888889, 0.1111111;
  (1, 0, 0) : 0.5, 0.5;
  (0, 1, 0) : 0.0, 1.0;
  (1, 1, 0) : 0.0, 1.0;
  (0, 0, 1) : 0.0, 1.0;
  (1, 0, 1) : 1.0, 0.0;
  (0, 1, 1) : 0.0, 1.0;
  (1, 1, 1) : 0.0, 1.0;
}
probability ( default ) {
   0.7625, 0.2375;
}
probability ( constr | break ) {
  (0) : 0.8571429, 0.1428571;
  (1) : 0.1176471, 0.8823529;
}
probability ( fncs | fncpar, fncdef ) {
  (0, 0) : 1.0, 0.0;
  (1, 0) : 1.0, 0.0;
  (0, 1) : 0.875, 0.125;
  (1, 1) : 0.2, 0.8;
}
probability ( sequen | eventit, constr ) {
  (0, 0) : 1.0, 0.0;
  (1, 0) : 0.6666667, 0.3333333;
  (0, 1) : 1.0, 0.0;
  (1, 1) : 0.0, 1.0;
}