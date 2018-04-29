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
probability ( dtype | assgn, lrvalue, scanf, elseif ) {
  (0, 0, 0, 0) : 1.0, 0.0;
  (1, 0, 0, 0) : 0.7, 0.3;
  (0, 1, 0, 0) : 1.0, 0.0;
  (1, 1, 0, 0) : 1.0, 0.0;
  (0, 0, 1, 0) : 1.0, 0.0;
  (1, 0, 1, 0) : 0.0, 1.0;
  (0, 1, 1, 0) : 0.5, 0.5;
  (1, 1, 1, 0) : 1.0, 0.0;
  (0, 0, 0, 1) : 1.0, 0.0;
  (1, 0, 0, 1) : 1.0, 0.0;
  (0, 1, 0, 1) : 1.0, 0.0;
  (1, 1, 0, 1) : 1.0, 0.0;
  (0, 0, 1, 1) : 1.0, 0.0;
  (1, 0, 1, 1) : 0.0, 1.0;
  (0, 1, 1, 1) : 0.5, 0.5;
  (1, 1, 1, 1) : 0.0, 1.0;
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
probability ( block | arith, multi, switch ) {
  (0, 0, 0) : 0.953125, 0.046875;
  (1, 0, 0) : 0.3333333, 0.6666667;
  (0, 1, 0) : 0.5, 0.5;
  (1, 1, 0) : 0.5, 0.5;
  (0, 0, 1) : 0.4375, 0.5625;
  (1, 0, 1) : 0.5555556, 0.4444444;
  (0, 1, 1) : 0.0, 1.0;
  (1, 1, 1) : 0.0, 1.0;
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
probability ( constr | selcpt, init ) {
  (0, 0) : 0.804878, 0.195122;
  (1, 0) : 0.52, 0.48;
  (0, 1) : 0.48, 0.52;
  (1, 1) : 0.2285714, 0.7714286;
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
probability ( arith | logrel ) {
  (0) : 0.8416667, 0.1583333;
  (1) : 0.3829787, 0.6170213;
}
probability ( assgn | logrel, switch ) {
  (0, 0) : 1.0, 0.0;
  (1, 0) : 0.0, 1.0;
  (0, 1) : 0.8913043, 0.1086957;
  (1, 1) : 0.2173913, 0.7826087;
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
probability ( logrel | switch ) {
  (0) : 0.98666667, 0.01333333;
  (1) : 0.5, 0.5;
}
probability ( exprn | arith, switch ) {
  (0, 0) : 1.0, 0.0;
  (1, 0) : 0.5555556, 0.4444444;
  (0, 1) : 0.8301887, 0.1698113;
  (1, 1) : 0.1794872, 0.8205128;
}
probability ( ampas | incdcr, endlp ) {
  (0, 0) : 0.90540541, 0.09459459;
  (1, 0) : 0.4285714, 0.5714286;
  (0, 1) : 0.59375, 0.40625;
  (1, 1) : 0.375, 0.625;
}
probability ( sequen | fncpar, elseif ) {
  (0, 0) : 0.95555556, 0.04444444;
  (1, 0) : 0.91111111, 0.08888889;
  (0, 1) : 0.91666667, 0.08333333;
  (1, 1) : 0.25, 0.75;
}
probability ( itcpt | selcpt, switch ) {
  (0, 0) : 0.98571429, 0.01428571;
  (1, 0) : 0.4, 0.6;
  (0, 1) : 0.3513514, 0.6486486;
  (1, 1) : 0.4181818, 0.5818182;
}
probability ( selcpt ) {
   0.6407186, 0.3592814;
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
probability ( pasaddr | fncpar, multi ) {
  (0, 0) : 0.6354167, 0.3645833;
  (1, 0) : 0.4615385, 0.5384615;
  (0, 1) : 0.3333333, 0.6666667;
  (1, 1) : 0.0, 1.0;
}
probability ( fncpar | exprn, switch ) {
  (0, 0) : 0.94366197, 0.05633803;
  (1, 0) : 0.0, 1.0;
  (0, 1) : 0.372549, 0.627451;
  (1, 1) : 0.3902439, 0.6097561;
}
probability ( fncpro | keyid, block ) {
  (0, 0) : 0.7731959, 0.2268041;
  (1, 0) : 1.0, 0.0;
  (0, 1) : 0.3818182, 0.6181818;
  (1, 1) : 0.0, 1.0;
}
probability ( nestit | sequen, elseif ) {
  (0, 0) : 0.6929134, 0.3070866;
  (1, 0) : 0.375, 0.625;
  (0, 1) : 0.4375, 0.5625;
  (1, 1) : 0.0, 1.0;
}
probability ( multi | sequen, printf ) {
  (0, 0) : 0.96899225, 0.03100775;
  (1, 0) : 0.6666667, 0.3333333;
  (0, 1) : 1.0, 0.0;
  (1, 1) : 0.08333333, 0.91666667;
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
probability ( countit | multi, switch, callfnc, beflp ) {
  (0, 0, 0, 0) : 0.98333333, 0.01666667;
  (1, 0, 0, 0) : 1.0, 0.0;
  (0, 1, 0, 0) : 0.3888889, 0.6111111;
  (1, 1, 0, 0) : 1.0, 0.0;
  (0, 0, 1, 0) : 0.0, 1.0;
  (1, 0, 1, 0) : 0.5, 0.5;
  (0, 1, 1, 0) : 0.5, 0.5;
  (1, 1, 1, 0) : 0.0, 1.0;
  (0, 0, 0, 1) : 0.1666667, 0.8333333;
  (1, 0, 0, 1) : 0.0, 1.0;
  (0, 1, 0, 1) : 0.3181818, 0.6818182;
  (1, 1, 0, 1) : 0.6666667, 0.3333333;
  (0, 0, 1, 1) : 1.0, 0.0;
  (1, 0, 1, 1) : 0.5, 0.5;
  (0, 1, 1, 1) : 0.6363636, 0.3636364;
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
probability ( switch | selcpt ) {
  (0) : 0.6542056, 0.3457944;
  (1) : 0.08333333, 0.91666667;
}
probability ( fncdef | keyid, fncpro, switch ) {
  (0, 0, 0) : 0.93220339, 0.06779661;
  (1, 0, 0) : 1.0, 0.0;
  (0, 1, 0) : 0.4615385, 0.5384615;
  (1, 1, 0) : 1.0, 0.0;
  (0, 0, 1) : 0.5675676, 0.4324324;
  (1, 0, 1) : 1.0, 0.0;
  (0, 1, 1) : 0.3953488, 0.6046512;
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
probability ( ifelse | assgn, itcpt, multi ) {
  (0, 0, 0) : 0.98823529, 0.01176471;
  (1, 0, 0) : 0.8947368, 0.1052632;
  (0, 1, 0) : 0.8, 0.2;
  (1, 1, 0) : 1.0, 0.0;
  (0, 0, 1) : 1.0, 0.0;
  (1, 0, 1) : 1.0, 0.0;
  (0, 1, 1) : 0.3333333, 0.6666667;
  (1, 1, 1) : 0.0, 1.0;
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
probability ( stdio | dtype, switch, endlp ) {
  (0, 0, 0) : 0.91935484, 0.08064516;
  (1, 0, 0) : 1.0, 0.0;
  (0, 1, 0) : 0.3, 0.7;
  (1, 1, 0) : 1.0, 0.0;
  (0, 0, 1) : 0.5833333, 0.4166667;
  (1, 0, 1) : 0.5, 0.5;
  (0, 1, 1) : 0.6153846, 0.3846154;
  (1, 1, 1) : 0.125, 0.875;
}
probability ( lrvalue | selcpt, switch ) {
  (0, 0) : 0.98571429, 0.01428571;
  (1, 0) : 0.4, 0.6;
  (0, 1) : 0.5675676, 0.4324324;
  (1, 1) : 0.4545455, 0.5454545;
}
probability ( scanf | exprn, ifelse ) {
  (0, 0) : 1.0, 0.0;
  (1, 0) : 0.8666667, 0.1333333;
  (0, 1) : 1.0, 0.0;
  (1, 1) : 0.4666667, 0.5333333;
}
probability ( printf | exprn, selcpt ) {
  (0, 0) : 0.93333333, 0.06666667;
  (1, 0) : 0.8823529, 0.1176471;
  (0, 1) : 1.0, 0.0;
  (1, 1) : 0.3571429, 0.6428571;
}
probability ( ifseri | assgn, scanf, elseif ) {
  (0, 0, 0) : 0.91964286, 0.08035714;
  (1, 0, 0) : 0.6315789, 0.3684211;
  (0, 1, 0) : 0.0, 1.0;
  (1, 1, 0) : 1.0, 0.0;
  (0, 0, 1) : 0.6363636, 0.3636364;
  (1, 0, 1) : 0.0, 1.0;
  (0, 1, 1) : 0.0, 1.0;
  (1, 1, 1) : 0.1428571, 0.8571429;
}
probability ( elseif | assgn, exprn ) {
  (0, 0) : 0.96261682, 0.03738318;
  (1, 0) : 0.6666667, 0.3333333;
  (0, 1) : 0.5555556, 0.4444444;
  (1, 1) : 0.4444444, 0.5555556;
}
probability ( beflp | block, fncpar, ifelse ) {
  (0, 0, 0) : 0.90666667, 0.09333333;
  (1, 0, 0) : 0.6363636, 0.3636364;
  (0, 1, 0) : 0.5217391, 0.4782609;
  (1, 1, 0) : 0.4, 0.6;
  (0, 0, 1) : 1.0, 0.0;
  (1, 0, 1) : 0.0, 1.0;
  (0, 1, 1) : 0.5, 0.5;
  (1, 1, 1) : 0.0, 1.0;
}
probability ( endlp | arith, break ) {
  (0, 0) : 0.85, 0.15;
  (1, 0) : 0.5, 0.5;
  (0, 1) : 0.3076923, 0.6923077;
  (1, 1) : 0.05, 0.95;
}
probability ( default | exprn, switch, break ) {
  (0, 0, 0) : 0.95454545, 0.04545455;
  (1, 0, 0) : 0.25, 0.75;
  (0, 1, 0) : 0.3, 0.7;
  (1, 1, 0) : 0.5, 0.5;
  (0, 0, 1) : 0.0, 1.0;
  (1, 0, 1) : 0.5, 0.5;
  (0, 1, 1) : 0.483871, 0.516129;
  (1, 1, 1) : 0.2173913, 0.7826087;
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
