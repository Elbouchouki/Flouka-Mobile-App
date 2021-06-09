import 'package:flutter/material.dart';

class Details extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(
            Icons.arrow_back_ios,
          ),
        ),
        backgroundColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.3,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/cat1.jpg"),
                    fit: BoxFit.cover),
              ),
              child: SafeArea(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.25),
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(50)),
              child: Padding(
                padding: const EdgeInsets.all(30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Align(),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Dorade",
                      style: TextStyle(fontSize: 20, height: 1.5),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: <Widget>[],
                    ),
                    Row(
                      children: <Widget>[
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey),
                              borderRadius: BorderRadius.circular(10)),
                          child: Padding(
                            padding: const EdgeInsets.all(6.0),
                            child: Text("Poissons Congelés"),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey),
                              borderRadius: BorderRadius.circular(10)),
                          child: Padding(
                            padding: const EdgeInsets.all(6.0),
                            child: Text("Poissons Nobles"),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(6.0),
                            child: Text("Dorade"),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      "Description",
                      style: TextStyle(fontSize: 16, color: Colors.indigo),
                    ),
                    SizedBox(
                      height: 7,
                    ),
                    Text(
                      "Poisson marin de couleur gris argenté, au corps ovale comprimé latéralement et au front bombé, broyeur de coquillages grâce à une forte dentition, vivant essentiellement dans les eaux chaudes et tempérées de l'Atlantique Est et de la Méditerranée (rare en mer Noire), dit daurade royale.",
                      style: TextStyle(height: 1.6),
                    ),
                    SizedBox(
                      height: 100,
                    ),
                    Align(
                      // ignore: deprecated_member_use
                      child: FloatingActionButton.extended(
                        onPressed: () {
                          // Add your onPressed code here!
                        },
                        label: const Text('Ajouter au panier'),
                        icon: const Icon(Icons.shopping_cart),
                        backgroundColor: Colors.indigo,
                      ),
                      alignment: Alignment.topCenter,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
