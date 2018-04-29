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
probability ( keyid | dtype, sequen ) {
  (0, 0) : 0.97101449, 0.02898551;
  (1, 0) : 0.8, 0.2;
  (0, 1) : 0.7777778, 0.2222222;
  (1, 1) : 0.0, 1.0;
}
probability ( dtype | assgn ) {
  (0) : 1.0, 0.0;
  (1) : 0.7380952, 0.2619048;
}
probability ( vars | keyid ) {
  (0) : 0.97368421, 0.02631579;
  (1) : 0.4, 0.6;
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
probability ( opaspr | fncpar, break, callfnc ) {
  (0, 0, 0) : 1.0, 0.0;
  (1, 0, 0) : 0.5, 0.5;
  (0, 1, 0) : 0.5833333, 0.4166667;
  (1, 1, 0) : 0.6, 0.4;
  (0, 0, 1) : 0.5833333, 0.4166667;
  (1, 0, 1) : 0.3636364, 0.6363636;
  (0, 1, 1) : 0.5555556, 0.4444444;
  (1, 1, 1) : 0.5217391, 0.4782609;
}
probability ( arith | dtype, logrel ) {
  (0, 0) : 0.8487395, 0.1512605;
  (1, 0) : 0.0, 1.0;
  (0, 1) : 0.4864865, 0.5135135;
  (1, 1) : 0.0, 1.0;
}
probability ( assgn | switch ) {
  (0) : 0.98666667, 0.01333333;
  (1) : 0.5543478, 0.4456522;
}
probability ( constl | beflp ) {
  (0) : 0.98113208, 0.01886792;
  (1) : 0.8360656, 0.1639344;
}
probability ( logrel | block, assgn ) {
  (0, 0) : 1.0, 0.0;
  (1, 0) : 0.7674419, 0.2325581;
  (0, 1) : 0.1052632, 0.8947368;
  (1, 1) : 0.1304348, 0.8695652;
}
probability ( exprn | arith, elseif ) {
  (0, 0) : 0.97169811, 0.02830189;
  (1, 0) : 0.3448276, 0.6551724;
  (0, 1) : 0.5384615, 0.4615385;
  (1, 1) : 0.1052632, 0.8947368;
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
probability ( itcpt | multi, eventit, switch ) {
  (0, 0, 0) : 1.0, 0.0;
  (1, 0, 0) : 0.5, 0.5;
  (0, 1, 0) : 0.7857143, 0.2142857;
  (1, 1, 0) : 0.5, 0.5;
  (0, 0, 1) : 0.4705882, 0.5294118;
  (1, 0, 1) : 1.0, 0.0;
  (0, 1, 1) : 0.4390244, 0.5609756;
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
probability ( fncpar | switch ) {
  (0) : 0.8933333, 0.1066667;
  (1) : 0.3804348, 0.6195652;
}
probability ( fncpro | block, sequen ) {
  (0, 0) : 0.7938144, 0.2061856;
  (1, 0) : 0.4347826, 0.5652174;
  (0, 1) : 0.5, 0.5;
  (1, 1) : 0.05, 0.95;
}
probability ( nestit | sequen, countit ) {
  (0, 0) : 0.7373737, 0.2626263;
  (1, 0) : 0.5, 0.5;
  (0, 1) : 0.5, 0.5;
  (1, 1) : 0.05, 0.95;
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
probability ( incdcr | itcpt, switch, default ) {
  (0, 0, 0) : 1.0, 0.0;
  (1, 0, 0) : 0.3333333, 0.6666667;
  (0, 1, 0) : 0.6470588, 0.3529412;
  (1, 1, 0) : 0.5, 0.5;
  (0, 0, 1) : 0.5, 0.5;
  (1, 0, 1) : 1.0, 0.0;
  (0, 1, 1) : 0.5263158, 0.4736842;
  (1, 1, 1) : 0.2105263, 0.7894737;
}
probability ( countit | switch, beflp ) {
  (0, 0) : 0.96774194, 0.03225806;
  (1, 0) : 0.4545455, 0.5454545;
  (0, 1) : 0.5384615, 0.4615385;
  (1, 1) : 0.3333333, 0.6666667;
}
probability ( eventit | countit, switch, beflp ) {
  (0, 0, 0) : 0.98333333, 0.01666667;
  (1, 0, 0) : 0.0, 1.0;
  (0, 1, 0) : 0.3, 0.7;
  (1, 1, 0) : 0.5833333, 0.4166667;
  (0, 0, 1) : 0.0, 1.0;
  (1, 0, 1) : 0.3333333, 0.6666667;
  (0, 1, 1) : 0.5625, 0.4375;
  (1, 1, 1) : 0.21875, 0.78125;
}
probability ( switch ) {
   0.4491018, 0.5508982;
}
probability ( fncdef | fncpro, switch ) {
  (0, 0) : 0.93333333, 0.06666667;
  (1, 0) : 0.5333333, 0.4666667;
  (0, 1) : 0.6, 0.4;
  (1, 1) : 0.3269231, 0.6730769;
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
probability ( ifelse | multi, beflp ) {
  (0, 0) : 0.98058252, 0.01941748;
  (1, 0) : 1.0, 0.0;
  (0, 1) : 0.8444444, 0.1555556;
  (1, 1) : 0.1875, 0.8125;
}
probability ( callfnc | fncpro, endlp ) {
  (0, 0) : 1.0, 0.0;
  (1, 0) : 0.5, 0.5;
  (0, 1) : 0.4193548, 0.5806452;
  (1, 1) : 0.4146341, 0.5853659;
}
probability ( stdio | switch, endlp ) {
  (0, 0) : 0.92063492, 0.07936508;
  (1, 0) : 0.34375, 0.65625;
  (0, 1) : 0.5833333, 0.4166667;
  (1, 1) : 0.55, 0.45;
}
probability ( lrvalue | selcpt, switch ) {
  (0, 0) : 0.98571429, 0.01428571;
  (1, 0) : 0.4, 0.6;
  (0, 1) : 0.5675676, 0.4324324;
  (1, 1) : 0.4545455, 0.5454545;
}
probability ( scanf | dtype, exprn ) {
  (0, 0) : 1.0, 0.0;
  (1, 0) : 1.0, 0.0;
  (0, 1) : 0.8857143, 0.1142857;
  (1, 1) : 0.2, 0.8;
}
probability ( printf | exprn, selcpt ) {
  (0, 0) : 0.93333333, 0.06666667;
  (1, 0) : 0.8823529, 0.1176471;
  (0, 1) : 1.0, 0.0;
  (1, 1) : 0.3571429, 0.6428571;
}
probability ( ifseri | assgn, eventit ) {
  (0, 0) : 0.97468354, 0.02531646;
  (1, 0) : 0.5555556, 0.4444444;
  (0, 1) : 0.7173913, 0.2826087;
  (1, 1) : 0.25, 0.75;
}
probability ( elseif | ifseri, beflp ) {
  (0, 0) : 0.98850575, 0.01149425;
  (1, 0) : 0.5263158, 0.4736842;
  (0, 1) : 0.8205128, 0.1794872;
  (1, 1) : 0.3181818, 0.6818182;
}
probability ( beflp | dtype, fncpar ) {
  (0, 0) : 0.8282828, 0.1717172;
  (1, 0) : 0.3333333, 0.6666667;
  (0, 1) : 0.4035088, 0.5964912;
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
probability ( prepost | switch, fncdef ) {
  (0, 0) : 0.90625, 0.09375;
  (1, 0) : 0.4634146, 0.5365854;
  (0, 1) : 0.3636364, 0.6363636;
  (1, 1) : 0.3333333, 0.6666667;
}
