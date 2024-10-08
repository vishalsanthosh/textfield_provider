import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:textinputprovider/textprovider.dart';

class TextInputProvider extends StatefulWidget {

  @override
  State<TextInputProvider> createState() => _TextInputProviderState();
}

class _TextInputProviderState extends State<TextInputProvider> {
  @override
  Widget build(BuildContext context) {
    final textprovider=Provider.of<TextProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Text Input provider"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                onChanged: textprovider.changeText,
                decoration: InputDecoration(border: OutlineInputBorder(),hintText:"type here"),
                
                
              ),
              SizedBox(height: 50,),
              Text("you typed:${textprovider.text}")
              
            ],
          ),
        ),
      ),
    );
  }
}