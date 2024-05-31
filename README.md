<h1 align="center">
 #️⃣ Factory constructor & Modal class #️⃣
</h1>
<p>
  <p>Write a detailed implementation of the Factory constructor & and Modal class with an explanation step by step (point-wise).</p>

1> Factory constructor :-

=>     In object-oriented programming, particularly in  Dart languages   a factory constructor is a special type of constructor used to create and return instances of a class.

 Unlike regular constructors, which always return a new instance of the class they belong to, factory constructors can return instances of a different class or even reuse existing instances. This gives developers more control over the creation process.

```bash
improt'dart:io';
class Shape {
  final int sides;

  Shape(this.sides);

  factory Shape.create(int sides) {
    if (sides == 3)
    {
      return Triangle();
    }
    else if (sides == 4)
    {
      return Square();
    }
     else
    {
      return Shape(sides);
    }
  }
}

class Triangle extends Shape {
  Triangle() : super(3) {
    print("Creating a Triangle.");
  }
}

class Square extends Shape {
  Square() : super(4) {
    print("Creating a Square.");
  }
}

void main() {
  var shape1 = Shape.create(3); 
  var shape2 = Shape.create(4); 
  var shape3 = Shape.create(5); 
}

  ```

</p>
