# BriefChat

Небольшой чат без регистрации.  
Пользователям доступны комнаты для общения и просмотр текущего онлайна.
Благодаря Action Cable реализовано обновление информации в реальном времени через WebSockets.

### Демонстрация работы
https://littlebriefchat.herokuapp.com/

### Как установить 
Приложение написано с использованием `Rails 5.1.4` и `Redis 3.0`.
```
$ git clone https://github.com/IlyaMur/brief_chat
$ cd ./brief_chat
$ bundle install --without production
$ rails db:migrate
```

### Как запустить
Запуск осуществляется командой
```
$ bundle exec rails s
```
 Приложение доступно по адресу `http://localhost:3000/`

##### Free License
