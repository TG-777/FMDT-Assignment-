
BigInt square(final int n) {
  if (n < 1 || n > 64) {
    throw ArgumentError("Square must be between 1 and 64");
  }
  return BigInt.from(2).pow(n - 1);
}


BigInt total() {
  BigInt sum = BigInt.zero;
  for (int i = 1; i <= 64; i++) {
    sum += square(i);
  }
  
  return sum;
}

void main() {
  print("Grains on square 1: ${square(1)}");        
  print("Grains on square 2: ${square(2)}");        
  print("Grains on square 3: ${square(3)}");       
  print("Grains on square 64: ${square(64)}");      
  print("Total grains on board: ${total()}");       
}