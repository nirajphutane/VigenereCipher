void main(){
  String word = 'toerrishuman';
  List<int> keys = [1, 2];

  String cipher = getCipher(word, keys);
  print("\nVigenere Cipher of '$word' with key(s) '${keys.join(',')}' is '$cipher'.");
}

String getCipher(String word, List<int> keys) {
  print('Process:-');
  List<String> alphabets = ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z'];
  String cipher = '';
  int n = 0;
  for(String alphabet in word.toLowerCase().split('')){
    if(n >= keys.length){ n = 0; }
    int total = (alphabets.indexOf(alphabet)+1) + keys[n];
    if(total >= 26){ total = total - 26; }
    cipher += alphabets[total-1];
    print('($alphabet) -->\t${alphabets.indexOf(alphabet)+1}\t+\t${keys[n]}\t=\t$total\t--> (${alphabets[total-1]})');
    n++;
  }
  return cipher;
}