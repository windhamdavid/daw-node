connect = require 'connect'
coffeekup = require './lib/coffeekup.coffee'
meryl = require 'meryl'
sys = require 'sys'


meryl.p(connect.static('public'))

meryl.get '/', (req, resp) ->
  resp.render 'layout',
    content: 'index'

server = connect(
  meryl.cgi
    templateExt: '.coffee'
    templateFunc: coffeekup.adapters.meryl
    templateDir: 'views'
)
server.listen(80)
console.log 'listening on port 80..'