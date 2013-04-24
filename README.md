markdart
========

A self-contained markdown parser for Google Dart

Usage
-----
The goal of this project is to provide a Markdown to HTML parser that has as few depenencies as possible. The parser only relies on Dart core components that can run both from the command-line and from the web browser when compiled with `dart2js`.

In order to use it in your code, you need to `import 'markdown.dart'` and then pass a String containing the markdown formatted text to `markdown_to_html()`. This will return a String containing the HTML. An example of this is provided in `markdown_help.dart`

Demo
----
A demo of this working live can be seen at [Live Demo](http://craftkiller.github.io/markdart/)

You can also compile your own copy of the demo but cloning the repository and running `compile.sh`. Make sure you have `dart2js` in your `$PATH`. After running the compile script, open `markdown.html` in your browser.

License
-------
This project is licensed under the BSD-Style zlib license.