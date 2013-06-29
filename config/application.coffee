# Exports an object that defines
#  all of the configuration needed by the projects'
#  depended-on grunt tasks.
#
# You can find the parent object in: node_modules/lineman/config/application.coffee
#

module.exports = require(process.env['LINEMAN_MAIN']).config.extend "application",

  loadNpmTasks: ["grunt-markdown-blog"]

  markdown:
    options:
      author: "FirstName LastName"
      title: "my lineman blog"
      description: "where I post all my brilliant ideas"
      url: "http://www.mylinemanblog.com"
      rssCount: 10 #<-- remove, comment, or set to zero to disable RSS generation
      #disqus: "my_disqus_name" #<-- uncomment and set your disqus account name to enable disqus support
      layouts:
        wrapper: "app/templates/wrapper.us"
        index: "app/templates/index.us"
        post: "app/templates/post.us"
        archive: "app/templates/archive.us"
      paths:
        posts: "app/posts/*.md"
        pages: "app/pages/**/*.md"
        index: "index.html"
        archive: "archive.html"
        rss: "index.xml"

    dev:
      dest: "generated"
      context:
        js: "../js/app.js"
        css: "../css/app.css"

    dist:
      dest: "dist"
      context:
        js: "../js/app.min.js"
        css: "../css/app.min.css"

  # Use grunt-markdown-blog in lieu of Lineman's built-in pages task
  prependTasks:
    common: "markdown:dev"
    dist: "markdown:dist"
  removeTasks:
    common: "pages:dev"
    dist: "pages:dist"

  watch:
    markdown:
      files: ["app/posts/*.md", "app/templates/*.us"]
      tasks: ["markdown:dev"]
