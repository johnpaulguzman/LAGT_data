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
probability ( keyid | decl, exprn ) {
  (0, 0) : 0.984375, 0.015625;
  (1, 0) : 0.3333333, 0.6666667;
  (0, 1) : 0.8, 0.2;
  (1, 1) : 0.125, 0.875;
}
probability ( vars | scanf ) {
  (0) : 0.96129032, 0.03870968;
  (1) : 0.4166667, 0.5833333;
}
probability ( constl | fncpro ) {
  (0) : 1.0, 0.0;
  (1) : 0.6923077, 0.3076923;
}
probability ( opaspr | logrel, decl ) {
  (0, 0) : 1.0, 0.0;
  (1, 0) : 0.3333333, 0.6666667;
  (0, 1) : 1.0, 0.0;
  (1, 1) : 0.0, 1.0;
}
probability ( dtype | arith, scanf ) {
  (0, 0) : 1.0, 0.0;
  (1, 0) : 0.91891892, 0.08108108;
  (0, 1) : 1.0, 0.0;
  (1, 1) : 0.2727273, 0.7272727;
}
probability ( ampas | endlp, scanf ) {
  (0, 0) : 0.94736842, 0.05263158;
  (1, 0) : 0.6875, 0.3125;
  (0, 1) : 0.5, 0.5;
  (1, 1) : 0.0, 1.0;
}
probability ( assgn | dtype, exprn ) {
  (0, 0) : 0.8842975, 0.1157025;
  (1, 0) : 0.0, 1.0;
  (0, 1) : 0.5142857, 0.4857143;
  (1, 1) : 0.0, 1.0;
}
probability ( arith ) {
   0.7125749, 0.2874251;
}
probability ( logrel | assgn ) {
  (0) : 0.92, 0.08;
  (1) : 0.1190476, 0.8809524;
}
probability ( block | beflp ) {
  (0) : 0.96551724, 0.03448276;
  (1) : 0.09090909, 0.90909091;
}
probability ( decl | vars ) {
  (0) : 0.97183099, 0.02816901;
  (1) : 0.0, 1.0;
}
probability ( exprn | arith ) {
  (0) : 0.92436975, 0.07563025;
  (1) : 0.25, 0.75;
}
probability ( lrvalue | opaspr ) {
  (0) : 1.0, 0.0;
  (1) : 0.2222222, 0.7777778;
}
probability ( incdcr | opaspr, exprn ) {
  (0, 0) : 0.98507463, 0.01492537;
  (1, 0) : 0.5, 0.5;
  (0, 1) : 0.0, 1.0;
  (1, 1) : 0.0, 1.0;
}
probability ( varscop | selcpt ) {
  (0) : 0.97058824, 0.02941176;
  (1) : 0.3333333, 0.6666667;
}
probability ( fncpro | block, endlp ) {
  (0, 0) : 0.94444444, 0.05555556;
  (1, 0) : 0.3333333, 0.6666667;
  (0, 1) : 0.5, 0.5;
  (1, 1) : 0.0, 1.0;
}
probability ( init | countit, nestit ) {
  (0, 0) : 0.9787234, 0.0212766;
  (1, 0) : 0.5, 0.5;
  (0, 1) : 0.7857143, 0.2142857;
  (1, 1) : 0.05882353, 0.94117647;
}
probability ( itcpt | incdcr ) {
  (0) : 0.96969697, 0.03030303;
  (1) : 0.0, 1.0;
}
probability ( selcpt | incdcr ) {
  (0) : 1.0, 0.0;
  (1) : 0.1428571, 0.8571429;
}
probability ( fncpar | itcpt ) {
  (0) : 0.96875, 0.03125;
  (1) : 0.125, 0.875;
}
probability ( countit | beflp ) {
  (0) : 1.0, 0.0;
  (1) : 0.1363636, 0.8636364;
}
probability ( eventit | fncpar ) {
  (0) : 0.921875, 0.078125;
  (1) : 0.0, 1.0;
}
probability ( multi | incdcr ) {
  (0) : 0.96969697, 0.03030303;
  (1) : 0.0, 1.0;
}
probability ( nestit | fncpro, switch ) {
  (0, 0) : 0.8333333, 0.1666667;
  (1, 0) : 0.3, 0.7;
  (0, 1) : 0.5, 0.5;
  (1, 1) : 0.0625, 0.9375;
}
probability ( fncdef | fncpro, return ) {
  (0, 0) : 1.0, 0.0;
  (1, 0) : 0.6666667, 0.3333333;
  (0, 1) : 0.875, 0.125;
  (1, 1) : 0.08695652, 0.91304348;
}
probability ( callfnc | fncpar ) {
  (0) : 0.984375, 0.015625;
  (1) : 0.125, 0.875;
}
probability ( pasaddr | block, switch ) {
  (0, 0) : 0.6896552, 0.3103448;
  (1, 0) : 0.0, 1.0;
  (0, 1) : 0.5, 0.5;
  (1, 1) : 0.125, 0.875;
}
probability ( stdio | ampas, varscop ) {
  (0, 0) : 0.96774194, 0.03225806;
  (1, 0) : 0.625, 0.375;
  (0, 1) : 0.3333333, 0.6666667;
  (1, 1) : 0.2857143, 0.7142857;
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
probability ( beflp | incdcr, eventit ) {
  (0, 0) : 1.0, 0.0;
  (1, 0) : 0.0, 1.0;
  (0, 1) : 0.0, 1.0;
  (1, 1) : 0.0, 1.0;
}
probability ( ifelse | itcpt ) {
  (0) : 0.984375, 0.015625;
  (1) : 0.125, 0.875;
}
probability ( ifseri | assgn, eventit ) {
  (0, 0) : 0.98305085, 0.01694915;
  (1, 0) : 0.5, 0.5;
  (0, 1) : 0.4285714, 0.5714286;
  (1, 1) : 0.0, 1.0;
}
probability ( switch | logrel, ifelse ) {
  (0, 0) : 0.6759259, 0.3240741;
  (1, 0) : 0.02702703, 0.97297297;
  (0, 1) : 0.08333333, 0.91666667;
  (1, 1) : 0.0, 1.0;
}
probability ( scanf | exprn ) {
  (0) : 1.0, 0.0;
  (1) : 0.7333333, 0.2666667;
}
probability ( printf | exprn, stdio ) {
  (0, 0) : 0.98360656, 0.01639344;
  (1, 0) : 0.4285714, 0.5714286;
  (0, 1) : 0.6666667, 0.3333333;
  (1, 1) : 0.0, 1.0;
}
probability ( break | block, switch ) {
  (0, 0) : 1.0, 0.0;
  (1, 0) : 0.8333333, 0.1666667;
  (0, 1) : 0.5, 0.5;
  (1, 1) : 0.0, 1.0;
}
probability ( prepost | block, countit ) {
  (0, 0) : 0.92857143, 0.07142857;
  (1, 0) : 0.6, 0.4;
  (0, 1) : 1.0, 0.0;
  (1, 1) : 0.0, 1.0;
}
probability ( elseif | ifelse, ifseri ) {
  (0, 0) : 0.97413793, 0.02586207;
  (1, 0) : 0.5, 0.5;
  (0, 1) : 0.5172414, 0.4827586;
  (1, 1) : 0.1666667, 0.8333333;
}
probability ( return | block, switch ) {
  (0, 0) : 0.8448276, 0.1551724;
  (1, 0) : 0.0, 1.0;
  (0, 1) : 0.5, 0.5;
  (1, 1) : 0.0, 1.0;
}
probability ( default | break ) {
  (0) : 0.96825397, 0.03174603;
  (1) : 0.0, 1.0;
}
probability ( constr | countit, switch ) {
  (0, 0) : 0.8666667, 0.1333333;
  (1, 0) : 0.5, 0.5;
  (0, 1) : 1.0, 0.0;
  (1, 1) : 0.06666667, 0.93333333;
}
probability ( fncs | fncpar ) {
  (0) : 0.984375, 0.015625;
  (1) : 0.25, 0.75;
}
probability ( sequen | logrel, fncpar ) {
  (0, 0) : 0.98412698, 0.01587302;
  (1, 0) : 1.0, 0.0;
  (0, 1) : 0.0, 1.0;
  (1, 1) : 0.0, 1.0;
}
