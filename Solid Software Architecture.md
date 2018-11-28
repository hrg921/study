# Solid Software Architecture

**udemy class**

## Single Responsible Principle

Separate components each responsible for particular functionality.

Modular design following SPR should be followed at lower level.

### Advantages

- Reduced coupling between unrelated functionality
- Code is more robust - less likely to unintentionally modify and break functionality that did not need to be changed.
- Helps make code more understandable and maintainable

## Open/Closed Principle

Software entities should be open for extension, bud closed for modification.

In simpler terms, we should write code that doesn't have to be changed every time the requirements change, but can be extended to allow for more functionality.

### How to extend code without modifying it?

We can take advantage of polymorphism and different OOP programming language features such as

- Inheritance: the ability to create a class from another class, the "parent" class, extending the functionality and state of the parent in the derived, or "child" class
- Interfaces: An interface acts as a syntactic "contract" contains definitions for a group of related functionalities that a class or struct can implement.

### Advantages

- It is normal in ongoning software projects for requirements to be added or modified. Following the Open/Closed principle will help us from breaking existing code which is closed to modification, whilst allowing us to build on existing functionality since it is open to extension.
- Code is more robust and there is reduced risk when introducing new changes as existing functionality is less likely to be disrupted.

## Liskov Substitution Principle

### Technical Definition

If S is as subtype of T, then objects of type T may be replaced with objects of type S (in other words, objects of type S may substitute objects of type T) without altering any of the desirable properties of that program (correctness, task performed, etc.).

In simpler OOP terms, when we have a base class and child class relationship if we can successfully replace the object/instance of a parent class with an object/instance of the child class, without affecting the results that we get with the base class instance, then the two classes follow the Liskov Substitution Principle.

### Advantages

- Leads to less coupling between code
	- If the LSP is respected, then the code using the subtype need not be aware of the internal implementation of the subtype as using any subtype will guarantee the same behaviour
	- On the other hand, if different subtypes result in different behaviour, require different inputs, etc. there will be more coupling as subtype specific code will have to be added to ensure everything works.
	- This also means that the programmer needs to be aware of each subtype's implementation.
- More code re-usability and easier maintenance.

## Interface Segregation Principle

### Technical Definition

States that no client should be forced to depend on methods it does not use.

Therefore, interfaces that are very large should be split into smaller and more specific ones so that clients will only have to know about the methods that are of interest to them.

### Drawbacks

Some people may find the large number of smaller interfaces harder to manage, expecially in more complex systems.

### Advantages

Proper interface segregation leads to less coupling, resulting in

- Easier to make changes / refactor
- Better maintainability

## What is the Dependency Inversion

### Technical Definition

- High-level modules should not depend on low-level modules. Both should depends on abstractions.
- Abstractions should not depend on details. Details should depend on abstractions.

In other words, low-level modules define contracts that higher-level modules can use. The higher-level module does not need to care about the lower-level module's specific implementation because of the layer of abstraction.

### Drawbacks

- Adding unnecessary levels of abstraction can lead to a large number of interfaces, increasing complexity and reducing maintainability.
- Therfore, additional layers of abstraction shuold only be added where needed.

### Advantages

The added layer of abstraction between higher level and lower level modules reduces dependencies between modules and promotes better maintainability.
