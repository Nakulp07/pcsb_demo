import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pcsb_demo/data/xenia_events_data.dart';
import 'package:pcsb_demo/features/Event/models/event_data_model.dart';
import 'package:pcsb_demo/features/Event/ui/card_ui.dart';
import 'package:url_launcher/url_launcher.dart';

class Eventtile extends StatelessWidget {
  const Eventtile({Key? key, required this.title, required this.description})
      : super(key: key);

  final String title;
  final String description;

  _launchURL(String _url) async {
    final Uri url = Uri.parse('https://flutter.dev');
    if (!await launchUrl(url)) {
      throw Exception('Could not launch $_url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showDialog(
            context: context,
            builder: (context) {
              return Dialog(
                backgroundColor: Color.fromRGBO(207, 176, 242, 1),
                shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(20.0)), //this right here
                child: Container(
                  height: 400,
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          title,
                          style: TextStyle(fontSize: 30),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          description,
                          style: TextStyle(fontSize: 20),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        ElevatedButton(
                          onPressed: null,
                          // _launchURL('https://www.pcsbxenia.com/events'),
                          child: Text(
                            'Website Link',
                            style: TextStyle(color: Colors.black),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              );
              // AlertDialog(
              //   title: Text(title),
              //   content: Text(description),
              //   actions: [
              //     TextButton(
              //         onPressed: () {
              //           Navigator.pop(context);
              //         },
              //         child: Text('back'))
              //   ],
              // );
            });
      },
      child: Stack(
        alignment: Alignment.topCenter,
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 60),
              Container(
                height: 100,
                width: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Color.fromRGBO(42, 45, 52, 0.9),
                ),
                alignment: Alignment.bottomCenter,
                padding: EdgeInsets.only(bottom: 15),
                child: Text(
                  title,
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
            ],
          ),
          Positioned(
            child: Container(
              margin: EdgeInsets.all(10),
              height: 90,
              width: 90,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Color.fromRGBO(42, 45, 52, 0.9),
                image: DecorationImage(
                  image: NetworkImage(
                      'https://d1csarkz8obe9u.cloudfront.net/posterpreviews/tech-event-motion-poster-design-template-93679873ffd20b2872af4da04c4cbe5e.jpg?ts=1567082214'), // Replace with your image URL
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// child: Center(
// child: Column(
// mainAxisAlignment: MainAxisAlignment.center,
// children: [
// Image.network(
// 'https://example.com/your_image_url.png', // Replace with your image URL
// width: 100, // Set the desired width
// height: 100, // Set the desired height
// fit: BoxFit.cover,
// ),
// SizedBox(height: 10),
// Text(
// 'Xenia event',
// style: TextStyle(color: Colors.white),
// ),
// ],
// ),
// ),
