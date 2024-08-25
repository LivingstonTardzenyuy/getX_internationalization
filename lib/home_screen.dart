import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_common/get_reset.dart';
import 'package:get/get_core/src/get_main.dart';

import 'cheater_translation.dart';
import 'next_page.dart';


class Home extends StatelessWidget {

  final locales = [
    {
      "name": "English",
      "locale": Locale("en", 'US')
    },
    {
      "name": "French",
      "locale": Locale("fr", '	FR')
    }
  ];

  showLocalDialog(BuildContext context){
    showDialog(context: context, builder: (_) => AlertDialog(
      title: Text('Choose your language'),
      content: Container(
        width: double.maxFinite,
        child: ListView.separated(
            shrinkWrap: true,
            itemBuilder:(context, index) => InkWell(
              child: Text(locales[index]['name'].toString()),
              onTap: () => {
                updateLocale(locales[index]['locale'] as Locale,context)
              },
            ),
            separatorBuilder: (context, index) => Divider(
              color: Colors.yellow,
            ),
            itemCount: 2),
      )
    ));
  }

  updateLocale(Locale locale, BuildContext context){
    Navigator.of(context).pop();
    Get.updateLocale(locale);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(LocalKeys.welcome.tr)
      ),
      body: Container(
        color: Colors.black,
        padding: const EdgeInsets.all(16),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                LocalKeys.easy_lang_tran.tr,
                style: TextStyle(
                  fontSize: 46,
                  color: Colors.white
                ),
                textAlign: TextAlign.center,
              ),

              const SizedBox(height: 20,),
              InkWell(
                onTap: (){
                  Navigator.push(
                    context, MaterialPageRoute(builder: (context) => NextPage()));
                },
                child: Container(
                  width: 230,
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.blue
                  ),
                  child: Center(
                    child: Text(
                      LocalKeys.next_page.tr,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 17
                      ),
                    ),

                  ),
                ),
              ),
              const SizedBox(height: 25,),
              InkWell(
                onTap: (){
                  showLocalDialog(context);
                  print('You press me');
                },
                child: Container(
                  width: 230,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.blue
                  ),
                  child: Center(
                    child: Text(
                      LocalKeys.change_lang.tr,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 17
                      ),
                    ),

                  ),
                ),
              )
            ],
          ),
        ),
      )
    );
  }
}
