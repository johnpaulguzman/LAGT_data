belief network "unknown"
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
node scanf {
  type : discrete [ 2 ] = { "Known", "NotKnown" };
}
node printf {
  type : discrete [ 2 ] = { "Known", "NotKnown" };
}
node return {
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
probability ( vars | callfnc, constr ) {
  (0, 0) : 0.98701299, 0.01298701;
  (1, 0) : 0.7, 0.3;
  (0, 1) : 0.5333333, 0.4666667;
  (1, 1) : 0.1538462, 0.8461538;
}
probability ( constl | fncpar, callfnc ) {
  (0, 0) : 0.82, 0.18;
  (1, 0) : 0.2631579, 0.7368421;
  (0, 1) : 0.2, 0.8;
  (1, 1) : 0.02272727, 0.97727273;
}
probability ( opaspr | lrvalue, multi ) {
  (0, 0) : 0.5445545, 0.4554455;
  (1, 0) : 0.0, 1.0;
  (0, 1) : 0.6111111, 0.3888889;
  (1, 1) : 0.25, 0.75;
}
probability ( dtype | return ) {
  (0) : 0.97163121, 0.02836879;
  (1) : 0.3896104, 0.6103896;
}
probability ( ampas | vars, selcpt ) {
  (0, 0) : 0.7916667, 0.2083333;
  (1, 0) : 1.0, 0.0;
  (0, 1) : 0.6226415, 0.3773585;
  (1, 1) : 0.0952381, 0.9047619;
}
probability ( assgn | fncdef, callfnc ) {
  (0, 0) : 0.8608696, 0.1391304;
  (1, 0) : 0.3703704, 0.6296296;
  (0, 1) : 0.0, 1.0;
  (1, 1) : 0.04347826, 0.95652174;
}
probability ( arith | decl ) {
  (0) : 1.0, 0.0;
  (1) : 0.375, 0.625;
}
probability ( logrel ) {
   0.5137615, 0.4862385;
}
probability ( block | init, countit ) {
  (0, 0) : 0.97580645, 0.02419355;
  (1, 0) : 0.6315789, 0.3684211;
  (0, 1) : 0.0, 1.0;
  (1, 1) : 0.05454545, 0.94545455;
}
probability ( decl | dtype, logrel ) {
  (0, 0) : 0.95192308, 0.04807692;
  (1, 0) : 0.75, 0.25;
  (0, 1) : 0.6984127, 0.3015873;
  (1, 1) : 0.3023256, 0.6976744;
}
probability ( exprn | logrel, init ) {
  (0, 0) : 0.92523364, 0.07476636;
  (1, 0) : 0.5, 0.5;
  (0, 1) : 0.0, 1.0;
  (1, 1) : 0.07954545, 0.92045455;
}
probability ( lrvalue | assgn, multi ) {
  (0, 0) : 0.8431373, 0.1568627;
  (1, 0) : 0.3947368, 0.6052632;
  (0, 1) : 0.5789474, 0.4210526;
  (1, 1) : 0.1186441, 0.8813559;
}
probability ( incdcr | exprn, beflp ) {
  (0, 0) : 1.0, 0.0;
  (1, 0) : 1.0, 0.0;
  (0, 1) : 1.0, 0.0;
  (1, 1) : 0.2317073, 0.7682927;
}
probability ( init | logrel ) {
  (0) : 0.95535714, 0.04464286;
  (1) : 0.1698113, 0.8301887;
}
probability ( itcpt | incdcr, beflp ) {
  (0, 0) : 1.0, 0.0;
  (1, 0) : 0.5, 0.5;
  (0, 1) : 0.8214286, 0.1785714;
  (1, 1) : 0.1587302, 0.8412698;
}
probability ( selcpt | logrel, exprn ) {
  (0, 0) : 0.96969697, 0.03030303;
  (1, 0) : 0.5625, 0.4375;
  (0, 1) : 0.3846154, 0.6153846;
  (1, 1) : 0.1444444, 0.8555556;
}
probability ( fncpar | dtype, itcpt ) {
  (0, 0) : 0.95774648, 0.04225352;
  (1, 0) : 0.5555556, 0.4444444;
  (0, 1) : 0.36, 0.64;
  (1, 1) : 0.0, 1.0;
}
probability ( countit | logrel, itcpt ) {
  (0, 0) : 1.0, 0.0;
  (1, 0) : 0.91836735, 0.08163265;
  (0, 1) : 1.0, 0.0;
  (1, 1) : 0.0877193, 0.9122807;
}
probability ( eventit | incdcr, endlp ) {
  (0, 0) : 0.976, 0.024;
  (1, 0) : 0.3181818, 0.6818182;
  (0, 1) : 0.6333333, 0.3666667;
  (1, 1) : 0.02439024, 0.97560976;
}
probability ( multi | eventit, return ) {
  (0, 0) : 0.8852459, 0.1147541;
  (1, 0) : 0.6315789, 0.3684211;
  (0, 1) : 0.5555556, 0.4444444;
  (1, 1) : 0.1, 0.9;
}
probability ( nestit | beflp ) {
  (0) : 0.5748031, 0.4251969;
  (1) : 0.0989011, 0.9010989;
}
probability ( fncdef | exprn, constr ) {
  (0, 0) : 0.8495575, 0.1504425;
  (1, 0) : 0.3921569, 0.6078431;
  (0, 1) : 1.0, 0.0;
  (1, 1) : 0.0, 1.0;
}
probability ( callfnc | selcpt, fncpar ) {
  (0, 0) : 0.991525424, 0.008474576;
  (1, 0) : 0.8918919, 0.1081081;
  (0, 1) : 1.0, 0.0;
  (1, 1) : 0.2413793, 0.7586207;
}
probability ( pasaddr | vars, ampas ) {
  (0, 0) : 0.984375, 0.015625;
  (1, 0) : 0.8571429, 0.1428571;
  (0, 1) : 0.3555556, 0.6444444;
  (1, 1) : 0.02631579, 0.97368421;
}
probability ( stdio | vars, multi ) {
  (0, 0) : 0.97744361, 0.02255639;
  (1, 0) : 0.7142857, 0.2857143;
  (0, 1) : 0.85, 0.15;
  (1, 1) : 0.3157895, 0.6842105;
}
probability ( endlp | arith, printf ) {
  (0, 0) : 1.0, 0.0;
  (1, 0) : 0.0, 1.0;
  (0, 1) : 0.4285714, 0.5714286;
  (1, 1) : 0.0, 1.0;
}
probability ( beflp | logrel, init ) {
  (0, 0) : 0.97196262, 0.02803738;
  (1, 0) : 0.6666667, 0.3333333;
  (0, 1) : 0.6, 0.4;
  (1, 1) : 0.09090909, 0.90909091;
}
probability ( ifelse | endlp, printf ) {
  (0, 0) : 0.6916667, 0.3083333;
  (1, 0) : 0.6875, 0.3125;
  (0, 1) : 0.6666667, 0.3333333;
  (1, 1) : 0.09090909, 0.90909091;
}
probability ( ifseri | callfnc, ifelse ) {
  (0, 0) : 0.5096154, 0.4903846;
  (1, 0) : 0.7692308, 0.2307692;
  (0, 1) : 0.0, 1.0;
  (1, 1) : 0.2777778, 0.7222222;
}
probability ( scanf | stdio ) {
  (0) : 0.98342541, 0.01657459;
  (1) : 0.1351351, 0.8648649;
}
probability ( printf | incdcr, sequen ) {
  (0, 0) : 0.78, 0.22;
  (1, 0) : 0.6875, 0.3125;
  (0, 1) : 0.8, 0.2;
  (1, 1) : 0.08510638, 0.91489362;
}
probability ( return | exprn, incdcr ) {
  (0, 0) : 0.94782609, 0.05217391;
  (1, 0) : 0.5, 0.5;
  (0, 1) : 0.5, 0.5;
  (1, 1) : 0.1904762, 0.8095238;
}
probability ( constr | fncpar ) {
  (0) : 0.98064516, 0.01935484;
  (1) : 0.1904762, 0.8095238;
}
probability ( fncs | dtype ) {
  (0) : 0.98802395, 0.01197605;
  (1) : 0.3333333, 0.6666667;
}
probability ( sequen | arith, incdcr ) {
  (0, 0) : 0.98561151, 0.01438849;
  (1, 0) : 0.8125, 0.1875;
  (0, 1) : 0.3636364, 0.6363636;
  (1, 1) : 0.0, 1.0;
}
