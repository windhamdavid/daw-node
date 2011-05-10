doctype 5
html ->
  head ->
	meta charset: 'utf-8', 
    title '',
    link rel: 'stylesheet', href: '/css/style.css',
	script src: '/js/jquery-1.5.2.min.js',
  body ->
    div id: 'wrap', ->
      div id: 'header', ->
 		div class: 'header-content', ->
      div id: 'content',
        -> @render @content, @context
		div id: 'footer', ->
		        div class: 'footer-content', ->
