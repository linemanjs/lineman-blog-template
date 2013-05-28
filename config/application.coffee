# Exports an object that defines
#  all of the configuration needed by the projects'
#  depended-on grunt tasks.
#
# You can find the parent object in: node_modules/lineman/config/application.coffee
#

siteConfig =
  author: "FirstName LastName"
  title: "my lineman blog"
  description: "where I post all my brilliant ideas"
  url: "http://www.mylinemanblog.com"
  rssCount: 10 #<-- remove, comment, or set to zero to disable RSS generation
  #disqus: "my_disqus_name" #<-- uncomment and set your disqus account name to enable disqus support


_ = require("underscore")
lineman = require(process.env['LINEMAN_MAIN'])

# A little function to make it easy to swap named tasks in an array
replaceTask = (search, replace, type = "common") ->
  _(lineman.config.application.appTasks[type]).tap (tasks) ->
    tasks[_(tasks).indexOf(search)] = replace

module.exports = lineman.config.extend "application"

  # Use grunt-markdown-blog in lieu of Lineman's built-in homepage task
  appTasks:
    common: replaceTask("homepage:dev", "markdown:dev", "common")
    dist: replaceTask("homepage:dist", "markdown:dist", "dist")

  markdown:
    options: _(siteConfig).extend
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

  watch:
    markdown:
      files: ["app/posts/*.md", "app/templates/*.us"]
      tasks: ["markdown:dev"]
