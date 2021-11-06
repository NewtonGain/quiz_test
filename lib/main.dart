import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'quiz.dart';


void main()=>runApp(MyApp());

class MyApp extends StatefulWidget {

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
final questions=[
  {
    'question':'What is your favorite color',
    'answers':['Black','White','Red','Blue']
  },
  {
    'question':'Her thinking leans ____ democracy.',
    'answers':['with','towards','for','None of these']
  },
  {
    'question':'He got too tired _____ over work.',
    'answers':['because of','because off','on','for']
  },
  {
    'question':'_____ his principles, he has to be very careful.',
    'answers':['with regard of','with regard on','with regard to','None of this']
  },
  {
    'question':'Building has been built _____ the new plan.',
    'answers':['accordance to','about','in accordance with','Blue']
  },
  {
    'question':'He crossed the broken bridge ____ warning.',
    'answers':['in spite of','in spite off','on','about']
  },
  {
    'question':'The train ____ as fast as the bus.',
    'answers':['went','running',' moves',' going']
  },
  {
    'question':'He was seen _____ to the school.',
    'answers':['went','going','gone','Blue']
  },
  {
    'question':'She ____ in the sun for 1 hour.',
    'answers':['sitting','has been sitting','has been sit','has sit']
  },
  {
    'question':'____ it help you in your studies ?',
    'answers':['will','was','is','are']
  },
  {
    'question':'I ____ never seen such a picture before.',
    'answers':['did','was','have','has']
  },
  {
    'question':'Words of same sound is ?',
    'answers':['Soundnyms','Antonyms','Homonyms','Blue']
  },
{
    'question':'Sounding the same but spelt differently ?',
    'answers':['Symphonious','Homophonous','Synonyms','Saminymous']
  },
{
    'question':'Choose the correct answer ?',
    'answers':['My friend has got a new job.',' My friend has got a new work.',' My friend is got a new job.','My friend did got a new job.']
  },
{
    'question':'Choose the correct sentence. ?',
    'answers':['Do you like a glass of water ?','Would you like a glass of water ?',' Would you like the glass of water ?','Do you like the glass of water ?']
  },
{
    'question':'Antonym of Ad-lib ?',
    'answers':['Improvise','Extemporized','Homonyms','Spontaneous']
  },
{
  'question':'Antonym of Imperil ?',
  'answers':['Safeguard','Endanger','Hazard','Jeopardise']
},

{
  'question':'Antonym of Inscrutable ?',
  'answers':['Baffling','Obvious','Confuse','Reduce']
},
{
  'question':'Antonym of Licentious ?',
  'answers':['Continent','Confused talk','Clear','Close']
},
{
  'question':'Antonym of Rabid ?',
  'answers':['Frantic','Sober','Chaos','Vulgar']
},
{
  'question':'Antonym of Ravenous ?',
  'answers':['Greedy','Very Hungry','Assuaged','None of these']
},
];

int _incrementQuestion=0;
void _questionUpdate(){
  setState(() {
    _incrementQuestion++;
  });
}
 Widget build(BuildContext context){
   return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: Text("Quiz App"),
            centerTitle: true,
          ),
          body: _incrementQuestion < questions.length
              ? Quiz(
                  questionList: questions,
                  questionFunction: _questionUpdate,
                  questionIncrement: _incrementQuestion,
                )
              : Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Quiz Completed"),
                    ],
                  ),
                )),
    );
  }
}

