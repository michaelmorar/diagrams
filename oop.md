# What is object-oriented programming? 
In the simplest mode, when we program something, we provide a set of instructions for it to follow – advance ten paces, turn right, and finally pick up the key. Setting up this simple set of commands is called ‘imperative’ programming. An imperative program may have thousands of steps. In a program these steps invariably work with data – creating, reading, changing, and deleting pieces of information as they execute each step in sequence. 
Many imperative languages are successful and rightfully so. But the larger and more complex systems become, the messier and more difficult it is for developers to keep track of which commands are using which data. Object-orientated programs solve offer friendlier approach to the humans who must write them.     
When describing it, I prefer to think of it first as a way of thinking rather than a way of developing. We take things that have something in common, commands and the data upon which they operation, and chunk them into recognisable entities. In this way, software programs with their bits, bytes, and machine instructions become represented as things and ideas in the real world. 
Our list of instructions of advancing some paces before picking up a key, and the status of having they or not could be rolled together into a “robot” object. Now every command or set of commands – the behaviours, and everything about the thing – attributes represent a class of thing – a “robot”. We work with the Robot class and in for example a game, we can create as many copies – or instances – of that class, each the same but independent of the other. 
Object-orientated programming concentrates code into “classes” that would otherwise be redundant. 
Let’s look in more detail at this concept. OOP has four key characteristics: 
1. Encapsulation (reduce complexity, increase reusablility) 
2. Inheritance (eliminate redundant code) 
3. Polymorphism (eliminate switch, if-else) 
4. Abstraction (reduce complexity, isolate change impact)

These are perhaps lengthy words for the elegant concepts to which they refer. Let's talk about each. 

## Encapsulation 
Perhaps one of object-orientated programming's most important features. Everything about an object - its attributes and behaviours - are wrapped up in a protective casing. No robot can see what the other is carrying (unless it chooses to reveal it) and none can issues commands to the other (again, unless this is desired). Changes or commands issued to one robot does not affect another. Encapsulation is about protecting an object from unexpected side-effects. It is also about protecting information - data fields can be marked as public or private. 

## Inheritance 
