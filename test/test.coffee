
fdf = require('../index')

data = fdf.generate
  name: 'Clark'
  type: 'superhero'

fs.writeFileSync('document.fdf', data)
