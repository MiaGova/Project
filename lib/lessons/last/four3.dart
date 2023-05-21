import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'First.dart';
void main(List<String>args){
  runApp(MaterialApp(debugShowCheckedModeBanner: false,
  home: MyWidget(),));
}
class MyWidget extends StatefulWidget {
  const MyWidget({Key? key}) : super(key: key);

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  bool check = false;
  bool checkitem = false;
  String a = "Dasoguz";
  bool checkdata = false;
  double counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          InkWell(
            onTap: (){
              showDialog(context: context, builder: (BuildContext contex){
                return AlertDialog(
                 backgroundColor: Colors.purpleAccent,
                 title: Row(
                   children: [
                     CircleAvatar(
                       backgroundImage: NetworkImage("https://cdn.pixabay.com/photo/2018/08/14/13/23/ocean-3605547__480.jpg"),
                ) ,
                     Text('Dashoguz welayat'),
                   ],
                 ),
                  content: SingleChildScrollView(
                    child: Column(
                      children: [
                        Text("""The cat (Felis catus) is a domestic species of small carnivorous mammal.[1][2] It is the only domesticated species in the family Felidae and is commonly referred to as the domestic cat or house cat to distinguish it from the wild members of the family.[4] Cats are commonly kept as house pets but can also be farm cats or feral cats; the feral cat ranges freely and avoids human contact.[5] Domestic cats are valued by humans for companionship and their ability to kill rodents. About 60 cat breeds are recognized by various cat registries.[6]
                      
                      The cat is similar in anatomy to the other felid species: it has a strong flexible body, quick reflexes, sharp teeth, and retractable claws adapted to killing small prey like mice and rats. Its night vision and sense of smell are well developed. Cat communication includes vocalizations like meowing, purring, trilling, hissing, growling, and grunting as well as cat-specific body language. Although the cat is a social species, it is a solitary hunter. As a predator, it is crepuscular, i.e. most active at dawn and dusk. It can hear sounds too faint or too high in frequency for human ears, such as those made by mice and other small mammals.[7] It also secretes and perceives pheromones.[8]
                      
                      Female domestic cats can have kittens from spring to late autumn, with litter sizes often ranging from two to five kittens.[9] Domestic cats are bred and shown at events as registered pedigreed cats, a hobby known as cat fancy. Population control of cats may be achieved by spaying and neutering, but their proliferation and the abandonment of pets has resulted in large numbers of feral cats worldwide, contributing to the extinction of entire bird, mammal, and reptile species.[10]
                      
                      It was long thought that cat domestication began in ancient Egypt, where cats were venerated from around 3100 BC,[11][12] but recent advances in archaeology and genetics have shown that their domestication occurred in Western Asia around 7500 BC.[13]
                      
                      As of 2021, there were an estimated 220 million owned and 480 million stray cats in the world.[14][15] As of 2017, the domestic cat was the second most popular pet in the United States, with 95.6 million cats owned[16][17][18] and around 42 million households owning at least one cat.[19] In the United Kingdom, 26% of adults have a cat, with an estimated population of 10.9 million pet cats as of 2020.[20]
                      
                      Etymology and naming
                      The origin of the English word cat, Old English catt, is thought to be the Late Latin word cattus, which was first used at the beginning of the 6th century.[21] It was suggested that cattus is derived from an Egyptian precursor of Coptic ϣⲁⲩ šau, 'tomcat', or its feminine form suffixed with -t.[22] The Late Latin word may be derived from another Afro-Asiatic[23] or Nilo-Saharan language. The Nubian word kaddîska 'wildcat' and Nobiin kadīs are possible sources or cognates.[24] The Nubian word may be a loan from Arabic قَطّ‎ qaṭṭ ~ قِطّ qiṭṭ.
                      
                      However, it is "equally likely that the forms might derive from an ancient Germanic word, imported into Latin and thence to Greek and to Syriac and Arabic".[25] The word may be derived from Germanic and Northern European languages, and ultimately be borrowed from Uralic, cf. Northern Sami gáđfi, 'female stoat', and Hungarian hölgy, 'lady, female stoat'; from Proto-Uralic *käďwä, 'female (of a furred animal)'.[26]
                      
                      The English puss, extended as pussy and pussycat, is attested from the 16th century and may have been introduced from Dutch poes or from Low German puuskatte, related to Swedish kattepus, or Norwegian pus, pusekatt. Similar forms exist in Lithuanian puižė and Irish puisín or puiscín. The etymology of this word is unknown, but it may have arisen from a sound used to attract a cat.[27][28]
                      
                      A male cat is called a tom or tomcat[29] (or a gib,[30] if neutered). A female is called a queen[31] (or a molly,[32][user-generated source?] if spayed), especially in a cat-breeding context. A juvenile cat is referred to as a kitten. In Early Modern English, the word kitten was interchangeable with the now-obsolete word catling.[33] A group of cats can be referred to as a clowder or a glaring.[34]
                      
                      TaxonomyThe cat (Felis catus) is a domestic species of small carnivorous mammal.[1][2] It is the only domesticated species in the family Felidae and is commonly referred to as the domestic cat or house cat to distinguish it from the wild members of the family.[4] Cats are commonly kept as house pets but can also be farm cats or feral cats; the feral cat ranges freely and avoids human contact.[5] Domestic cats are valued by humans for companionship and their ability to kill rodents. About 60 cat breeds are recognized by various cat registries.[6]
                      
                      The cat is similar in anatomy to the other felid species: it has a strong flexible body, quick reflexes, sharp teeth, and retractable claws adapted to killing small prey like mice and rats. Its night vision and sense of smell are well developed. Cat communication includes vocalizations like meowing, purring, trilling, hissing, growling, and grunting as well as cat-specific body language. Although the cat is a social species, it is a solitary hunter. As a predator, it is crepuscular, i.e. most active at dawn and dusk. It can hear sounds too faint or too high in frequency for human ears, such as those made by mice and other small mammals.[7] It also secretes and perceives pheromones.[8]
                      
                      Female domestic cats can have kittens from spring to late autumn, with litter sizes often ranging from two to five kittens.[9] Domestic cats are bred and shown at events as registered pedigreed cats, a hobby known as cat fancy. Population control of cats may be achieved by spaying and neutering, but their proliferation and the abandonment of pets has resulted in large numbers of feral cats worldwide, contributing to the extinction of entire bird, mammal, and reptile species.[10]
                      
                      It was long thought that cat domestication began in ancient Egypt, where cats were venerated from around 3100 BC,[11][12] but recent advances in archaeology and genetics have shown that their domestication occurred in Western Asia around 7500 BC.[13]
                      
                      As of 2021, there were an estimated 220 million owned and 480 million stray cats in the world.[14][15] As of 2017, the domestic cat was the second most popular pet in the United States, with 95.6 million cats owned[16][17][18] and around 42 million households owning at least one cat.[19] In the United Kingdom, 26% of adults have a cat, with an estimated population of 10.9 million pet cats as of 2020.[20]
                      
                      Etymology and naming
                      The origin of the English word cat, Old English catt, is thought to be the Late Latin word cattus, which was first used at the beginning of the 6th century.[21] It was suggested that cattus is derived from an Egyptian precursor of Coptic ϣⲁⲩ šau, 'tomcat', or its feminine form suffixed with -t.[22] The Late Latin word may be derived from another Afro-Asiatic[23] or Nilo-Saharan language. The Nubian word kaddîska 'wildcat' and Nobiin kadīs are possible sources or cognates.[24] The Nubian word may be a loan from Arabic قَطّ‎ qaṭṭ ~ قِطّ qiṭṭ.
                      
                      However, it is "equally likely that the forms might derive from an ancient Germanic word, imported into Latin and thence to Greek and to Syriac and Arabic".[25] The word may be derived from Germanic and Northern European languages, and ultimately be borrowed from Uralic, cf. Northern Sami gáđfi, 'female stoat', and Hungarian hölgy, 'lady, female stoat'; from Proto-Uralic *käďwä, 'female (of a furred animal)'.[26]"""),

                      ],
                    ),
                  ),
                  titleTextStyle: TextStyle(color: Colors.white),
                  actions: [
                    TextButton(onPressed: (){
                      SystemNavigator.pop();
                    },
                        child: Text('hava')),
                    TextButton(onPressed: (){
                      Navigator.pop(context);
                    },
                        child: Text('yok'))
                  ],
                );
              });
            },
            child: Text('Go to the first page',
              style: TextStyle(fontSize: 20),),
          ),
          CheckboxListTile(
              title: Text('kabul edyanizmi'),
              controlAffinity: ListTileControlAffinity.leading,
              checkColor: Colors.white,
              activeColor: Colors.purpleAccent,
              value: check,
              onChanged: (val){
                debugPrint(val.toString());
                check = val!;
                setState(() {

                });
              }),
          RadioListTile(
              title: Text("Dasoguz"),
              value: "Dasoguz",
              groupValue: a,
              onChanged: (value) {
                a = value!;
                setState(() {});
              }),
          SwitchListTile(
              title: Text("Barla"),
              value: checkdata,
              onChanged: (val) {
                checkdata = val;
                setState(() {});
              }),
          Slider(
              value: counter,
              max: 10,
              onChanged: (val) {
                counter = val;
                setState(() {});
                Text(counter.toString());
              }),
        ],
      ),
      floatingActionButton: Align(
        alignment: Alignment.bottomLeft,
        child: FloatingActionButton.large(onPressed: (){},
        focusElevation: 100,
          backgroundColor: Colors.purpleAccent,
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
class Firstpage extends StatefulWidget {
  const Firstpage({Key? key}) : super(key: key);

  @override
  State<Firstpage> createState() => _FirstpageState();
}

class _FirstpageState extends State<Firstpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          InkWell(
            child: Text('First page',
            style: TextStyle(fontSize: 20),),
            onTap: (){
              Navigator.pushAndRemoveUntil(context,
                  MaterialPageRoute(builder: (context)=>ListVi()), (Route rout) => false);
            },
          ),
          InkWell(
            onTap: (){
              Navigator.pop(context);
            },
            child: Text(
              'Go to back',style: TextStyle(fontSize: 20),
            ),
          )
        ],
      ),
    );
  }
}


