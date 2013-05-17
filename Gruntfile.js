/*global module:false*/
module.exports = function(grunt) {
  grunt.loadNpmTasks("grunt-markdown-blog");
  require(process.env['LINEMAN_MAIN']).config.grunt.run(grunt);
};
