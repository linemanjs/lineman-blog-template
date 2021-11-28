# lineman-blog-template

Turns out that [lineman](http://linemanjs.com) makes a great blogging engine!

Here's [a screencast](https://www.youtube.com/watch?v=raznFJedCZM) to demo usage for an older variant of Test Double's blog, [Double Takes](http://blog.testdouble.com).

## Getting Started

Here's how to publish a new blog to the web using github pages in minutes:

1. Clone this repository with `npx degit linemanjs/lineman-blog-template`
1. [Install lineman](https://github.com/linemanjs/lineman#getting-started) if you haven't yet.
1. Run `npm install` to install required project dependencies.
1. Run `npm start` while you work on writing markdown files under `app/posts`.
1. Turn on [github pages](https://docs.github.com/en/pages/getting-started-with-github-pages/creating-a-github-pages-site#creating-your-site) for your repo.
1. Customize the `email` within `gh-pages-deploy.yml` to the one you use for your github account and put it inside a `.github/workflows` folder in your repo.
1. Commit your post and `git push main`, and your blog will be hosted on github pages once the actions workflow completes!

## Features

First, consider reading about [grunt-markdown-blog](https://github.com/testdouble/grunt-markdown-blog), our grunt task that's doing almost all the heavy lifting here.

* Just add markdown posts with an ".md" extension to `app/posts` and when you `npm start` or `npm run build`, they'll be rendered.
* Configure your blog in `config/application.coffee`
* Customize your blog templates in `app/templates`.
* RSS is generated for you at `/index.xml` and a JSON Feed at `/index.json` (set [`markdown.options.feedCount`](config/application.coffee) to `0` to disable both of these features)
* Disqus support is included if you configure it.
* You can, of course, add any Less/CSS or CoffeeScript/JavaScript as you can with any other Lineman application. [See Lineman's documentation](https://github.com/linemanjs/lineman).
* To build static assets to deploy some other way, just run `npm run build` and put the `dist` directory's contents somewhere.


