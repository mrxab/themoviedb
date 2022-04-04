import 'package:flutter/material.dart';

class AuthWidget extends StatefulWidget {
  AuthWidget({Key? key}) : super(key: key);

  @override
  State<AuthWidget> createState() => _AuthWidgetState();
}

class _AuthWidgetState extends State<AuthWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Войти в свою учётную запись'),
          centerTitle: true,
        ),
        body: _HeaderWidget());
  }
}

class _HeaderWidget extends StatelessWidget {
  const _HeaderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final styleText = const TextStyle(
      color: Colors.black,
      fontSize: 16,
      fontFamily: 'sans-serif',
    );

    final inputDecoration = const InputDecoration(
      border: OutlineInputBorder(),
      isCollapsed: true,
      contentPadding: EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 10,
      ),
    );
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 20,
          ),
          Text(
            'Чтобы пользоваться правкой и возможностями рейтинга TMDB, а также получить персональные рекомендации, необходимо войти в свою учётную запись. Если у вас нет учётной записи, её регистрация является бесплатной и простой. Нажмите здесь, чтобы начать.',
            style: styleText,
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Если Вы зарегистрировались, но не получили письмо для подтверждения, нажмите здесь, чтобы отправить письмо повторно.',
            style: styleText,
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Имя пользователя',
            style: styleText,
          ),
          TextField(
            decoration: inputDecoration,
          ),
          Text(
            'Пароль',
            style: styleText,
          ),
          TextField(
            decoration: inputDecoration,
            obscureText: true,
          ),
        ],
      ),
    );
  }
}
