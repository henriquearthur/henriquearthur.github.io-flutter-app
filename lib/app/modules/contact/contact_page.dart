import 'package:flutter/material.dart';

import 'contact_bloc.dart';
import 'contact_module.dart';

class ContactPage extends StatefulWidget {
  const ContactPage({Key key}) : super(key: key);

  @override
  _ContactPageState createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  final ContactBloc bloc = ContactModule.to.getBloc<ContactBloc>();

  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _messageController = TextEditingController();

  void _sendForm() async {
    if (_formKey.currentState.validate()) {
      var name = _nameController.text;
      var email = _emailController.text;
      var message = _messageController.text;

      await bloc.sendMessage(name, email, message);

      _showDialog('Enviado com sucesso!',
          'Sua mensagem foi enviada com sucesso! Irei respondê-lo o mais breve possível.');
    }
  }

  void _showDialog(String title, String content) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(title),
          content: Text(content),
          actions: <Widget>[
            FlatButton(
              child: Text("Fechar"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contato'),
      ),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(64.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Use o formulário abaixo para enviar uma mensagem. Irei respondê-lo via e-mail o mais breve possível.',
                style: Theme.of(context).textTheme.subtitle2,
              ),
              const SizedBox(height: 16.0),
              TextFormField(
                controller: _nameController,
                decoration: const InputDecoration(
                  icon: Icon(Icons.person),
                  labelText: 'Qual é o seu nome?',
                ),
                validator: (value) => value.isEmpty ? 'Digite seu nome.' : null,
              ),
              TextFormField(
                controller: _emailController,
                decoration: const InputDecoration(
                  icon: Icon(Icons.email),
                  labelText: 'Qual é o seu e-mail?',
                ),
                keyboardType: TextInputType.emailAddress,
                validator: (value) => value.isEmpty || !value.contains('@')
                    ? 'Digite um e-mail válido.'
                    : null,
              ),
              TextFormField(
                controller: _messageController,
                decoration: const InputDecoration(
                    icon: Icon(Icons.message),
                    labelText: 'Qual é a sua mensagem?',
                    hintText:
                        'Se deseja um orçamento para um projeto, descreva todos os requisitos que o projeto deve atender e funcionalidades que deve possuir.'),
                keyboardType: TextInputType.multiline,
                maxLines: null,
                validator: (value) =>
                    value.isEmpty ? 'Digite sua mensagem.' : null,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: RaisedButton(
                  onPressed: _sendForm,
                  child: Text('Enviar'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
