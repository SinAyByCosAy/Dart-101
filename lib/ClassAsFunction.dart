// In Dart, classes can define a special method named call which allows instances of the class to be called like functions.
// In the code you provided, the WannabeFunction class defines a call() method with the signature 
// String call(String a, String b, String c). When an instance of the WannabeFunction class is called like a function, the call() method is automatically invoked.
// So when we call the wf instance with three String arguments like this: wf('Hi', 'there,', 'gang'), 
// it is equivalent to calling the call() method of the wf instance with those same arguments.
// The call() method then takes those three arguments (a, b, and c) and concatenates them together 
// with spaces and an exclamation mark at the end, before returning the resulting string. 
// This concatenated string is then stored in the out variable and printed using the print() function.

class WannabeFunction {
  String call(String a, String b, String c) => '$a $b $c!';
}

var wf = WannabeFunction();
var out = wf('Hi', 'there,', 'gang');

main() => print(out);