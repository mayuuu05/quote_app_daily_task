# quote_app_daily_task

<h1 align="center">
 #️⃣ Factory constructor & Modal class #️⃣
</h1>

# Factory constructor

In object-oriented programming, particularly in  Dart languages   a factory constructor is a special type of constructor used to create and return instances of a class.

 Unlike regular constructors, which always return a new instance of the class they belong to, factory constructors can return instances of a different class or even reuse existing instances. This gives developers more control over the creation process.

A factory constructor in Dart is a special type of constructor that allows you to control the instance creation of a class. It can return an existing instance or a new instance, based on the logic you define. This can be particularly useful for scenarios such as implementing singleton patterns, caching instances, or complex initialization logic.
## Syntax

```bash
  class ClassName {
  factory ClassName() {
    // TODO: return ClassName instance
  }

  factory ClassName.namedConstructor() {
    // TODO: return ClassName instance
  }
}
```
## Example

```bash
class Person {
  String firstName;
  String lastName;

  // constructor
  Person(this.firstName, this.lastName);

  // factory constructor Person.fromMap
  factory Person.fromMap(Map<String, Object> map) {
    final firstName = map['firstName'] as String;
    final lastName = map['lastName'] as String;
    return Person(firstName, lastName);
  }
}

void main() {
  // create a person object
  final person = Person('John', 'Doe');

  // create a person object from map
  final person2 = Person.fromMap({'firstName': 'Harry', 'lastName': 'Potter'});

  // print first and last name
  print("From normal constructor: ${person.firstName} ${person.lastName}");
  print("From factory constructor: ${person2.firstName} ${person2.lastName}");
}
```

# Modal Class.

A model class is used to represent the data structure of the application. It is an essential part of the Model-View-Controller (MVC) or Model-View-ViewModel (MVVM) architectural patterns. The model class typically holds data and provides methods to manipulate and retrieve that data. Let's go through the definition and explanation of a model class step by step.

### 👉Components of a Model Class


Properties: These are the variables that hold the data attributes of the model.

Constructor: A method to initialize the properties of the model class.

Factory Constructor: A constructor that allows custom logic to create an instance of the class.

Methods: Functions that define behaviors or actions that can be performed on the data.

## Example

```bash
class Product {
  String name;
  double price;
  String description;


  Product({required this.name, required this.price, required this.description});
}

void main() {
 
  Product product = Product(
    name: 'Laptop',
    price: 999.99,
    description: 'A high-performance laptop',
  );

  print('Product Name: ${product.name}');
  print('Product Price: \$${product.price}');
  print('Product Description: ${product.description}');
}
}
```
<h1 align="center"> 👉Dialogue box </h1>

<div align = "center">
 
    
  <img src = "https://github.com/mayuuu05/quote_app_daily_task/assets/149376263/5bea6f8b-6706-4aef-9ee9-e437bb00a098"  height=35% width=22%  />
   <img src = "https://github.com/mayuuu05/quote_app_daily_task/assets/149376263/b644e5ad-4b20-49c8-a4e1-8eb484805519"  height=35% width=22%  />
   <img src = "https://github.com/mayuuu05/quote_app_daily_task/assets/149376263/f16e0788-f5f8-46a5-b28b-6e5c10f2e0ef"  height=35% width=22%  />
   <img src = "https://github.com/mayuuu05/quote_app_daily_task/assets/149376263/05fd55b3-3141-4f35-ac70-de55e88ddd83"  height=35% width=22%  />
   <img src = "https://github.com/mayuuu05/quote_app_daily_task/assets/149376263/104c632c-5930-4f83-b7e5-af74bdf707b0"  height=35% width=22%  />
   <img src = "https://github.com/mayuuu05/quote_app_daily_task/assets/149376263/e4521015-065b-4233-83d1-0a9a5cef5dff"  height=35% width=22%  />
    <img src = "https://github.com/mayuuu05/quote_app_daily_task/assets/149376263/a5ad3a25-63cb-4336-9eca-330470f29e17"  height=35% width=22%  />
  <video height="450" src="https://github.com/mayuuu05/quote_app_daily_task/assets/149376263/69a9036d-e2af-450b-8c6e-f72168d5ed42") />
    
</div>

 <h1 align="center"> 👉Quotes app Task</h1>

<div align = "center">


  <img src = "https://github.com/mayuuu05/quote_app_daily_task/assets/149376263/a47e2f57-74d5-4876-ab29-db34cdcd9690"  height=35% width=22%  />
   <img src = "https://github.com/mayuuu05/quote_app_daily_task/assets/149376263/8b5db11f-3e28-4902-a207-084f8aca1adb"  height=35% width=22%  />
  <video height="450" src="

https://github.com/mayuuu05/quote_app_daily_task/assets/149376263/ac188ecb-ad93-4e9d-ab67-dfe101b57b50"/>
    
</div>

 









A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
