###

Overrides the default lineman-blog markdown settings.

To see what the defaults are:
- try running `lineman config markdown`
- or look in node_modules/lineman-blog/config/plugins/markdown.coffee

###

module.exports = (lineman) ->
  markdown:
    options:
      title: "my lineman blog"
      description: "where I post all my brilliant ideas"
      url: "http://www.mylinemanblog.com"
      author: "FirstName LastName"
      authorUrl: "https://twitter.com/yourhandle"
      dateFormat: "MMMM Do, YYYY"
      feedCount: 10 #<-- set to zero to disable RSS and JSON Feed generation
      #disqus: "my_disqus_name" #<-- uncomment and set your disqus account name to enable disqus support