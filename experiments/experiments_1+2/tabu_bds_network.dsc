belief network "unknown"
node keyid {
  type : discrete [ 2 ] = { "Known", "NotKnown" };
}
node dtype {
  type : discrete [ 2 ] = { "Known", "NotKnown" };
}
node vars {
  type : discrete [ 2 ] = { "Known", "NotKnown" };
}
node block {
  type : discrete [ 2 ] = { "Known", "NotKnown" };
}
node decl {
  type : discrete [ 2 ] = { "Known", "NotKnown" };
}
node varscop {
  type : discrete [ 2 ] = { "Known", "NotKnown" };
}
node constr {
  type : discrete [ 2 ] = { "Known", "NotKnown" };
}
node opaspr {
  type : discrete [ 2 ] = { "Known", "NotKnown" };
}
node arith {
  type : discrete [ 2 ] = { "Known", "NotKnown" };
}
node assgn {
  type : discrete [ 2 ] = { "Known", "NotKnown" };
}
node constl {
  type : discrete [ 2 ] = { "Known", "NotKnown" };
}
node logrel {
  type : discrete [ 2 ] = { "Known", "NotKnown" };
}
node exprn {
  type : discrete [ 2 ] = { "Known", "NotKnown" };
}
node ampas {
  type : discrete [ 2 ] = { "Known", "NotKnown" };
}
node sequen {
  type : discrete [ 2 ] = { "Known", "NotKnown" };
}
node itcpt {
  type : discrete [ 2 ] = { "Known", "NotKnown" };
}
node selcpt {
  type : discrete [ 2 ] = { "Known", "NotKnown" };
}
node fncs {
  type : discrete [ 2 ] = { "Known", "NotKnown" };
}
node pasaddr {
  type : discrete [ 2 ] = { "Known", "NotKnown" };
}
node fncpar {
  type : discrete [ 2 ] = { "Known", "NotKnown" };
}
node fncpro {
  type : discrete [ 2 ] = { "Known", "NotKnown" };
}
node nestit {
  type : discrete [ 2 ] = { "Known", "NotKnown" };
}
node multi {
  type : discrete [ 2 ] = { "Known", "NotKnown" };
}
node init {
  type : discrete [ 2 ] = { "Known", "NotKnown" };
}
node incdcr {
  type : discrete [ 2 ] = { "Known", "NotKnown" };
}
node countit {
  type : discrete [ 2 ] = { "Known", "NotKnown" };
}
node eventit {
  type : discrete [ 2 ] = { "Known", "NotKnown" };
}
node switch {
  type : discrete [ 2 ] = { "Known", "NotKnown" };
}
node fncdef {
  type : discrete [ 2 ] = { "Known", "NotKnown" };
}
node exitlp {
  type : discrete [ 2 ] = { "Known", "NotKnown" };
}
node return {
  type : discrete [ 2 ] = { "Known", "NotKnown" };
}
node break {
  type : discrete [ 2 ] = { "Known", "NotKnown" };
}
node conti {
  type : discrete [ 2 ] = { "Known", "NotKnown" };
}
node ifelse {
  type : discrete [ 2 ] = { "Known", "NotKnown" };
}
node callfnc {
  type : discrete [ 2 ] = { "Known", "NotKnown" };
}
node stdio {
  type : discrete [ 2 ] = { "Known", "NotKnown" };
}
node lrvalue {
  type : discrete [ 2 ] = { "Known", "NotKnown" };
}
node scanf {
  type : discrete [ 2 ] = { "Known", "NotKnown" };
}
node printf {
  type : discrete [ 2 ] = { "Known", "NotKnown" };
}
node ifseri {
  type : discrete [ 2 ] = { "Known", "NotKnown" };
}
node elseif {
  type : discrete [ 2 ] = { "Known", "NotKnown" };
}
node beflp {
  type : discrete [ 2 ] = { "Known", "NotKnown" };
}
node endlp {
  type : discrete [ 2 ] = { "Known", "NotKnown" };
}
node default {
  type : discrete [ 2 ] = { "Known", "NotKnown" };
}
node prepost {
  type : discrete [ 2 ] = { "Known", "NotKnown" };
}
probability ( keyid | dtype, sequen, beflp ) {
  (0, 0, 0) : 0.99009901, 0.00990099;
  (1, 0, 0) : 0.0, 1.0;
  (0, 1, 0) : 1.0, 0.0;
  (1, 1, 0) : 0.5, 0.5;
  (0, 0, 1) : 0.91891892, 0.08108108;
  (1, 0, 1) : 1.0, 0.0;
  (0, 1, 1) : 0.7142857, 0.2857143;
  (1, 1, 1) : 0.0, 1.0;
}
probability ( dtype | assgn, ifelse ) {
  (0, 0) : 1.0, 0.0;
  (1, 0) : 0.8484848, 0.1515152;
  (0, 1) : 1.0, 0.0;
  (1, 1) : 0.3333333, 0.6666667;
}
probability ( vars | keyid, lrvalue, scanf ) {
  (0, 0, 0) : 0.98130841, 0.01869159;
  (1, 0, 0) : 0.6666667, 0.3333333;
  (0, 1, 0) : 1.0, 0.0;
  (1, 1, 0) : 0.0, 1.0;
  (0, 0, 1) : 1.0, 0.0;
  (1, 0, 1) : 0.0, 1.0;
  (0, 1, 1) : 0.0, 1.0;
  (1, 1, 1) : 0.3333333, 0.6666667;
}
probability ( block | multi, switch ) {
  (0, 0) : 0.8767123, 0.1232877;
  (1, 0) : 0.5, 0.5;
  (0, 1) : 0.48, 0.52;
  (1, 1) : 0.0, 1.0;
}
probability ( decl | vars, eventit, switch ) {
  (0, 0, 0) : 0.98305085, 0.01694915;
  (1, 0, 0) : 0.0, 1.0;
  (0, 1, 0) : 0.5384615, 0.4615385;
  (1, 1, 0) : 0.0, 1.0;
  (0, 0, 1) : 0.4166667, 0.5833333;
  (1, 0, 1) : 0.5, 0.5;
  (0, 1, 1) : 0.6086957, 0.3913043;
  (1, 1, 1) : 0.0, 1.0;
}
probability ( varscop | switch, printf ) {
  (0, 0) : 0.90277778, 0.09722222;
  (1, 0) : 0.7101449, 0.2898551;
  (0, 1) : 1.0, 0.0;
  (1, 1) : 0.2608696, 0.7391304;
}
probability ( constr | init ) {
  (0) : 0.7383178, 0.2616822;
  (1) : 0.3333333, 0.6666667;
}
probability ( opaspr | dtype, fncpar, break ) {
  (0, 0, 0) : 0.94936709, 0.05063291;
  (1, 0, 0) : 0.5, 0.5;
  (0, 1, 0) : 0.4615385, 0.5384615;
  (1, 1, 0) : 0.0, 1.0;
  (0, 0, 1) : 0.55, 0.45;
  (1, 0, 1) : 1.0, 0.0;
  (0, 1, 1) : 0.6774194, 0.3225806;
  (1, 1, 1) : 0.0, 1.0;
}
probability ( arith | dtype, assgn, fncpro ) {
  (0, 0, 0) : 0.94936709, 0.05063291;
  (1, 0, 0) : 0.5, 0.5;
  (0, 1, 0) : 0.5333333, 0.4666667;
  (1, 1, 0) : 0.0, 1.0;
  (0, 0, 1) : 0.6304348, 0.3695652;
  (1, 0, 1) : 0.5, 0.5;
  (0, 1, 1) : 0.4375, 0.5625;
  (1, 1, 1) : 0.0, 1.0;
}
probability ( assgn ) {
   0.748503, 0.251497;
}
probability ( constl | vars, return, break ) {
  (0, 0, 0) : 0.97142857, 0.02857143;
  (1, 0, 0) : 1.0, 0.0;
  (0, 1, 0) : 1.0, 0.0;
  (1, 1, 0) : 0.0, 1.0;
  (0, 0, 1) : 1.0, 0.0;
  (1, 0, 1) : 1.0, 0.0;
  (0, 1, 1) : 0.8571429, 0.1428571;
  (1, 1, 1) : 0.5, 0.5;
}
probability ( logrel | block, assgn ) {
  (0, 0) : 1.0, 0.0;
  (1, 0) : 0.7674419, 0.2325581;
  (0, 1) : 0.1052632, 0.8947368;
  (1, 1) : 0.1304348, 0.8695652;
}
probability ( exprn | arith, switch, ifelse ) {
  (0, 0, 0) : 1.0, 0.0;
  (1, 0, 0) : 0.5, 0.5;
  (0, 1, 0) : 0.9047619, 0.0952381;
  (1, 1, 0) : 0.2413793, 0.7586207;
  (0, 0, 1) : 0.5, 0.5;
  (1, 0, 1) : 1.0, 0.0;
  (0, 1, 1) : 0.5454545, 0.4545455;
  (1, 1, 1) : 0.0, 1.0;
}
probability ( ampas | incdcr, endlp ) {
  (0, 0) : 0.90540541, 0.09459459;
  (1, 0) : 0.4285714, 0.5714286;
  (0, 1) : 0.59375, 0.40625;
  (1, 1) : 0.375, 0.625;
}
probability ( sequen | nestit, elseif ) {
  (0, 0) : 0.96703297, 0.03296703;
  (1, 0) : 0.8863636, 0.1136364;
  (0, 1) : 1.0, 0.0;
  (1, 1) : 0.36, 0.64;
}
probability ( itcpt | assgn, multi, ifelse ) {
  (0, 0, 0) : 0.7777778, 0.2222222;
  (1, 0, 0) : 0.5483871, 0.4516129;
  (0, 1, 0) : 0.25, 0.75;
  (1, 1, 0) : 1.0, 0.0;
  (0, 0, 1) : 0.1428571, 0.8571429;
  (1, 0, 1) : 1.0, 0.0;
  (0, 1, 1) : 0.0, 1.0;
  (1, 1, 1) : 0.0, 1.0;
}
probability ( selcpt | constr, switch ) {
  (0, 0) : 1.0, 0.0;
  (1, 0) : 0.7222222, 0.2777778;
  (0, 1) : 0.5, 0.5;
  (1, 1) : 0.32, 0.68;
}
probability ( fncs | fncpar, switch, ifelse ) {
  (0, 0, 0) : 0.98507463, 0.01492537;
  (1, 0, 0) : 0.4285714, 0.5714286;
  (0, 1, 0) : 0.3666667, 0.6333333;
  (1, 1, 0) : 0.804878, 0.195122;
  (0, 0, 1) : 0.5, 0.5;
  (1, 0, 1) : 1.0, 0.0;
  (0, 1, 1) : 0.4, 0.6;
  (1, 1, 1) : 0.1875, 0.8125;
}
probability ( pasaddr | multi ) {
  (0) : 0.5743243, 0.4256757;
  (1) : 0.1052632, 0.8947368;
}
probability ( fncpar | exprn, switch, beflp ) {
  (0, 0, 0) : 1.0, 0.0;
  (1, 0, 0) : 0.0, 1.0;
  (0, 1, 0) : 0.4642857, 0.5357143;
  (1, 1, 0) : 0.625, 0.375;
  (0, 0, 1) : 0.6363636, 0.3636364;
  (1, 0, 1) : 0.0, 1.0;
  (0, 1, 1) : 0.2608696, 0.7391304;
  (1, 1, 1) : 0.24, 0.76;
}
probability ( fncpro | keyid, block ) {
  (0, 0) : 0.7731959, 0.2268041;
  (1, 0) : 1.0, 0.0;
  (0, 1) : 0.3818182, 0.6181818;
  (1, 1) : 0.0, 1.0;
}
probability ( nestit | elseif ) {
  (0) : 0.6740741, 0.3259259;
  (1) : 0.21875, 0.78125;
}
probability ( multi | sequen ) {
  (0) : 0.97202797, 0.02797203;
  (1) : 0.375, 0.625;
}
probability ( init | fncpro, incdcr ) {
  (0, 0) : 0.90789474, 0.09210526;
  (1, 0) : 0.4666667, 0.5333333;
  (0, 1) : 0.5, 0.5;
  (1, 1) : 0.3243243, 0.6756757;
}
probability ( incdcr | opaspr, itcpt, switch ) {
  (0, 0, 0) : 0.96923077, 0.03076923;
  (1, 0, 0) : 0.5, 0.5;
  (0, 1, 0) : 0.0, 1.0;
  (1, 1, 0) : 1.0, 0.0;
  (0, 0, 1) : 0.4347826, 0.5652174;
  (1, 0, 1) : 0.8461538, 0.1538462;
  (0, 1, 1) : 0.483871, 0.516129;
  (1, 1, 1) : 0.08, 0.92;
}
probability ( countit | keyid, incdcr, switch, beflp ) {
  (0, 0, 0, 0) : 1.0, 0.0;
  (1, 0, 0, 0) : 0.5, 0.5;
  (0, 1, 0, 0) : 0.3333333, 0.6666667;
  (1, 1, 0, 0) : 0.5, 0.5;
  (0, 0, 1, 0) : 0.5789474, 0.4210526;
  (1, 0, 1, 0) : 1.0, 0.0;
  (0, 1, 1, 0) : 0.3043478, 0.6956522;
  (1, 1, 1, 0) : 0.5, 0.5;
  (0, 0, 0, 1) : 0.4285714, 0.5714286;
  (1, 0, 0, 1) : 0.5, 0.5;
  (0, 1, 0, 1) : 1.0, 0.0;
  (1, 1, 0, 1) : 0.0, 1.0;
  (0, 0, 1, 1) : 0.3529412, 0.6470588;
  (1, 0, 1, 1) : 0.5, 0.5;
  (0, 1, 1, 1) : 0.4761905, 0.5238095;
  (1, 1, 1, 1) : 0.0, 1.0;
}
probability ( eventit | sequen, countit, switch, beflp ) {
  (0, 0, 0, 0) : 0.98333333, 0.01666667;
  (1, 0, 0, 0) : 0.5, 0.5;
  (0, 1, 0, 0) : 0.0, 1.0;
  (1, 1, 0, 0) : 0.5, 0.5;
  (0, 0, 1, 0) : 0.2631579, 0.7368421;
  (1, 0, 1, 0) : 1.0, 0.0;
  (0, 1, 1, 0) : 0.6666667, 0.3333333;
  (1, 1, 1, 0) : 0.0, 1.0;
  (0, 0, 0, 1) : 0.0, 1.0;
  (1, 0, 0, 1) : 0.0, 1.0;
  (0, 1, 0, 1) : 0.4, 0.6;
  (1, 1, 0, 1) : 0.0, 1.0;
  (0, 0, 1, 1) : 0.5, 0.5;
  (1, 0, 1, 1) : 1.0, 0.0;
  (0, 1, 1, 1) : 0.4375, 0.5625;
  (1, 1, 1, 1) : 0.0, 1.0;
}
probability ( switch | assgn, itcpt ) {
  (0, 0) : 0.8139535, 0.1860465;
  (1, 0) : 0.04761905, 0.95238095;
  (0, 1) : 0.1025641, 0.8974359;
  (1, 1) : 0.0, 1.0;
}
probability ( fncdef | fncpro, switch, scanf ) {
  (0, 0, 0) : 0.93333333, 0.06666667;
  (1, 0, 0) : 0.5333333, 0.4666667;
  (0, 1, 0) : 0.5555556, 0.4444444;
  (1, 1, 0) : 0.3863636, 0.6136364;
  (0, 0, 1) : 0.5, 0.5;
  (1, 0, 1) : 0.5, 0.5;
  (0, 1, 1) : 1.0, 0.0;
  (1, 1, 1) : 0.0, 1.0;
}
probability ( exitlp | countit, eventit ) {
  (0, 0) : 0.94594595, 0.05405405;
  (1, 0) : 0.4782609, 0.5217391;
  (0, 1) : 0.5862069, 0.4137931;
  (1, 1) : 0.4634146, 0.5365854;
}
probability ( return | fncpro, lrvalue ) {
  (0, 0) : 0.8, 0.2;
  (1, 0) : 0.2702703, 0.7297297;
  (0, 1) : 0.35, 0.65;
  (1, 1) : 0.3333333, 0.6666667;
}
probability ( break | multi, switch ) {
  (0, 0) : 0.93150685, 0.06849315;
  (1, 0) : 1.0, 0.0;
  (0, 1) : 0.5066667, 0.4933333;
  (1, 1) : 0.0, 1.0;
}
probability ( conti | sequen ) {
  (0) : 0.3986014, 0.6013986;
  (1) : 0.75, 0.25;
}
probability ( ifelse | multi ) {
  (0) : 0.93918919, 0.06081081;
  (1) : 0.3157895, 0.6842105;
}
probability ( callfnc | keyid, fncpro, endlp ) {
  (0, 0, 0) : 1.0, 0.0;
  (1, 0, 0) : 1.0, 0.0;
  (0, 1, 0) : 0.4583333, 0.5416667;
  (1, 1, 0) : 1.0, 0.0;
  (0, 0, 1) : 0.3928571, 0.6071429;
  (1, 0, 1) : 0.6666667, 0.3333333;
  (0, 1, 1) : 0.53125, 0.46875;
  (1, 1, 1) : 0.0, 1.0;
}
probability ( stdio | switch ) {
  (0) : 0.8666667, 0.1333333;
  (1) : 0.4782609, 0.5217391;
}
probability ( lrvalue | selcpt, switch ) {
  (0, 0) : 0.98571429, 0.01428571;
  (1, 0) : 0.4, 0.6;
  (0, 1) : 0.5675676, 0.4324324;
  (1, 1) : 0.4545455, 0.5454545;
}
probability ( scanf | dtype, exprn, return ) {
  (0, 0, 0) : 1.0, 0.0;
  (1, 0, 0) : 1.0, 0.0;
  (0, 1, 0) : 1.0, 0.0;
  (1, 1, 0) : 0.5, 0.5;
  (0, 0, 1) : 1.0, 0.0;
  (1, 0, 1) : 0.5, 0.5;
  (0, 1, 1) : 0.826087, 0.173913;
  (1, 1, 1) : 0.0, 1.0;
}
probability ( printf | exprn, selcpt, pasaddr ) {
  (0, 0, 0) : 1.0, 0.0;
  (1, 0, 0) : 0.7777778, 0.2222222;
  (0, 1, 0) : 1.0, 0.0;
  (1, 1, 0) : 0.4444444, 0.5555556;
  (0, 0, 1) : 0.8333333, 0.1666667;
  (1, 0, 1) : 1.0, 0.0;
  (0, 1, 1) : 1.0, 0.0;
  (1, 1, 1) : 0.3157895, 0.6842105;
}
probability ( ifseri | assgn ) {
  (0) : 0.88, 0.12;
  (1) : 0.3809524, 0.6190476;
}
probability ( elseif | ifseri ) {
  (0) : 0.93650794, 0.06349206;
  (1) : 0.4146341, 0.5853659;
}
probability ( beflp | block, ifelse ) {
  (0, 0) : 0.8163265, 0.1836735;
  (1, 0) : 0.5106383, 0.4893617;
  (0, 1) : 0.6666667, 0.3333333;
  (1, 1) : 0.0, 1.0;
}
probability ( endlp | arith, break ) {
  (0, 0) : 0.85, 0.15;
  (1, 0) : 0.5, 0.5;
  (0, 1) : 0.3076923, 0.6923077;
  (1, 1) : 0.05, 0.95;
}
probability ( default | switch, break ) {
  (0, 0) : 0.91428571, 0.08571429;
  (1, 0) : 0.3947368, 0.6052632;
  (0, 1) : 0.0, 1.0;
  (1, 1) : 0.3703704, 0.6296296;
}
probability ( prepost | keyid, switch, fncdef ) {
  (0, 0, 0) : 0.91803279, 0.08196721;
  (1, 0, 0) : 0.6666667, 0.3333333;
  (0, 1, 0) : 0.4210526, 0.5789474;
  (1, 1, 0) : 1.0, 0.0;
  (0, 0, 1) : 0.3636364, 0.6363636;
  (1, 0, 1) : 0.5, 0.5;
  (0, 1, 1) : 0.4047619, 0.5952381;
  (1, 1, 1) : 0.0, 1.0;
}
