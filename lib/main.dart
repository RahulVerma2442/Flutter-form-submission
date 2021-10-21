import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'package:http/http.dart' as http;
import 'package:sampleproject/test.dart';
void main() {
  runApp(const MyApp());
}

Future<http.Response> createUser(
       String namef,
      String idf ,
       String graduf ,
           String emailf ,
        String contactf, String ugdepartf
, String gpaf, String ugcollegef, String ugcollegetierf
,String gradyearf, String backf, String fulltimef
,String internf , String questf,String greidf ,String gretypef
, String grescoref, String quantf , String berbalf ,String awaf
, String langidf, String langtestf , String langttf
,String tscoref, String s1 , String s2, String s3 ,String s4 , String  resumef,
       String mentoryf
    ) async{
      final String apiurl = "https://www.welivdit.app/api/MenteeDetails";



      Uri uri = Uri.parse(apiurl);
      Map<String, String> headers = {HttpHeaders.contentTypeHeader: "application/json"};
      Map<String, dynamic> data = {

          // "id": 245,
          // "name": "rahultest",
          // "graduateCourse": "ComputerScienceengineering",
          // "email": "test@test.com",
          // "contact": "9784563210",
          // "ugDepartment": "ComputerScienceengineering",
          // "gpa": "1",
          // "ugCollege": "nit test",
          // "ugCollegetier": "Tier1",
          // "graduationYear": "2010-01-06",
          // "backlogs": "1",
          // "fulltimeExperience": "1",
          // "internshipExperience": "1",
          // "questions": "test",
          // "gredetails": {
          //   "greid": 244,
          //   "gretype": "MOCK",
          //   "greScore": "260",
          //   "quantScore": "130",
          //   "verbalScore": "130",
          //   "awaScore": "1"
          // },
          // "languagetestdetails": {
          //   "languageid": 242,
          //   "languagetest": "TOEFL",
          //   "languageTestType": "MOCK",
          //   "testScore": "1111",
          //   "section1Score": "1",
          //   "section2Score": "1",
          //   "section3Score": "1",
          //   "section4Score": "1"
          // },
          // "resume": "https://drive.google.com/file/d/1G8rT5m41dcKW4A-56cQ72tPb5I72WOk_/view?usp=sharing",
          // "mentorType": "test"


        "id": "255",
        "name": namef,
        "graduateCourse": graduf,
        "email": emailf,
        "contact": contactf,
        "ugDepartment": ugdepartf,
        "gpa": gpaf,
        "ugCollege": ugcollegef,
        "ugCollegetier": ugcollegetierf,
        "graduationYear": gradyearf,
        "backlogs": backf,
        "fulltimeExperience": fulltimef,
        "internshipExperience": internf,
        "questions": questf,
        "gredetails": {
          "greid": greidf,
          "gretype": gretypef,
          "greScore": grescoref,
          "quantScore": quantf,
          "verbalScore": berbalf,
          "awaScore": awaf
        },
        "languagetestdetails": {
          "languageid": langidf,
          "languagetest": langtestf,
          "languageTestType": langttf,
          "testScore": tscoref,
          "section1Score": s1,
          "section2Score": s2,
          "section3Score": s3,
          "section4Score": s4
        },
        "resume": resumef,
        "mentorType": mentoryf

      };
      print(jsonEncode(data));
      final response = await http.post(uri,headers: headers,body:jsonEncode(data));

      print(response.statusCode);
      return response;
}


class MyApp extends StatelessWidget {



