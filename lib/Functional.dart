String scream(int length) => "A${'a' * length}h!";

main(){//not functional-style
  final values = [1, 2, 3, 5, 10, 50];
  for (var length in values){
    print(scream(length));
  }

  //functional style
  values.map(scream).forEach(print);
}

// The code uses a functional programming style to apply the scream function to each element in the values array and print the resulting strings. 
// Here's how it works:
// 1. values.map(scream) creates a new list by applying the scream function to 
// each element in the values array. This means that the scream function is called with each 
// integer in the values array as its argument, and the resulting string is added to a new list.
// 2. forEach(print) then iterates over the new list created in step 1 and applies the print function 
// to each element in the list. This means that each string returned by the scream function is printed to the console.

// The map() function transforms each element of the values array by applying the scream function to it, 
// and returns a new list with the transformed values. The forEach() function then iterates over this new list 
// and applies the print function to each element.
// In Dart, the forEach() function takes a function as an argument that is applied to each element in the list. 
// In this case, we simply pass the print function as the argument to forEach(), which works because print is a function 
// that takes a single argument and outputs it to the console. So, forEach(print) is equivalent to forEach((element) => print(element)).