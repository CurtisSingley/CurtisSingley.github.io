// import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;
//import 'package:particle_background/simple_animations_package.dart';

double cardSizeConstant = 500.0;
double lineSpacing = 1.5;

void main() => runApp(ParticleApp());

class ParticleApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Curtis Singley',
      theme: ThemeData(
        brightness: Brightness.light,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      themeMode: ThemeMode.dark,
      home: Scaffold(
          //body: ParticleBackgroundPage(),
          //   body: Center(
          // child: Text('Hello World'),
          body: ListView(children: [
        Wrap(
          children: [
            nameText,
            eduText,
            Divider(),
            weenixCard,
            webCrawlerCard,
            invertedIndexCard,
            solrCard,
            treeSearchCard,
            ticTacToeCard,
            goCard,
            weatherApp,
            rasterCard,
            aiCard,
            noticeText,
            Divider(),
            contactText,
            const MyStatefulWidget(),
          ],
          alignment: WrapAlignment.center,
        ),
      ])),
    );
  }
}

Widget nameText = Container(
  padding: EdgeInsets.fromLTRB(0, 20, 0, 10),
  width: double.infinity,
  child: Text(
    'Curtis Singley',
    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
    textAlign: TextAlign.center,
  ),
);

Widget eduText = Container(
  padding: EdgeInsets.fromLTRB(0, 0, 0, 5),
  width: double.infinity,
  child: Text(
    'University of Southern California - MS Computer Science\nVirginia Tech - BS Mechanical Engineering',
    style: TextStyle(
      fontStyle: FontStyle.italic,
    ),
    textAlign: TextAlign.center,
  ),
);

Widget noticeText = Container(
  padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
  width: double.infinity,
  child: Text(
    '* Source code available upon request',
    style: TextStyle(
      fontStyle: FontStyle.italic,
      fontSize: 12,
    ),
    textAlign: TextAlign.right,
  ),
);

Widget contactText = Container(
  padding: EdgeInsets.fromLTRB(30, 10, 10, 10),
  width: double.infinity,
  child: Text(
    'Contact',
    style: TextStyle(
      fontSize: 18,
    ),
  ),
);

Widget aiCard = Container(
  padding: const EdgeInsets.all(32),
  width: cardSizeConstant,
  child: Card(
    child: Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'Artificial Intelligence - MNIST',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          Divider(),
          Text(
            'Artificial neural network was coding from scratch in Python with no external libraries (e.g. tensorflow) to classify handwritten numbers from the MNIST numbers dataset. The multi-layer neural network classifies the test data after being fed training data. Back-propagation is used to correct the weights of each node as part of the training sequence. The results were around 96% accuracy.*',
            softWrap: true,
            style: TextStyle(
              height: lineSpacing,
            ),
          ),
        ],
      ),
    ),
  ),
);

Widget webCrawlerCard = Container(
  padding: const EdgeInsets.all(32),
  width: cardSizeConstant,
  child: Card(
    child: Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'Web Crawler',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          Divider(),
          Text(
            'Implemented a web crawler using Crawler4j to extract metadata from webpages. Programmatically kept track of unique ingoing and outgoing links. Multithreaded functionality is baked into Crawler4j for fast crawling. The process is to start at the root of a domain with a number of crawlers, collect page metadata such as content type and file sizes, follow URL links found on the page. Overall statistics were collected to get an overview of the domain.*',
            softWrap: true,
            style: TextStyle(
              height: lineSpacing,
            ),
          ),
        ],
      ),
    ),
  ),
);

Widget invertedIndexCard = Container(
  padding: const EdgeInsets.all(32),
  width: cardSizeConstant,
  child: Card(
    child: Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'Apache Hadoop - Inverted Index',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          Divider(),
          Text(
            'Created an inverted index based on text extracted from thousands of web pages. Used Hadoop\'s implementation of map reduce for fast indexing. Computation was done remotely through Google Cloud clusters.*',
            softWrap: true,
            style: TextStyle(
              height: lineSpacing,
            ),
          ),
        ],
      ),
    ),
  ),
);

Widget solrCard = Container(
  padding: const EdgeInsets.all(32),
  width: cardSizeConstant,
  child: Card(
    child: Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'Apache Solr with Lucene',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          Divider(),
          Text(
            'Performed full text searches on an inverted index with Apache Solr and Apache Lucene. The inverted index data was created using Hadoop. Solr and Lucene were run on a local server. Created a custom locally-hosted nginx server frontend for querying Solr/Lucene backend, and for displaying the results. Setup autocompletion on the frontend.*',
            softWrap: true,
            style: TextStyle(
              height: lineSpacing,
            ),
          ),
        ],
      ),
    ),
  ),
);