  const MyApp({Key? key}) : super(key: key);
  static TextEditingController id = TextEditingController();
  static TextEditingController name = TextEditingController();
  static TextEditingController graduatecourse = TextEditingController();
  static TextEditingController email = TextEditingController();
  static TextEditingController contact = TextEditingController();
  static TextEditingController ugdepartment = TextEditingController();
  static TextEditingController gpa = TextEditingController();
  static TextEditingController ugcollege = TextEditingController();
  static TextEditingController ugcollegetier = TextEditingController();
  static TextEditingController graduationyear = TextEditingController();
  static TextEditingController backlogs = TextEditingController();
  static TextEditingController fulltimeexperience = TextEditingController();
  static TextEditingController internshipexperience = TextEditingController();
  static TextEditingController questions = TextEditingController();
  static TextEditingController greid = TextEditingController();
  static TextEditingController  gretype= TextEditingController();
  static TextEditingController grescore = TextEditingController();
  static TextEditingController quant = TextEditingController();
  static TextEditingController verbal = TextEditingController();
  static TextEditingController awa = TextEditingController();
  static TextEditingController langid = TextEditingController();
  static TextEditingController langtest = TextEditingController();
  static TextEditingController langtesttype = TextEditingController();
  static TextEditingController testscore = TextEditingController();
  static TextEditingController score1 = TextEditingController();
  static TextEditingController score2 = TextEditingController();
  static TextEditingController score3 = TextEditingController();
  static TextEditingController score4 = TextEditingController();
  static TextEditingController resume = TextEditingController();
  static TextEditingController mentortype = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text("App Title"),
            backgroundColor: Colors.red[900],
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children:  [
                  TextField(
                    controller: id,
                    decoration: InputDecoration(
                      hintText: "id",
                      labelText: "id",
                      labelStyle: TextStyle(color: Colors.blue)
                    ),
                  ),
                  SizedBox(height: 10,),
                  TextField(
                    controller: name,
                    decoration: InputDecoration(
                        hintText: "name",
                        labelText: "name",
                        labelStyle: TextStyle(color: Colors.blue)
                    ),
                  ),
                  SizedBox(height: 10,),
                  TextField(
                    controller: graduatecourse,
                    decoration: InputDecoration(
                        labelText: "Graduate Course",
                        hintText: "ComputerScienceEngineering",
                        labelStyle: TextStyle(color: Colors.blue)
                    ),
                  ),
                  SizedBox(height: 10,),
                  TextField(
                    controller: email,
                    decoration: InputDecoration(
                        labelText: "Email",
                        hintText: "email",
                        labelStyle: TextStyle(color: Colors.blue)
                    ),
                  ),
                  SizedBox(height: 10,),
                  TextField(
                    controller: contact,
                    decoration: InputDecoration(
                        labelText: "Contact",
                        hintText: "phone",
                        labelStyle: TextStyle(color: Colors.blue)
                    ),
                  ),
                  SizedBox(height: 10,),
                  TextField(
                    controller: ugdepartment,
                    decoration: InputDecoration(
                        labelText: "ugdepartment",
                        hintText: "ComputerScienceengineering",
                        labelStyle: TextStyle(color: Colors.blue)
                    ),
                  ),
                  SizedBox(height: 10,),TextField(
                    controller: gpa,
                    decoration: InputDecoration(
                        labelText: "gpa",
                        hintText: "1",
                        labelStyle: TextStyle(color: Colors.blue)
                    ),
                  ),
                  SizedBox(height: 10,),
                  TextField(
                    controller: ugcollege,
                    decoration: InputDecoration(
                        labelText: "ugCollege",
                        hintText: "test",
                        labelStyle: TextStyle(color: Colors.blue)
                    ),
                  ),
                  SizedBox(height: 10,),
                  TextField(
                    controller: ugcollegetier,
                    decoration: InputDecoration(
                        labelText: "UgCollegeTier",
                        hintText: "Tier1",
                        labelStyle: TextStyle(color: Colors.blue)
                    ),
                  ),
                  SizedBox(height: 10,),
                  TextField(
                    controller: graduationyear,
                    decoration: InputDecoration(
                        labelText: "Graduation Year",
                        hintText: "2010-01-06",
                        labelStyle: TextStyle(color: Colors.blue)
                    ),
                  ),
                  SizedBox(height: 10,),
                  TextField(
                    controller: backlogs,
                    decoration: InputDecoration(
                        labelText: "backlogs",
                        hintText: "1",
                        labelStyle: TextStyle(color: Colors.blue)
                    ),
                  ),
                  SizedBox(height: 10,),
                  TextField(
                    controller: fulltimeexperience,
                    decoration: InputDecoration(
                        hintText: "1",
                        labelText: "fulltimeexperience",
                        labelStyle: TextStyle(color: Colors.blue)
                    ),
                  ),
                  SizedBox(height: 10,),TextField(
                    controller: questions,
                    decoration: InputDecoration(
                        hintText: "test",
                        labelText: "questions",
                        labelStyle: TextStyle(color: Colors.blue)
                    ),
                  ),
                  SizedBox(height: 10,),TextField(
                    controller: langtesttype ,
                    decoration: InputDecoration(
                        hintText: "1",
                        labelText: "languagetesttype",
                        labelStyle: TextStyle(color: Colors.blue)
                    ),
                  ),
                  SizedBox(height: 10,),TextField(
                    controller: greid,
                    decoration: InputDecoration(
                        hintText: "244",
                        labelText: "greid",
                        labelStyle: TextStyle(color: Colors.blue)
                    ),
                  ),
                  SizedBox(height: 10,),TextField(
                    controller: gretype,
                    decoration: InputDecoration(
                        hintText: "mock",
                        labelText: "gretype",
                        labelStyle: TextStyle(color: Colors.blue)
                    ),
                  ),
                  SizedBox(height: 10,),TextField(
                    controller: grescore,
                    decoration: InputDecoration(
                        hintText: "260",
                        labelText: "grescore",
                        labelStyle: TextStyle(color: Colors.blue)
                    ),
                  ),
                  SizedBox(height: 10,),TextField(
                    controller: quant,
                    decoration: InputDecoration(
                        hintText: "130",
                        labelText: "quantscore",
                        labelStyle: TextStyle(color: Colors.blue)
                    ),
                  ),
                  SizedBox(height: 10,),TextField(
                    controller: verbal,
                    decoration: InputDecoration(
                        hintText: "130",
                        labelText: "berbalscore",
                        labelStyle: TextStyle(color: Colors.blue)
                    ),
                  ),
                  SizedBox(height: 10,),TextField(
                    controller: awa,
                    decoration: InputDecoration(
                        hintText: "1",
                        labelText: "awascore",
                        labelStyle: TextStyle(color: Colors.blue)
                    ),
                  ),

                  SizedBox(height: 10,),TextField(
                    controller: langid,
                    decoration: InputDecoration(
                        hintText: "242",
                        labelText: "languageid",
                        labelStyle: TextStyle(color: Colors.blue)
                    ),
                  ),
                  SizedBox(height: 10,),TextField(
                    controller: langtest,
                    decoration: InputDecoration(
                        hintText: "TOEFL",
                        labelText: "languagetest",
                        labelStyle: TextStyle(color: Colors.blue)
                    ),
                  ),
                  SizedBox(height: 10,),TextField(
                    controller: langtest,
                    decoration: InputDecoration(
                        hintText: "Mock",
                        labelText: "language type",
                        labelStyle: TextStyle(color: Colors.blue)
                    ),
                  ),
                  SizedBox(height: 10,),TextField(
                    controller: testscore,
                    decoration: InputDecoration(
                        hintText: "1111",
                        labelText: "testscore",
                        labelStyle: TextStyle(color: Colors.blue)
                    ),
                  ),
                  SizedBox(height: 10,),TextField(
                    controller: score1,
                    decoration: InputDecoration(
                        hintText: "1",
                        labelText: "section1score",
                        labelStyle: TextStyle(color: Colors.blue)
                    ),
                  ),
                  SizedBox(height: 10,),TextField(
                    controller: score2,
                    decoration: InputDecoration(
                        hintText: "1",
                        labelText: "section2score",
                        labelStyle: TextStyle(color: Colors.blue)
                    ),
                  ),
                  SizedBox(height: 10,),TextField(
                    controller: score3,
                    decoration: InputDecoration(
                        hintText: "1",
                        labelText: "section3score",
                        labelStyle: TextStyle(color: Colors.blue)
                    ),
                  ),
                  SizedBox(height: 10,),TextField(
                    controller: score4,
                    decoration: InputDecoration(
                        hintText: "1",
                        labelText: "section4score",
                        labelStyle: TextStyle(color: Colors.blue)
                    ),
                  ),
                  SizedBox(height: 10,),TextField(
                    controller: resume,
                    decoration: InputDecoration(
                        hintText: "abc",
                        labelText: "resume",
                        labelStyle: TextStyle(color: Colors.blue)
                    ),
                  ),
                  SizedBox(height: 10,),TextField(
                    controller: mentortype,
                    decoration: InputDecoration(
                        hintText: "test",
                        labelText: "mentortype",
                        labelStyle: TextStyle(color: Colors.blue)
                    ),
                  ),
                  SizedBox(height: 10,),TextField(
                    controller: internshipexperience,
                    decoration: InputDecoration(
                        hintText: "1",
                        labelText: "internexperience",
                        labelStyle: TextStyle(color: Colors.blue)
                    ),
                  )



                ],
              ),
            ),
          ),
        floatingActionButton: FloatingActionButton(
          onPressed: () async {
            final String namef = name.text;
            final String idf = id.text;
            final String graduf = graduatecourse.text;
            final String emailf = email.text;
            final String contactf = contact.text;
            final String ugdepartf = ugdepartment.text;
            final String gpaf = gpa.text;
            final String ugcollegef = ugcollege.text;
            final String ugcollegetierf = ugcollegetier.text;
            final String gradyearf = graduationyear.text;
            final String backf = backlogs.text;
            final String fulltimef = fulltimeexperience.text;
            final String internf = internshipexperience.text;
            final String questf = questions.text;
            final String greidf = greid.text;
            final String gretypef = gretype.text;
            final String grescoref = grescore.text;
            final String quantf = quant.text;
            final String berbalf = verbal.text;
            final String awaf = awa.text;
            final String langidf = langid.text;
            final String langtestf = langtest.text;
            final String langttf = langtesttype.text;
            final String tscoref = testscore.text;
            final String s1 = score1.text;
            final String s2 = score2.text;
            final String s3 = score3.text;
            final String s4 = score4.text;
            final String  resumef= resume.text;
            final String mentoryf = mentortype.text;
            http.Response temp = await createUser(namef,idf,graduf,emailf,contactf,ugdepartf,gpaf,ugcollegef,ugcollegetierf,gradyearf,backf,fulltimef,internf,questf,greidf,
            gretypef,grescoref,quantf,berbalf,awaf,langidf,langtestf,langttf,tscoref,s1,s2,s3,s4,resumef,mentoryf);
            Fluttertoast.showToast(msg: "response code ${temp.statusCode}");

          },
        ),
      ),
    );
  }
}


