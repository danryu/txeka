import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

void main() => runApp(new TxekaApp());

class TxekaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Txeka-lá - Eleições 2019',
      color: Colors.white,
      theme: ThemeData(fontFamily: 'UbuntuThin'),
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
//            title: const Text('Txeka-lá - Eleições 2019', style: TextStyle(color: Colors.black)),
            title: Image.asset('images/logo_txekala.jpg', fit: BoxFit.cover, scale: 1.5),
            centerTitle: true,
            backgroundColor: Colors.white,
            bottom: TabBar(
              tabs: [
                Tab(icon: Icon(Icons.info)),
                Tab(icon: Icon(Icons.notifications)),
                Tab(icon: Icon(Icons.map)),
                Tab(icon: Icon(Icons.contact_phone)),
              ],
              labelColor: Colors.red,
            ),
          ),
          body: TabBarView(
            children: [
              buildHomePage('Informação'),
              NewsPage(title: 'Txeka Noticia'),
              UshaPage(title: 'Txeka Ushahidi Page'),
//              contactSection,
              buildContactsPage('Contactos'),
            ],
          ),
        ),
      ),
    );
  }


  Widget buildHomePage(String title) {
    final titleText = Container(
      padding: EdgeInsets.all(20),
      child: Text(
        'O que é Txeka?',
        textAlign: TextAlign.left,
        style: TextStyle(
          fontWeight: FontWeight.w800,
          color: Colors.green,
          fontSize: 38,
        ),
      ),
    );

    final sobreNos = Text(
      'O Olho do Cidadão é um movimento de cidadania que surgiu em Moçambique em 2012, '
      'através de uma plataforma de bloguistas estudantes da Universidade Eduardo Mondlane, '
      'com o objectivo primordial de contribuir para o aumento da participação política através '
      'do uso da tecnologia, dando Voz ao Cidadão e contribuindo igualmente para a Boa Governação – '
      'Aumento da Transparência, Responsabilidade, Prestação de Contas em Moçambique. \n\n'

      'Com vista de Monitorar as Quintas Eleições Gerais e Legislativas Moçambicanas realizadas no dia 15 '
      'de Outubro de 2014, desenhado pela USHAIDI Quénia, o Olho do Cidadão em parceria organizações '
      'da Sociedade Civil, nomeadamente NMID, Observatório Eleitoral, Progresso, CIP, Cesc, Diakonia '
      'e da Mídia (Grupo Soico) com apoio do Alto Comissariado do Canadá, criou uma Plataforma Online '
      'denominada “Txeka-lá” que teve como principal objectivo dar Voz aos Cidadãos em Moçambique '
      'durante o Processo Eleitoral. \n\n'

      'Para as eleições gerais 2019, a compromete-se a fazer a monitoria das Sextas Eleições Gerais, '
      'Legislativas e Províncias. Neste processo eleitoral, o Txeka faz parte da Sala da Paz, '
      'um consórcio de organizações da sociedade civil que pretendem '
      'trabalhar para que o país tenha eleições justas, livres e transparentes. ',
      textAlign: TextAlign.left,
      softWrap: true,
      style: TextStyle(
//        color: Colors.black,
//        fontWeight: FontWeight.w800,
//        fontFamily: 'Courier',
//        letterSpacing: 0.5,
//        height: 2,
        fontSize: 24,
      )
    );


    final mainImage = Image.asset(
      'images/logo_txekala.jpg',
//      fit: BoxFit.cover,
    );

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.fromLTRB(20, 30, 20, 20),

          child: ListView(
            children: [
              mainImage,
              titleText,
              sobreNos,
            ],
          ),
        ),
      ),
    );
  }


  Widget buildContactsPage(String title) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: Colors.green,
      ),
      body: ListView(
        children: [
          Card(
            child: new InkWell(
              child: ListTile(
                leading: Image.asset('images/logo_facebook.png'),
                title: Text('fb.com/TxekaMoz'),
              ),
              onTap: () => launch('fb://profile/TxekaMoz'),
            ),
          ),
          Card(
            child: new InkWell(
              child: ListTile(
                leading: Image.asset('images/logo_twitter.jpg'),
                title: Text('@TxekaMoz '),
              ),
              onTap: () => launch('https://twitter.com/txekamoz'),
            ),
          ),
          Card(
            child: new InkWell(
              child: ListTile(
                leading: Image.asset('images/logo_whatsapp.png'),
                title: Text('87 237 3364'),
              ),
              onTap: () => launch('whatsapp://send?phone=+258872373364'),
            ),
          ),
          Card(
            child: new InkWell(
              child: ListTile(
                leading: Image.asset('images/logo_whatsapp.png'),
                title: Text('82 0264 748'),
              ),
              onTap: () => launch('whatsapp://send?phone=+258820264748'),
            ),
          ),
          Card(
            child: new InkWell(
              child: ListTile(
                leading: Image.asset('images/logo_whatsapp.png'),
                title: Text('85 536 8337'),
              ),
              onTap: () => launch('whatsapp://send?phone=+258855368337'),
            ),
          ),
          Card(
            child: new InkWell(
              child: ListTile(
                leading: Image.asset('images/logo_instagram.jpg'),
                title: Text('@Txeka_Lá'),
              ),
              onTap: () => launch('https://www.instagram.com/txeka_la/'),
            ),
          ),
          Card(
            child: new InkWell(
              child: ListTile(
                leading: Image.asset('images/logo_youtube.png'),
                title: Text('Txeka-La Moz'),
              ),
              onTap: () => launch('https://www.youtube.com/channel/UCEwZdOKOH7bAWdPICo2_L_w'),
            ),
          ),
          Card(
            child: new InkWell(
              child: ListTile(
                leading: Image.asset('images/logo_www.jpg'),
                title: Text('txeka.com'),
              ),
              onTap: () => launch('https://txeka.com'),
            ),
          ),
          Card(
            child: new InkWell(
              child: ListTile(
                leading: Image.asset('images/logo_email.png'),
                title: Text('info@txeka.com'),
              ),
              onTap: () => launch('mailto:info@txeka.com'),
            ),
          ),
        ],
      ),
    );
  }
}


class UshaPage extends StatefulWidget {
  UshaPage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _UshaPageState createState() => _UshaPageState();
}

class _UshaPageState extends State<UshaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: WebView(
            initialUrl: 'https://usha.txeka.com',
            javascriptMode: JavascriptMode.unrestricted,
          ),
        ),
      ),
    );
  }
}


class NewsPage extends StatefulWidget {
  NewsPage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _NewsPageState createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: WebView(
            initialUrl: 'https://txeka.com/noticia',
            javascriptMode: JavascriptMode.unrestricted,
          )
      )
    );
  }
}