Widget treeSearchCard = Container(
  padding: const EdgeInsets.all(32),
  width: cardSizeConstant,
  child: Card(
    child: Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            '3D Shortest Path Algorithm',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          Divider(),
          Text(
            'Demonstrated BFS (breadth first search), UCS (uniform cost search), and A* (A star) algorithms written in Python, for finding the shortest path in a 3D space of a large directed graph. Performance for each algorithm was benchmarked on specific graphs in order to compare efficiency between them.*',
            softWrap: true,
            style: TextStyle(
              height: lineSpacing,
            ),
          ),
        ],
      ),
    ),
  ),
);

Widget ticTacToeCard = Container(
  padding: const EdgeInsets.all(32),
  width: cardSizeConstant,
  child: Card(
    child: Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'Tic Tac Toe - Monte Carlo',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          Divider(),
          Text(
            'Wrote a Monte Carlo Tree Search algorithm written in Python to solve tictactoe, and compete against other agents. The complexity of tictactoe is tractable, so a simple minmax algorithm is able to achieve perfect play in real-time, but I wrote this as a proof of concept. The Monte Carlo Tree Search agent was tested against a random agent and a minmax agent.*',
            softWrap: true,
            style: TextStyle(
              height: lineSpacing,
            ),
          ),
        ],
      ),
    ),
  ),
);

Widget goCard = Container(
  padding: const EdgeInsets.all(32),
  width: cardSizeConstant,
  child: Card(
    child: Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'Go board game - Monte Carlo',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          Divider(),
          Text(
            'Implemented a Monte Carlo Tree Search algorithm written in Python on a scaled-down version of the board game "Go". Even though the board size is smaller than that of the size of a normal Go board (19x19), the complexity is still intractable due to the number of possible board game states if given a limited time to make a move. An adjustible time is used so that when the specified time is passed, make the best current move according to the probabilities determined by the Monte Carlo Tree Search algorithm.*',
            softWrap: true,
            style: TextStyle(
              height: lineSpacing,
            ),
          ),
        ],
      ),
    ),
  ),
);

Widget weatherApp = Container(
  padding: const EdgeInsets.all(32),
  width: cardSizeConstant,
  child: Card(
    child: Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 10.0),
            child: Image(image: AssetImage('assets/weatherAppScaled.png')),
          ),
          Text(
            'Mobile Weather App',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          Divider(),
          Text(
            'Created an Android weather app written in typescript using Android Studio. This app features weather updates for the user\'s current location given by Android services, or any location specified by the user\'s query. The data is collected via Darksky\'s API in json format, then collected and displayed in the format shown in the tabs and graphs. Unfortunately, I had created this app, Darksky was bought by Apple, and its API is no longer available on Android. Google search API is used to collect pictures, which are displayed in a ScrollView window.*',
            softWrap: true,
            style: TextStyle(
              height: lineSpacing,
            ),
          ),
        ],
      ),
    ),
  ),
);

Widget weenixCard = Container(
  padding: const EdgeInsets.all(32),
  width: cardSizeConstant,
  child: Card(
    child: Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'OS and *nix Kernel',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          Divider(),
          Text(
            'Collaboratively made a 32-bit *nix kernel and basic CLI operating system written in C. Implemented a bootstrapper, basic file system, and virtual memory. Created a terminal for running processes in user space. Basic commands could be issued in user space with the terminal, and kernel space would perform the necessary modifications to the system\'s virtual file system.*',
            softWrap: true,
            style: TextStyle(
              height: lineSpacing,
            ),
          ),
        ],
      ),
    ),
  ),
);

Widget rasterCard = Container(
  padding: const EdgeInsets.all(32),
  width: cardSizeConstant,
  child: Card(
    child: Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 10.0),
            child: Image(image: AssetImage('assets/antialiasedPot.png')),
          ),
          Text(
            'Rasterizer',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          Divider(),
          Text(
            'Built a rasterizer capable of taking raw data from asc files and outputting visually correct images, written in C++. It has options for shading models with Phong, Gouraud, and flat shading, with multiple lights and a given camera angle, which can be rotated. It can optionally map textures specified by a texture map, or create a self-generated procedural texture, for shading on the target model. Anti-aliasing is also supported.*',
            softWrap: true,
            style: TextStyle(
              height: lineSpacing,
            ),
          ),
        ],
      ),
    ),
  ),
);

/// This is the stateful widget that the main application instantiates.
class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

