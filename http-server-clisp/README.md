# Demo-Clisp

## How to run server

```bash
$ sbcl
* (load "main.lisp")
* (create-server)
```

## How to check if it work

```bash
$ curl http://localhost:8080
```

## Quit the server

```bash
* (create-server)
Ctrl+c
Closing sockets
nil
*
* (quit)
```
