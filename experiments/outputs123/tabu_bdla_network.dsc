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
probability ( keyid | assgn, fncpro ) {
  (0, 0) : 0.98148148, 0.01851852;
  (1, 0) : 0.5, 0.5;
  (0, 1) : 0.8421053, 0.1578947;
  (1, 1) : 0.0, 1.0;
}
probability ( vars | assgn, constr ) {
  (0, 0) : 0.98843931, 0.01156069;
  (1, 0) : 0.91489362, 0.08510638;
  (0, 1) : 0.9047619, 0.0952381;
  (1, 1) : 0.1929825, 0.8070175;
}
probability ( constl | assgn, selcpt ) {
  (0, 0) : 0.91515152, 0.08484848;
  (1, 0) : 0.6538462, 0.3461538;
  (0, 1) : 0.6206897, 0.3793103;
  (1, 1) : 0.2051282, 0.7948718;
}
probability ( opaspr | assgn, lrvalue ) {
  (0, 0) : 0.7470588, 0.2529412;
  (1, 0) : 0.4545455, 0.5454545;
  (0, 1) : 0.0, 1.0;
  (1, 1) : 0.1829268, 0.8170732;
}
probability ( dtype | vars, fncs ) {
  (0, 0) : 0.98636364, 0.01363636;
  (1, 0) : 0.5172414, 0.4827586;
  (0, 1) : 0.2916667, 0.7083333;
  (1, 1) : 0.12, 0.88;
}
probability ( ampas | vars, selcpt ) {
  (0, 0) : 0.827957, 0.172043;
  (1, 0) : 1.0, 0.0;
  (0, 1) : 0.6034483, 0.3965517;
  (1, 1) : 0.122449, 0.877551;
}
probability ( assgn ) {
   0.638961, 0.361039;
}
probability ( arith | exprn, fncpro ) {
  (0, 0) : 0.98148148, 0.01851852;
  (1, 0) : 0.5, 0.5;
  (0, 1) : 0.6153846, 0.3846154;
  (1, 1) : 0.2307692, 0.7692308;
}
probability ( logrel | assgn ) {
  (0) : 0.8455285, 0.1544715;
  (1) : 0.1726619, 0.8273381;
}
probability ( block | init, itcpt ) {
  (0, 0) : 0.96153846, 0.03846154;
  (1, 0) : 0.6428571, 0.3571429;
  (0, 1) : 0.5, 0.5;
  (1, 1) : 0.04166667, 0.95833333;
}
probability ( decl | vars, arith, endlp ) {
  (0, 0, 0) : 0.97837838, 0.02162162;
  (1, 0, 0) : 0.3888889, 0.6111111;
  (0, 1, 0) : 1.0, 0.0;
  (1, 1, 0) : 0.5, 0.5;
  (0, 0, 1) : 0.90322581, 0.09677419;
  (1, 0, 1) : 0.5384615, 0.4615385;
  (0, 1, 1) : 0.2592593, 0.7407407;
  (1, 1, 1) : 0.0, 1.0;
}
probability ( exprn | assgn, init ) {
  (0, 0) : 0.93125, 0.06875;
  (1, 0) : 0.7083333, 0.2916667;
  (0, 1) : 0.4411765, 0.5588235;
  (1, 1) : 0.0125, 0.9875;
}
probability ( lrvalue | assgn, beflp ) {
  (0, 0) : 0.91772152, 0.08227848;
  (1, 0) : 0.2962963, 0.7037037;
  (0, 1) : 0.6944444, 0.3055556;
  (1, 1) : 0.1818182, 0.8181818;
}
probability ( incdcr | exprn, beflp ) {
  (0, 0) : 1.0, 0.0;
  (1, 0) : 1.0, 0.0;
  (0, 1) : 0.94444444, 0.05555556;
  (1, 1) : 0.2, 0.8;
}
probability ( varscop | stdio, break ) {
  (0, 0) : 0.98245614, 0.01754386;
  (1, 0) : 0.8333333, 0.1666667;
  (0, 1) : 0.8181818, 0.1818182;
  (1, 1) : 0.0, 1.0;
}
probability ( fncpro | lrvalue, return ) {
  (0, 0) : 0.93877551, 0.06122449;
  (1, 0) : 0.5, 0.5;
  (0, 1) : 0.3333333, 0.6666667;
  (1, 1) : 0.0, 1.0;
}
probability ( init | logrel ) {
  (0) : 0.9010989, 0.0989011;
  (1) : 0.1724138, 0.8275862;
}
probability ( itcpt | incdcr, beflp ) {
  (0, 0) : 1.0, 0.0;
  (1, 0) : 0.5, 0.5;
  (0, 1) : 0.8055556, 0.1944444;
  (1, 1) : 0.1298701, 0.8701299;
}
probability ( selcpt | exprn, init ) {
  (0, 0) : 0.95783133, 0.04216867;
  (1, 0) : 0.3888889, 0.6111111;
  (0, 1) : 0.75, 0.25;
  (1, 1) : 0.1326531, 0.8673469;
}
probability ( fncpar | constl, itcpt ) {
  (0, 0) : 0.994505495, 0.005494505;
  (1, 0) : 0.6428571, 0.3571429;
  (0, 1) : 0.2, 0.8;
  (1, 1) : 0.1296296, 0.8703704;
}
probability ( countit | itcpt, beflp ) {
  (0, 0) : 1.0, 0.0;
  (1, 0) : 0.5, 0.5;
  (0, 1) : 0.7948718, 0.2051282;
  (1, 1) : 0.09459459, 0.90540541;
}
probability ( eventit | itcpt, multi, beflp ) {
  (0, 0, 0) : 0.97619048, 0.02380952;
  (1, 0, 0) : 0.5, 0.5;
  (0, 1, 0) : 0.8823529, 0.1176471;
  (1, 1, 0) : 0.5, 0.5;
  (0, 0, 1) : 0.4347826, 0.5652174;
  (1, 0, 1) : 0.4615385, 0.5384615;
  (0, 1, 1) : 0.75, 0.25;
  (1, 1, 1) : 0.01639344, 0.98360656;
}
probability ( multi | lrvalue, incdcr, stdio ) {
  (0, 0, 0) : 0.93670886, 0.06329114;
  (1, 0, 0) : 0.7555556, 0.2444444;
  (0, 1, 0) : 0.3529412, 0.6470588;
  (1, 1, 0) : 0.1724138, 0.8275862;
  (0, 0, 1) : 0.75, 0.25;
  (1, 0, 1) : 0.0, 1.0;
  (0, 1, 1) : 0.4, 0.6;
  (1, 1, 1) : 0.0, 1.0;
}
probability ( nestit | logrel, sequen ) {
  (0, 0) : 0.6725146, 0.3274854;
  (1, 0) : 0.2413793, 0.7586207;
  (0, 1) : 0.1818182, 0.8181818;
  (1, 1) : 0.0, 1.0;
}
probability ( fncdef | fncpar, beflp ) {
  (0, 0) : 0.8595506, 0.1404494;
  (1, 0) : 0.2857143, 0.7142857;
  (0, 1) : 0.4146341, 0.5853659;
  (1, 1) : 0.04166667, 0.95833333;
}
probability ( callfnc | selcpt, fncpar ) {
  (0, 0) : 0.98895028, 0.01104972;
  (1, 0) : 0.8947368, 0.1052632;
  (0, 1) : 0.7, 0.3;
  (1, 1) : 0.2028986, 0.7971014;
}
probability ( pasaddr | ampas, callfnc, switch ) {
  (0, 0, 0) : 0.6491228, 0.3508772;
  (1, 0, 0) : 0.6, 0.4;
  (0, 1, 0) : 0.0, 1.0;
  (1, 1, 0) : 0.5, 0.5;
  (0, 0, 1) : 0.0, 1.0;
  (1, 0, 1) : 1.0, 0.0;
  (0, 1, 1) : 0.0, 1.0;
  (1, 1, 1) : 0.0, 1.0;
}
probability ( stdio | vars, fncdef ) {
  (0, 0) : 0.95294118, 0.04705882;
  (1, 0) : 1.0, 0.0;
  (0, 1) : 0.8783784, 0.1216216;
  (1, 1) : 0.3469388, 0.6530612;
}
probability ( exitlp | break, fncs ) {
  (0, 0) : 0.9516129, 0.0483871;
  (1, 0) : 1.0, 0.0;
  (0, 1) : 1.0, 0.0;
  (1, 1) : 0.25, 0.75;
}
probability ( endlp | arith, eventit, printf ) {
  (0, 0, 0) : 0.99382716, 0.00617284;
  (1, 0, 0) : 0.1, 0.9;
  (0, 1, 0) : 0.7058824, 0.2941176;
  (1, 1, 0) : 0.0, 1.0;
  (0, 0, 1) : 0.6571429, 0.3428571;
  (1, 0, 1) : 0.0, 1.0;
  (0, 1, 1) : 0.2121212, 0.7878788;
  (1, 1, 1) : 0.0, 1.0;
}
probability ( beflp | logrel, init ) {
  (0, 0) : 0.9695122, 0.0304878;
  (1, 0) : 0.6, 0.4;
  (0, 1) : 0.3333333, 0.6666667;
  (1, 1) : 0.08333333, 0.91666667;
}
probability ( ifelse | arith, endlp, switch ) {
  (0, 0, 0) : 1.0, 0.0;
  (1, 0, 0) : 1.0, 0.0;
  (0, 1, 0) : 1.0, 0.0;
  (1, 1, 0) : 0.75, 0.25;
  (0, 0, 1) : 0.5, 0.5;
  (1, 0, 1) : 0.5, 0.5;
  (0, 1, 1) : 0.0, 1.0;
  (1, 1, 1) : 0.1818182, 0.8181818;
}
probability ( ifseri | ifelse, switch ) {
  (0, 0) : 0.95945946, 0.04054054;
  (1, 0) : 0.0, 1.0;
  (0, 1) : 0.6338028, 0.3661972;
  (1, 1) : 0.4761905, 0.5238095;
}
probability ( switch | opaspr, logrel ) {
  (0, 0) : 0.91428571, 0.08571429;
  (1, 0) : 0.5, 0.5;
  (0, 1) : 0.0, 1.0;
  (1, 1) : 0.0, 1.0;
}
probability ( scanf | exprn, stdio ) {
  (0, 0) : 0.994152047, 0.005847953;
  (1, 0) : 0.93589744, 0.06410256;
  (0, 1) : 0.6363636, 0.3636364;
  (1, 1) : 0.1578947, 0.8421053;
}
probability ( printf | selcpt, sequen ) {
  (0, 0) : 0.8791209, 0.1208791;
  (1, 0) : 0.5957447, 0.4042553;
  (0, 1) : 0.7777778, 0.2222222;
  (1, 1) : 0.1333333, 0.8666667;
}
probability ( break | fncpro, switch ) {
  (0, 0) : 0.98148148, 0.01851852;
  (1, 0) : 1.0, 0.0;
  (0, 1) : 0.5, 0.5;
  (1, 1) : 0.0, 1.0;
}
probability ( prepost | fncpro, switch ) {
  (0, 0) : 0.94444444, 0.05555556;
  (1, 0) : 0.5, 0.5;
  (0, 1) : 0.5, 0.5;
  (1, 1) : 0.0625, 0.9375;
}
probability ( elseif | assgn, selcpt, break ) {
  (0, 0, 0) : 0.96774194, 0.03225806;
  (1, 0, 0) : 0.5, 0.5;
  (0, 1, 0) : 1.0, 0.0;
  (1, 1, 0) : 0.5, 0.5;
  (0, 0, 1) : 0.6666667, 0.3333333;
  (1, 0, 1) : 0.5, 0.5;
  (0, 1, 1) : 0.0, 1.0;
  (1, 1, 1) : 0.0, 1.0;
}
probability ( return | block, fncdef ) {
  (0, 0) : 0.925, 0.075;
  (1, 0) : 0.6, 0.4;
  (0, 1) : 0.5434783, 0.4565217;
  (1, 1) : 0.1038961, 0.8961039;
}
probability ( default | break ) {
  (0) : 0.96825397, 0.03174603;
  (1) : 0.0, 1.0;
}
probability ( constr | fncpar, switch ) {
  (0, 0) : 0.8412698, 0.1587302;
  (1, 0) : 1.0, 0.0;
  (0, 1) : 1.0, 0.0;
  (1, 1) : 0.06666667, 0.93333333;
}
probability ( fncs | fncpar, return ) {
  (0, 0) : 0.994475138, 0.005524862;
  (1, 0) : 1.0, 0.0;
  (0, 1) : 0.8157895, 0.1842105;
  (1, 1) : 0.4142857, 0.5857143;
}
probability ( sequen | incdcr, eventit ) {
  (0, 0) : 0.994974874, 0.005025126;
  (1, 0) : 0.5555556, 0.4444444;
  (0, 1) : 0.5909091, 0.4090909;
  (1, 1) : 0.1911765, 0.8088235;
}
