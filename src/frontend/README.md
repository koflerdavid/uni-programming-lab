Soccervis
===
This is the frontend of our football transfers visualization realised as a webapp.

Installation
----
You need node/npm:
```sh
$ npm install
```

Run
----
You need a valid twitter consumer_(key/secret) and account_(token/secret)
put them into setenv.sh
```sh
$ source setenv.sh
$ npm start
```
and visit ```localhost:8080```

Deploy
-----
```sh
$ git subtree push --prefix src/frontend heroku master
$ heroku config:add CONSUMER_KEY={con_key} CONSUMER_SEC={con_sec} ACCOUNT_TOK={auth_tok} ACCOUNT_SEC={auth_sec}
```


Tech
----
We use a couple of frameworks to make our lives easier:

* [threejs] - webgl wrapper for 3d rendering
* [reactjs] - for our gui
* [jQuery] - DOM editing made simple

Todo's
----

Version
----
0.0.1
License
----
MIT

**Free Software, Hell Yeah!**

[threejs]:http://threejs.org/
[jQuery]:http://jquery.com
[reactjs]:https://facebook.github.io/react/
