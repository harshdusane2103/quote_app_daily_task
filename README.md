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


<br><br>
 2> Modal class :
=>    A Modal class, often referred to as a model class, is a programming concept used in various software development paradigms, such as object-oriented programming (OOP) and model-view-controller (MVC) architectures. 
=>   It represents a blueprint for creating objects that encapsulate the data and behavior associated with a particular entity or concept within an application.



1> Attributes/Properties/Fields: 
=> These are variables that hold the state or data associated with the entity represented by the class. Each attribute typically corresponds to a characteristic of the entity.

2> Methods/Functions:
=> These are functions defined within the class that operate on the data or perform certain actions related to the entity. Methods encapsulate the behavior associated with the entity.

3> Constructors:
=> These are special methods responsible for initializing objects of the class. Constructors often set the initial values of the attributes when an object is created.

4>Access Modifiers: 
=>These determine the visibility or accessibility of attributes and methods from outside the class. Common access modifiers include public, private, and protected.

  ```bash
    body: SingleChildScrollView(
        child: Column(
          children: [
            ... List.generate(invoicelist.length, (index) => ListTile(
              title: Text(invoicelist[index].name!,style: TextStyle(fontSize: 28),),
              subtitle: Text(invoicelist[index].price!,style: TextStyle(fontSize:26),),
              trailing: Text(invoicelist[index].category! ,style: TextStyle(fontSize:20),),
            )),
        
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            invoicelist.add(InvoiceModel(name: 'vivo',price: '14,500',category: 'Mobile-y21')
            );
          });
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
List invoicelist=[

  InvoiceModel(name: 'Oppo',price: '10,500',category: 'Mobile-A30'),
  InvoiceModel(name: 'MI',price: '9,999',category: 'Mobile'),
  InvoiceModel(name: 'One +',price: '1,04,000',category: 'Mobile-Note11'),
  InvoiceModel(name: 'Apple Iphone',price: '1,45,000',category: 'Mobile-15 Promax'),
];
class InvoiceModel
{


  String? name;
  String? price;
  String? category;
  InvoiceModel({this.name,this.price,this.category});
}


Future <Uint8List> genratePdf(){
  final pdf=pw.Document();
  pdf.addPage(
      pw.Page(
    pageFormat:PdfPageFormat.a4,
        build: (Context)=>pw.Column(
          children: List.generate(invoicelist.length, (index) => pw.Text('${invoicelist[index].name!},  ${invoicelist[index].price!}   ${invoicelist[index].category!}\n\n\n',style: pw.TextStyle(fontSize: 24)),)
        )

  ));return pdf.save();
}


  `````     




</p>
  <h1 align="center">#️⃣Dialog Box#️⃣</h1>
  <P>
   <img src="https://github.com/harshdusane2103/quote_app_daily_task/blob/master/Basic.png" width=21%,heigth=35%>
    <img src="https://github.com/harshdusane2103/quote_app_daily_task/blob/master/full.png" width=21%,heigth=35%>
    <img src="https://github.com/harshdusane2103/quote_app_daily_task/blob/master/fuu.png" width=21%,heigth=35%>
    <video src="https://github.com/harshdusane2103/quote_app_daily_task/assets/161817658/0414f69a-29a1-4804-bb95-631f2f4bf77e">




  </P>
  
    <h1 align="center">#️⃣Random Quotes Generator#️⃣</h1>
  <P>
   <img src="https://github.com/harshdusane2103/quote_app_daily_task/blob/master/q1.jpg" width=21%,heigth=35%>
    <img src="https://github.com/harshdusane2103/quote_app_daily_task/blob/master/q2.jpg" width=21%,heigth=35%>
    <img src="https://github.com/harshdusane2103/quote_app_daily_task/blob/master/q3.jpg" width=21%,heigth=35%>
    <video src="https://github.com/harshdusane2103/quote_app_daily_task/assets/161817658/a57facf1-a345-4d33-b9cc-83bf39231a17">
</P>
      
     
    <h1 align="center">#️⃣Listview to Gridview Toggle View#️⃣</h1>
  <P>
   <img src="https://github.com/harshdusane2103/quote_app_daily_task/blob/master/grid.png" width=21%,heigth=35%>
    <img src="https://github.com/harshdusane2103/quote_app_daily_task/blob/master/gridtoo.png" width=21%,heigth=35%>
  
    <video src="https://github.com/harshdusane2103/quote_app_daily_task/assets/161817658/233e0790-434e-479e-9cea-a05af4bc1478">
</P>



l
