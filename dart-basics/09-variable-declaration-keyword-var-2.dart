// When to use `var`? 

// 1. Clear Initialization
// When the type is evident from the initialization, using var can make the code more concise.
var name = "John";
var age = 25;

// 2. Complex Types
// In cases where the type is complex and specifying it explicitly would be cumbersome, var can improve readability.
var complexList = <Map<String, dynamic>>[
  {'name': 'John', 'age': 25},
  {'name': 'Jane', 'age': 30},
];

// 3. Iterating Over Collections
// When iterating over a collection, the type of the loop variable is obvious from the type of elements in the collection.
for (var fruit in ['apple', 'banana', 'orange']) {
  print(fruit);
}

// 4. Refactoring
// If you decide to change the type during refactoring, using var can make the process smoother.
//=> Before refactoring
SomeLongTypeName variableName = getSomeValue();
//=> After refactoring
var variableName = getSomeValue();