/// This is the private State class that goes with MyStatefulWidget.
class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            TextFormField(
              decoration: const InputDecoration(
                hintText: 'Name',
              ),
              validator: (String? inputName) {
                if (inputName == null || inputName.isEmpty) {
                  return 'Please enter your name';
                }
                return null;
              },
            ),
            TextFormField(
              decoration: const InputDecoration(
                hintText: 'Email',
              ),
              validator: (String? inputEmail) {
                if (inputEmail == null || inputEmail.isEmpty) {
                  return 'Please enter an email';
                }
                if (!RegExp(r'^.+@[a-zA-Z]+\.{1}[a-zA-Z]+(\.{0,1}[a-zA-Z]+)$')
                    .hasMatch(inputEmail)) {
                  return 'Please enter a valid email address';
                }
                return null;
              },
            ),
            TextFormField(
              decoration: const InputDecoration(
                hintText: 'Please enter a message',
              ),
              validator: (String? inputMessage) {
                if (inputMessage == null || inputMessage.isEmpty) {
                  return 'Please enter some text';
                }
                return null;
              },
              maxLines: 12,
              minLines: 3,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: ElevatedButton(
                onPressed: () {
                  // Validate will return true if the form is valid, or false if
                  // the form is invalid.
                  if (_formKey.currentState!.validate()) {
                    // Process data.
                  }
                },
                child: const Text('Submit'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/*
class ParticleBackgroundPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Positioned.fill(child: AnimatedBackground()),
        Positioned.fill(child: Particles(30)),
        Positioned.fill(child: CenteredText()),
      ],
    );
  }
}

class Particles extends StatefulWidget {
  final int numberOfParticles;

  Particles(this.numberOfParticles);

  @override
  _ParticlesState createState() => _ParticlesState();
}

class _ParticlesState extends State<Particles> {
  final Random random = Random();

  final List<ParticleModel> particles = [];

  @override
  void initState() {
    List.generate(widget.numberOfParticles, (index) {
      particles.add(ParticleModel(random));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Rendering(
      startTime: Duration(seconds: 30),
      onTick: _simulateParticles,
      builder: (context, time) {
        return CustomPaint(
          painter: ParticlePainter(particles, time),
        );
      },
    );
  }

  _simulateParticles(Duration time) {
    particles.forEach((particle) => particle.maintainRestart(time));
  }
}
class ParticleModel {
  Animatable tween;
  double size;
  AnimationProgress animationProgress;
  Random random;

  ParticleModel(this.random) {
    restart();
  }

  restart({Duration time = Duration.zero}) {
    final startPosition = Offset(-0.2 + 1.4 * random.nextDouble(), 1.2);
    final endPosition = Offset(-0.2 + 1.4 * random.nextDouble(), -0.2);
    final duration = Duration(milliseconds: 3000 + random.nextInt(6000));

    tween = MultiTrackTween([
      Track("x").add(
          duration, Tween(begin: startPosition.dx, end: endPosition.dx),
          curve: Curves.easeInOutSine),
      Track("y").add(
          duration, Tween(begin: startPosition.dy, end: endPosition.dy),
          curve: Curves.easeIn),
    ]);
    animationProgress = AnimationProgress(duration: duration, startTime: time);
    size = 0.2 + random.nextDouble() * 0.4;
  }

  maintainRestart(Duration time) {
    if (animationProgress.progress(time) == 1.0) {
      restart(time: time);
    }
  }
}

class ParticlePainter extends CustomPainter {
  List<ParticleModel> particles;
  Duration time;

  ParticlePainter(this.particles, this.time);

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()..color = Colors.white.withAlpha(50);

    particles.forEach((particle) {
      var progress = particle.animationProgress.progress(time);
      final animation = particle.tween.transform(progress);
      final position =
          Offset(animation["x"] * size.width, animation["y"] * size.height);
      canvas.drawCircle(position, size.width * 0.2 * particle.size, paint);
    });
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}

class AnimatedBackground extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final tween = MultiTrackTween([
      Track("color1").add(Duration(seconds: 3),
          ColorTween(begin: Color(0xff8a113a), end: Colors.lightBlue.shade900)),
      Track("color2").add(Duration(seconds: 3),
          ColorTween(begin: Color(0xff440216), end: Colors.blue.shade600))
    ]);

    return ControlledAnimation(
      playback: Playback.MIRROR,
      tween: tween,
      duration: tween.duration,
      builder: (context, animation) {
        return Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [animation["color1"], animation["color2"]])),
        );
      },
    );
  }
}

class CenteredText extends StatelessWidget {
  const CenteredText({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "Welcome to Flutter for web",
        style: TextStyle(color: Colors.white, fontWeight: FontWeight.w200),
        textScaleFactor: 4,
      ),
    );
  }
}
*/
