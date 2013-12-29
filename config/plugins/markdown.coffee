###
Overrides the default lineman-blog markdown settings. To see what the defaults
are, try running `lineman config markdown` or looking in:
  node_modules/lineman-blog/config/plugins/markdown.coffee
###
module.exports = (lineman) ->
  config:
    markdown:
      options:
        author: "FirstName LastName"
        title: "my lineman blog"
        description: "where I post all my brilliant ideas"
        url: "http://www.mylinemanblog.com"
        rssCount: 10 #<-- remove, comment, or set to zero to disable RSS generation
        #disqus: "my_disqus_name" #<-- uncomment and set your disqus account name to enable disqus support
