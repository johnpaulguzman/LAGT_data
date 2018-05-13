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
node sequen {
  type : discrete [ 2 ] = { "Known", "NotKnown" };
}
node multi {
  type : discrete [ 2 ] = { "Known", "NotKnown" };
}
node switch {
  type : discrete [ 2 ] = { "Known", "NotKnown" };
}
node ifelse {
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
probability ( keyid | arith ) {
  (0) : 1.0, 0.0;
  (1) : 0.875, 0.125;
}
probability ( dtype | scanf ) {
  (0) : 0.96341463, 0.03658537;
  (1) : 0.4, 0.6;
}
probability ( vars ) {
   0.95402299, 0.04597701;
}
probability ( arith | dtype ) {
  (0) : 0.6790123, 0.3209877;
  (1) : 0.0, 1.0;
}
probability ( assgn | dtype ) {
  (0) : 0.6419753, 0.3580247;
  (1) : 0.0, 1.0;
}
probability ( constl ) {
   0.95402299, 0.04597701;
}
probability ( logrel | assgn ) {
  (0) : 0.8653846, 0.1346154;
  (1) : 0.1428571, 0.8571429;
}
probability ( exprn | arith ) {
  (0) : 0.8909091, 0.1090909;
  (1) : 0.1875, 0.8125;
}
probability ( sequen | logrel ) {
  (0) : 1.0, 0.0;
  (1) : 0.8108108, 0.1891892;
}
probability ( multi | sequen ) {
  (0) : 0.9875, 0.0125;
  (1) : 0.7142857, 0.2857143;
}
probability ( switch | ifseri ) {
  (0) : 0.1774194, 0.8225806;
  (1) : 0.0, 1.0;
}
probability ( ifelse | ifseri ) {
  (0) : 0.8870968, 0.1129032;
  (1) : 1.0, 0.0;
}
probability ( scanf | vars ) {
  (0) : 0.97590361, 0.02409639;
  (1) : 0.25, 0.75;
}
probability ( printf | exprn ) {
  (0) : 0.94545455, 0.05454545;
  (1) : 0.6875, 0.3125;
}
probability ( ifseri | assgn ) {
  (0) : 0.8846154, 0.1153846;
  (1) : 0.4571429, 0.5428571;
}
probability ( elseif | exprn, ifseri ) {
  (0, 0) : 1.0, 0.0;
  (1, 0) : 0.7894737, 0.2105263;
  (0, 1) : 0.5833333, 0.4166667;
  (1, 1) : 0.3846154, 0.6153846;
}
