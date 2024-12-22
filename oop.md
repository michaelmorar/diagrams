# What is object-oriented programming? 
In the simplest mode, when we program something, we provide a set of instructions for it to follow – advance ten paces, turn right, and finally pick up the key. Setting up this simple set of commands is called ‘imperative’ programming. An imperative program may have thousands of steps. In a program these steps invariably work with data – creating, reading, changing, and deleting pieces of information as they execute each step in sequence. 

## The problem with imperative programming 
### It's difficult to change
Consider a small start-up business, nimble and flexible, able to change, add products and services, and improve quickly. But the larger it grows, the more staff, departments, and bureaucracy it adds, the slower and clunkier it becomes. Change is cumbersome the company cannot react to shifts in the market. An established imperative system is like a century-old corporation, firmly fixed in its ways, waiting for a young disruptor to unseat it. 

Imperative languages are successful and rightfully so. But the larger and more complex systems become, the messier and more difficult it is for developers to keep track of which commands are doing what with which data. A large imperative system is a monolith whose time-to-market increases until even replacing comes at great expense. 

### It doesn't encourage reuse
Imagine USB drives or web cameras that only work on a specific computer. The company manufacturing such products must keep a potentially infinite line or risk failure. Instead, most peripheral devices work on any computer. Companies like Cisco and Intel became successful because they produced devices and chips that worked on any PC. Reuse is crucial. 

Imperative functions and routines use global variables. When executed, they change the state of the entire program meaning they cannot be reused without fully understanding the side-effects. This paradigm works well for a specific task, but does not promote reuse. 

### Error-prone and difficult to read
The detailed, step-by-step nature of imperative code can make it harder to understand the overall logic, especially when dealing with complex control flows, leading to poor code maintainability.

Modifying variables directly can introduce unintended side effects, making it more likely to introduce errors when changing parts of the code. 

## How does object-oriented programming work?
Object-orientated programming offers a friendlier approach to the humans who must build and maintain software. 

When describing it, I prefer to think of it first as a way of thinking rather than a way of coding. We take things that have something in common, commands and the data upon which they operation, and chunk them into recognisable entities. 

In this way, software programs with their bits, bytes, and machine instructions become represented as real-world things and ideas.

Our list of instructions of advancing some paces before picking up a key, and the status of having a key or not could be rolled together into a “robot” object. Now every command or set of commands – the behaviours, and everything about the thing – attributes represent a class of the thing – a “robot”. 

Object-orientated programming concentrates code that would otherwise be redundant into “classes”.

Let’s look in more detail at this concept. Object-oriented programming has four key characteristics: 
1. Encapsulation (reduce complexity, increase reusablility) 
2. Inheritance (eliminate redundant code) 
3. Polymorphism (hierarchies of things) 
4. Abstraction (reduce complexity, isolate change impact)

These are perhaps lengthy words for the elegant concepts to which they refer. Let's talk about each. 

### Encapsulation 
Perhaps one of object-orientated programming's most important features. Everything about an object - its attributes and behaviours - are wrapped up in a protective casing. No robot can see what the other is carrying (unless it chooses to reveal it) and none can issues commands to the other (again, unless this is desired). Changes or commands issued to one robot do not affect another. 

Encapsulation is about protecting an object from unexpected side-effects. It is also about protecting information - data fields can be marked as public or private. 

In code, encapsulation involves wrapping data fields and methods in a single unit, usually a class and restricting direct access using access modifiers. For example, private fields with public getters and setters.

e.g., in Java
```
public class Robot {
  private String id; // private = restricted access

  // Getter
  public String getId() {
    return id;
  }

  // Setter
  public void setId(String newId) {
    this.id = newId;
  }
}
```

## Inheritance 
The process of creating a new class (child) that inherits attributes and methods from an existing class (parent), thereby promoting code reuse. For example, a Car class inherits from a Vehicle class, taking all of its parents classes attributes and behaviours, and adding some of its own. 

e.g., in Python 

```
class Animal:
    def __init__(self, name):
      
      	# Storing the name of the animal
        self.name = name  

    def sound(self):      
        return "I need a sound"

class Cow(Animal):
    def sound(self):
      
        # Cow-specific sound
        return "Moo!"
```

In object-oriented programming, we call this an 'is-a' relationship. A Car is-a Vehicle. A Cow is-an Animal. 

Inheritance saves us having to define a Cow class from scratch. We did not need to define the "name" attribute, we only needed to state that it inherits from the class Animal. This is called a "has-a" relationship - A Cow 'has-a' ```name```.  

Any programmer that adds more types of Animals to the program can do so focussing only on the attributes and behaviours specific to that subclass - automatic reuse without repeating a line of code. 

## Polymorphism
From the Greek "poly" meaning many, and "morph" meaning form, "polymorphism" is the shapeshifter in object-oriented programming. 

It allows methods to perform differently based on the object they are invoked on. When two types share an inheritance chain, they can be used interchangeably with no errors.

To extend our animal example: 
```
class Sheep(Animal):
    def sound(self):
      
        # Sheep-specific sound
        return "Baa!"
```

Calling the ```sound()``` method on any object that inherited from Animal will work. We can instruct all objects of the ```Animal``` class to ```sound()```, and whether they are ```Cow```, a ```Sheep```, a ```Goat```, or a ```Pig```, they will respond with a farmyard cacophony. 


## Abstraction
This is the process of hiding implementation details and showing only the essential features of an object. A concrete example is an electric doorbell - a device with a simple push-button interface. 

When we press the button on a doorbell, we don't care how its internal circuits or mechanisms work, we only need to know it has a button and (hopefully) makes a sound. We can replace a doorbell with any other on the market without needing to explain to friends, families, visitors, and (unfortunately) door-to-door salespeople, how the new bell works. 

Let's go back to our farmyard and switch back to Java for the next example. 

```
abstract class Animal {
  public abstract void animalSound();
}
```

