js-fdf
======

This is an FDF (Form Data Format) generator for Node.js. FDF is a format you can use to populate Adobe PDF forms. This generator is inspired by this tutorial http://koivi.com/fill-pdf-form-fields/tutorial.php by Justin Koivisto, but uses javascript instead of PHP.

Installing
----------
````
~% npm install fdf
````

Usage
-----
````javascript
var fdf = require('fdf');

fdf = require('js-fdf');

data = fdf.generate({
  name: 'Clark'
  type: 'superhero'
});

var fs = require('fs');
fs.writeFileSync('data.fdf', data);
````

A typical way to use the resulting fdf is to auto-fill a PDF form:

````
pdftk form.pdf fill_form data.fdf output - flatten
````

This will populate form.pdf with the values.
