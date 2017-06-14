var gulp = require('gulp');
var jasmineBrowser = require('gulp-jasmine-browser');

gulp.task('jasmine', function() {
  return gulp.src(['javascripts/ShipMaker.js', 'javascripts/BoardCreator.js', 'spec/*spec.js'])
    .pipe(jasmineBrowser.specRunner({console: true}))
    .pipe(jasmineBrowser.headless());
});