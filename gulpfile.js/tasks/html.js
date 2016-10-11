var config       = require('../config')
if(!config.tasks.html) return

var browserSync  = require('browser-sync')
var gulp         = require('gulp')
var gulpif       = require('gulp-if')
var handleErrors = require('../lib/handleErrors')
var htmlmin      = require('gulp-htmlmin')
var path         = require('path')
var fs           = require('fs')

var exclude = path.normalize('!**/{' + config.tasks.html.excludeFolders.join(',') + '}/**')
var notIndex = path.join('!' + config.root.src, config.tasks.html.src, '/index.html')
var index = path.join(config.root.src, config.tasks.html.src, '/index.html')

var paths = {
  src: [path.join(config.root.src, config.tasks.html.src, '/**/*.html'), notIndex, exclude],
  dest: path.join(config.root.dest, config.tasks.html.dest),
}

var htmlTask = function() {
  gulp.src(index)
    .on('error', handleErrors)
    .pipe(gulpif(global.production, htmlmin(config.tasks.html.htmlmin)))
    .pipe(gulp.dest(config.root.dest))
    .on('end', browserSync.reload)

  return gulp.src(paths.src)
    .on('error', handleErrors)
    .pipe(gulpif(global.production, htmlmin(config.tasks.html.htmlmin)))
    .pipe(gulp.dest(paths.dest))
    .on('end', browserSync.reload)

}

gulp.task('html', htmlTask)
module.exports = htmlTask
