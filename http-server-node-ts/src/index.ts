import { createServer } from "http";

createServer((request, response) => {
  response.write("Hello, World");
  response.end();
}).listen(80);
