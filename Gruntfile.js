/*global module:false*/
module.exports = function(grunt) {
  grunt.loadNpmTasks("grunt-markdown-blog");
  require('lineman').config.grunt.run(grunt);
};
