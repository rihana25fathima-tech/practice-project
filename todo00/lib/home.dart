import 'package:flutter/material.dart';
import 'package:todo00/model/model.dart';
import 'package:todo00/service/service.dart';

class Homepage extends StatefulWidget {
  const new({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final service = Todoservice();

  List<Todomodel> mode = [];

  TextEditingController titilecontroller = TextEditingController();
  TextEditingController descriptioncontroller = TextEditingController();

  void saveddata() async {
    final todomodel = Todomodel(
      title: titilecontroller.text,
      description: descriptioncontroller.text,
    );
    await service.savedtodo(todomodel);
    titilecontroller.clear();
    descriptioncontroller.clear();
    setState(() {
      getlist();
    });
  }

  void getlist() {
    mode = service.listt();
  }

  //show
 void show() {
  showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),

        title: Text(
          "Enter your details",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),

        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [

            // Title
            TextField(
              controller: titilecontroller,
              decoration: InputDecoration(
                hintText: "Enter title",
                prefixIcon: Icon(Icons.description_outlined),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),

            SizedBox(height: 12),

            // Description
            TextField(
              controller: descriptioncontroller,
              maxLines: 3,
              decoration: InputDecoration(
                hintText: "Enter description",
                prefixIcon: Icon(Icons.list_alt),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
          ],
        ),

        actions: [
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                saveddata();
                Navigator.pop(context);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.deepPurpleAccent,
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                padding: EdgeInsets.symmetric(vertical: 12),
              ),
              child: Text("Save"),
            ),
          ),
        ],
      );
    },
  );
}

  @override
  void initState() {
    super.initState();
    getlist();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 179, 176, 242),
        title: Text(
          "Todo App",
          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 24),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.wb_sunny_outlined,
              size: 26,
              color: Color.fromARGB(213, 23, 43, 107),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: ListView.builder(
          itemCount: mode.length,
          itemBuilder: (context, index) {
            return Container(
              margin: EdgeInsets.only(bottom: 12),
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(18),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 8,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.check_circle_outline,
                    color: Color(0xFF6C63FF),
                    size: 28,
                  ),

                  const SizedBox(width: 12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          mode[index].title,
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),

                        const SizedBox(height: 5),

                        Text(
                          mode[index].description,
                          style: TextStyle(fontSize: 14, color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                  Icon(Icons.more_vert, color: Colors.grey),
                ],
              ),
            );
          },
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          show();
        },
        backgroundColor: Color(0xFF6C63FF),
        child: Icon(Icons.add, color: Colors.white),
      ),
    );
  }
}
