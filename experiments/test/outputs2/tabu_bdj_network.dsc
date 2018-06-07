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
probability ( keyid ) {
   0.525, 0.475;
}
probability ( vars ) {
   0.4375, 0.5625;
}
probability ( constl | countit ) {
  (0) : 0.5238095, 0.4761905;
  (1) : 0.2631579, 0.7368421;
}
probability ( opaspr | switch, printf ) {
  (0, 0) : 0.1111111, 0.8888889;
  (1, 0) : 0.6, 0.4;
  (0, 1) : 0.6875, 0.3125;
  (1, 1) : 0.625, 0.375;
}
probability ( dtype | fncpar, nestit ) {
  (0, 0) : 0.4615385, 0.5384615;
  (1, 0) : 0.4375, 0.5625;
  (0, 1) : 0.3913043, 0.6086957;
  (1, 1) : 0.93333333, 0.06666667;
}
probability ( ampas | pasaddr, return ) {
  (0, 0) : 0.5, 0.5;
  (1, 0) : 0.55, 0.45;
  (0, 1) : 0.75, 0.25;
  (1, 1) : 0.1666667, 0.8333333;
}
probability ( assgn ) {
   0.5, 0.5;
}
probability ( arith | constl ) {
  (0) : 0.65625, 0.34375;
  (1) : 0.3958333, 0.6041667;
}
probability ( logrel | eventit ) {
  (0) : 0.6511628, 0.3488372;
  (1) : 0.3783784, 0.6216216;
}
probability ( block | fncdef, ifelse ) {
  (0, 0) : 0.4545455, 0.5454545;
  (1, 0) : 0.3888889, 0.6111111;
  (0, 1) : 0.8947368, 0.1052632;
  (1, 1) : 0.4285714, 0.5714286;
}
probability ( decl | beflp ) {
  (0) : 0.3111111, 0.6888889;
  (1) : 0.6285714, 0.3714286;
}
probability ( exprn | logrel, selcpt ) {
  (0, 0) : 0.28, 0.72;
  (1, 0) : 0.7894737, 0.2105263;
  (0, 1) : 0.3529412, 0.6470588;
  (1, 1) : 0.3157895, 0.6842105;
}
probability ( lrvalue | pasaddr ) {
  (0) : 0.6666667, 0.3333333;
  (1) : 0.3636364, 0.6363636;
}
probability ( incdcr | fncdef ) {
  (0) : 0.2926829, 0.7073171;
  (1) : 0.5641026, 0.4358974;
}
probability ( varscop | exprn, constr ) {
  (0, 0) : 0.4444444, 0.5555556;
  (1, 0) : 0.4090909, 0.5909091;
  (0, 1) : 0.125, 0.875;
  (1, 1) : 0.75, 0.25;
}
probability ( fncpro ) {
   0.5, 0.5;
}
probability ( init ) {
   0.4875, 0.5125;
}
probability ( itcpt | dtype, callfnc, prepost ) {
  (0, 0, 0) : 0.6666667, 0.3333333;
  (1, 0, 0) : 0.0, 1.0;
  (0, 1, 0) : 0.1666667, 0.8333333;
  (1, 1, 0) : 0.625, 0.375;
  (0, 0, 1) : 0.1666667, 0.8333333;
  (1, 0, 1) : 0.6923077, 0.3076923;
  (0, 1, 1) : 0.7777778, 0.2222222;
  (1, 1, 1) : 0.91666667, 0.08333333;
}
probability ( selcpt ) {
   0.55, 0.45;
}
probability ( fncpar ) {
   0.6125, 0.3875;
}
probability ( countit ) {
   0.525, 0.475;
}
probability ( eventit ) {
   0.5375, 0.4625;
}
probability ( multi ) {
   0.4875, 0.5125;
}
probability ( nestit | pasaddr, stdio ) {
  (0, 0) : 0.3333333, 0.6666667;
  (1, 0) : 0.4285714, 0.5714286;
  (0, 1) : 0.94444444, 0.05555556;
  (1, 1) : 0.4347826, 0.5652174;
}
probability ( fncdef | decl, itcpt ) {
  (0, 0) : 0.5, 0.5;
  (1, 0) : 0.2916667, 0.7083333;
  (0, 1) : 0.4444444, 0.5555556;
  (1, 1) : 0.85, 0.15;
}
probability ( callfnc ) {
   0.4875, 0.5125;
}
probability ( pasaddr | default ) {
  (0) : 0.575, 0.425;
  (1) : 0.325, 0.675;
}
probability ( stdio | constl ) {
  (0) : 0.6875, 0.3125;
  (1) : 0.3541667, 0.6458333;
}
probability ( exitlp ) {
   0.4625, 0.5375;
}
probability ( endlp | dtype ) {
  (0) : 0.6428571, 0.3571429;
  (1) : 0.3421053, 0.6578947;
}
probability ( beflp ) {
   0.5625, 0.4375;
}
probability ( ifelse | logrel, prepost ) {
  (0, 0) : 0.1578947, 0.8421053;
  (1, 0) : 0.8, 0.2;
  (0, 1) : 0.5652174, 0.4347826;
  (1, 1) : 0.5217391, 0.4782609;
}
probability ( ifseri | assgn, beflp ) {
  (0, 0) : 0.2608696, 0.7391304;
  (1, 0) : 0.5909091, 0.4090909;
  (0, 1) : 0.8823529, 0.1176471;
  (1, 1) : 0.4444444, 0.5555556;
}
probability ( switch | constl ) {
  (0) : 0.28125, 0.71875;
  (1) : 0.5208333, 0.4791667;
}
probability ( scanf ) {
   0.4625, 0.5375;
}
probability ( printf | vars, arith ) {
  (0, 0) : 0.2666667, 0.7333333;
  (1, 0) : 0.6, 0.4;
  (0, 1) : 0.9, 0.1;
  (1, 1) : 0.55, 0.45;
}
probability ( break | beflp ) {
  (0) : 0.3777778, 0.6222222;
  (1) : 0.6285714, 0.3714286;
}
probability ( prepost | keyid, fncs ) {
  (0, 0) : 0.12, 0.88;
  (1, 0) : 0.6363636, 0.3636364;
  (0, 1) : 0.5294118, 0.4705882;
  (1, 1) : 0.5, 0.5;
}
probability ( elseif ) {
   0.4625, 0.5375;
}
probability ( return | ifseri ) {
  (0) : 0.3809524, 0.6190476;
  (1) : 0.6315789, 0.3684211;
}
probability ( default | callfnc ) {
  (0) : 0.3589744, 0.6410256;
  (1) : 0.6341463, 0.3658537;
}
probability ( constr | nestit ) {
  (0) : 0.6666667, 0.3333333;
  (1) : 0.3157895, 0.6842105;
}
probability ( fncs | selcpt ) {
  (0) : 0.7272727, 0.2727273;
  (1) : 0.4166667, 0.5833333;
}
probability ( sequen ) {
   0.5125, 0.4875;
}
