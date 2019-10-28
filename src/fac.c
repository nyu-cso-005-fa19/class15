/*long fac_acc(int n, long acc) {
  if (n != 0)
    return fac_acc(n - 1, n * acc);
  else 
    return acc;
}

long fac(int n0) {
  return fac_acc(n0, 1);
}
*/

long fac(int n) {
  return n == 0 ? 1 : n * fac(n - 1);
}
