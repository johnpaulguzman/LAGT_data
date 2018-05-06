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
probability ( keyid | decl, elseif ) {
  (0, 0) : 1.0, 0.0;
  (1, 0) : 0.5, 0.5;
  (0, 1) : 0.75, 0.25;
  (1, 1) : 0.0, 1.0;
}
probability ( vars | assgn, constr ) {
  (0, 0) : 0.98843931, 0.01156069;
  (1, 0) : 0.91489362, 0.08510638;
  (0, 1) : 0.9047619, 0.0952381;
  (1, 1) : 0.1929825, 0.8070175;
}
probability ( constl | assgn, fncpar ) {
  (0, 0) : 0.90502793, 0.09497207;
  (1, 0) : 0.575, 0.425;
  (0, 1) : 0.4666667, 0.5333333;
  (1, 1) : 0.15625, 0.84375;
}
probability ( opaspr | logrel, lrvalue ) {
  (0, 0) : 0.7870968, 0.2129032;
  (1, 0) : 0.4054054, 0.5945946;
  (0, 1) : 0.03703704, 0.96296296;
  (1, 1) : 0.1772152, 0.8227848;
}
probability ( dtype ) {
   0.8120805, 0.1879195;
}
probability ( ampas | incdcr, scanf ) {
  (0, 0) : 0.8095238, 0.1904762;
  (1, 0) : 0.5, 0.5;
  (0, 1) : 0.6363636, 0.3636364;
  (1, 1) : 0.0, 1.0;
}
probability ( assgn | exprn, fncdef, printf ) {
  (0, 0, 0) : 0.95522388, 0.04477612;
  (1, 0, 0) : 0.2, 0.8;
  (0, 1, 0) : 0.7727273, 0.2272727;
  (1, 1, 0) : 0.2432432, 0.7567568;
  (0, 0, 1) : 0.7619048, 0.2380952;
  (1, 0, 1) : 1.0, 0.0;
  (0, 1, 1) : 0.6, 0.4;
  (1, 1, 1) : 0.1525424, 0.8474576;
}
probability ( arith | endlp, printf ) {
  (0, 0) : 0.994252874, 0.005747126;
  (1, 0) : 0.2068966, 0.7931034;
  (0, 1) : 1.0, 0.0;
  (1, 1) : 0.5846154, 0.4153846;
}
probability ( logrel | exprn, init ) {
  (0, 0) : 0.93975904, 0.06024096;
  (1, 0) : 0.4444444, 0.5555556;
  (0, 1) : 0.5625, 0.4375;
  (1, 1) : 0.09183673, 0.90816327;
}
probability ( block | init, itcpt ) {
  (0, 0) : 0.96153846, 0.03846154;
  (1, 0) : 0.6428571, 0.3571429;
  (0, 1) : 0.5, 0.5;
  (1, 1) : 0.04166667, 0.95833333;
}
probability ( decl | vars, arith ) {
  (0, 0) : 0.96759259, 0.03240741;
  (1, 0) : 0.4516129, 0.5483871;
  (0, 1) : 0.2857143, 0.7142857;
  (1, 1) : 0.0, 1.0;
}
probability ( exprn | dtype ) {
  (0) : 0.7438017, 0.2561983;
  (1) : 0.03571429, 0.96428571;
}
probability ( lrvalue | assgn, arith, logrel ) {
  (0, 0, 0) : 0.91666667, 0.08333333;
  (1, 0, 0) : 0.1764706, 0.8235294;
  (0, 1, 0) : 1.0, 0.0;
  (1, 1, 0) : 1.0, 0.0;
  (0, 0, 1) : 0.5833333, 0.4166667;
  (1, 0, 1) : 0.34, 0.66;
  (0, 1, 1) : 0.8571429, 0.1428571;
  (1, 1, 1) : 0.0, 1.0;
}
probability ( incdcr | exprn, beflp ) {
  (0, 0) : 1.0, 0.0;
  (1, 0) : 1.0, 0.0;
  (0, 1) : 0.94444444, 0.05555556;
  (1, 1) : 0.2, 0.8;
}
probability ( varscop | stdio, elseif ) {
  (0, 0) : 0.98305085, 0.01694915;
  (1, 0) : 0.8333333, 0.1666667;
  (0, 1) : 0.7777778, 0.2222222;
  (1, 1) : 0.0, 1.0;
}
probability ( fncpro | exprn, endlp, return ) {
  (0, 0, 0) : 0.97777778, 0.02222222;
  (1, 0, 0) : 0.5, 0.5;
  (0, 1, 0) : 0.5, 0.5;
  (1, 1, 0) : 0.5, 0.5;
  (0, 0, 1) : 0.6666667, 0.3333333;
  (1, 0, 1) : 0.5, 0.5;
  (0, 1, 1) : 0.0, 1.0;
  (1, 1, 1) : 0.0, 1.0;
}
probability ( init | exprn ) {
  (0) : 0.91208791, 0.08791209;
  (1) : 0.1551724, 0.8448276;
}
probability ( itcpt | incdcr, beflp ) {
  (0, 0) : 1.0, 0.0;
  (1, 0) : 0.5, 0.5;
  (0, 1) : 0.8055556, 0.1944444;
  (1, 1) : 0.1298701, 0.8701299;
}
probability ( selcpt | logrel, exprn ) {
  (0, 0) : 0.97575758, 0.02424242;
  (1, 0) : 0.5882353, 0.4117647;
  (0, 1) : 0.3529412, 0.6470588;
  (1, 1) : 0.1414141, 0.8585859;
}
probability ( fncpar | dtype, itcpt ) {
  (0, 0) : 0.96116505, 0.03883495;
  (1, 0) : 0.5555556, 0.4444444;
  (0, 1) : 0.3055556, 0.6944444;
  (1, 1) : 0.0, 1.0;
}
probability ( countit | itcpt, beflp ) {
  (0, 0) : 1.0, 0.0;
  (1, 0) : 0.5, 0.5;
  (0, 1) : 0.7948718, 0.2051282;
  (1, 1) : 0.09459459, 0.90540541;
}
probability ( eventit | itcpt, beflp ) {
  (0, 0) : 0.96756757, 0.03243243;
  (1, 0) : 0.5, 0.5;
  (0, 1) : 0.5641026, 0.4358974;
  (1, 1) : 0.09459459, 0.90540541;
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
probability ( nestit | beflp, ifseri ) {
  (0, 0) : 0.7524752, 0.2475248;
  (1, 0) : 0.02777778, 0.97222222;
  (0, 1) : 0.5238095, 0.4761905;
  (1, 1) : 0.1298701, 0.8701299;
}
probability ( fncdef | exprn, return ) {
  (0, 0) : 0.8924051, 0.1075949;
  (1, 0) : 0.5, 0.5;
  (0, 1) : 0.5833333, 0.4166667;
  (1, 1) : 0.04761905, 0.95238095;
}
probability ( callfnc | selcpt, fncpar ) {
  (0, 0) : 0.98895028, 0.01104972;
  (1, 0) : 0.8947368, 0.1052632;
  (0, 1) : 0.7, 0.3;
  (1, 1) : 0.2028986, 0.7971014;
}
probability ( pasaddr | ampas, fncpro, callfnc ) {
  (0, 0, 0) : 0.6666667, 0.3333333;
  (1, 0, 0) : 0.6666667, 0.3333333;
  (0, 1, 0) : 0.4285714, 0.5714286;
  (1, 1, 0) : 0.75, 0.25;
  (0, 0, 1) : 0.5, 0.5;
  (1, 0, 1) : 0.5, 0.5;
  (0, 1, 1) : 0.0, 1.0;
  (1, 1, 1) : 0.0, 1.0;
}
probability ( stdio | vars, fncdef ) {
  (0, 0) : 0.95294118, 0.04705882;
  (1, 0) : 1.0, 0.0;
  (0, 1) : 0.8783784, 0.1216216;
  (1, 1) : 0.3469388, 0.6530612;
}
probability ( exitlp | elseif, fncs ) {
  (0, 0) : 0.9516129, 0.0483871;
  (1, 0) : 1.0, 0.0;
  (0, 1) : 1.0, 0.0;
  (1, 1) : 0.1, 0.9;
}
probability ( endlp | logrel, eventit ) {
  (0, 0) : 0.93373494, 0.06626506;
  (1, 0) : 0.7142857, 0.2857143;
  (0, 1) : 0.0625, 0.9375;
  (1, 1) : 0.2432432, 0.7567568;
}
probability ( beflp | logrel, init ) {
  (0, 0) : 0.9695122, 0.0304878;
  (1, 0) : 0.6, 0.4;
  (0, 1) : 0.3333333, 0.6666667;
  (1, 1) : 0.08333333, 0.91666667;
}
probability ( ifelse | exprn, endlp, printf ) {
  (0, 0, 0) : 0.8732394, 0.1267606;
  (1, 0, 0) : 0.40625, 0.59375;
  (0, 1, 0) : 0.7142857, 0.2857143;
  (1, 1, 0) : 0.5333333, 0.4666667;
  (0, 0, 1) : 0.7777778, 0.2222222;
  (1, 0, 1) : 0.5833333, 0.4166667;
  (0, 1, 1) : 0.0, 1.0;
  (1, 1, 1) : 0.1052632, 0.8947368;
}
probability ( ifseri | callfnc, ifelse ) {
  (0, 0) : 0.6746988, 0.3253012;
  (1, 0) : 0.75, 0.25;
  (0, 1) : 0.01470588, 0.98529412;
  (1, 1) : 0.25, 0.75;
}
probability ( switch | fncpro, itcpt ) {
  (0, 0) : 1.0, 0.0;
  (1, 0) : 0.9, 0.1;
  (0, 1) : 0.5, 0.5;
  (1, 1) : 0.0625, 0.9375;
}
probability ( scanf | fncdef, stdio ) {
  (0, 0) : 0.994011976, 0.005988024;
  (1, 0) : 0.93902439, 0.06097561;
  (0, 1) : 0.75, 0.25;
  (1, 1) : 0.1707317, 0.8292683;
}
probability ( printf | selcpt, endlp ) {
  (0, 0) : 0.90740741, 0.09259259;
  (1, 0) : 0.6428571, 0.3571429;
  (0, 1) : 0.6896552, 0.3103448;
  (1, 1) : 0.1384615, 0.8615385;
}
probability ( break | switch ) {
  (0) : 0.984375, 0.015625;
  (1) : 0.0, 1.0;
}
probability ( prepost | fncpro, pasaddr ) {
  (0, 0) : 0.91666667, 0.08333333;
  (1, 0) : 0.8333333, 0.1666667;
  (0, 1) : 1.0, 0.0;
  (1, 1) : 0.05, 0.95;
}
probability ( elseif | switch ) {
  (0) : 0.96875, 0.03125;
  (1) : 0.1875, 0.8125;
}
probability ( return | dtype, block ) {
  (0, 0) : 0.8894737, 0.1105263;
  (1, 0) : 0.25, 0.75;
  (0, 1) : 0.3269231, 0.6730769;
  (1, 1) : 0.0, 1.0;
}
probability ( default | break ) {
  (0) : 0.96825397, 0.03174603;
  (1) : 0.0, 1.0;
}
probability ( constr | fncpar, default ) {
  (0, 0) : 0.8666667, 0.1333333;
  (1, 0) : 1.0, 0.0;
  (0, 1) : 0.5, 0.5;
  (1, 1) : 0.06666667, 0.93333333;
}
probability ( fncs | dtype, switch ) {
  (0, 0) : 0.984375, 0.015625;
  (1, 0) : 0.5, 0.5;
  (0, 1) : 0.3636364, 0.6363636;
  (1, 1) : 0.0, 1.0;
}
probability ( sequen | incdcr, eventit, printf ) {
  (0, 0, 0) : 0.994011976, 0.005988024;
  (1, 0, 0) : 1.0, 0.0;
  (0, 1, 0) : 0.5294118, 0.4705882;
  (1, 1, 0) : 0.5714286, 0.4285714;
  (0, 0, 1) : 1.0, 0.0;
  (1, 0, 1) : 0.0, 1.0;
  (0, 1, 1) : 0.8, 0.2;
  (1, 1, 1) : 0.09259259, 0.90740741;
}
