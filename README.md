js-fdf
======

A commonjs FDF (Form Data Format) generator

````javascript
var fdf = require('fdf');

fdf = require('js-fdf')

data = fdf.generate
  name: 'Clark'
  type: 'superhero'

fs.writeFileSync('data.fdf', data)
````

A typical way to use the resulting fdf file is:

````
pdftk file.pdf fill_form data.fdf output - flatten
````
