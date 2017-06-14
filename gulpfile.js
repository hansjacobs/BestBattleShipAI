var gulp = require('gulp');
var coffee = require('gulp-coffee');
var jasmineBrowser = require('gulp-jasmine-browser');

gulp.task('coffee', function() {
  gulp.src('./coffeescripts/*.coffee')
    .pipe(coffee({bare: true}))
    .pipe(gulp.dest('./javascripts/'));
  gulp.src('./spec/*.coffee')
    .pipe(coffee({bare: true}))
    .pipe(gulp.dest('./spec/'));
});

gulp.task('jasmine', ['coffee'], () => {
  return gulp.src(['javascripts/ShipMaker.js', 'javascripts/BoardCreator.js', 'spec/*spec.js'])
    .pipe(jasmineBrowser.specRunner({console: true}))
    .pipe(jasmineBrowser.headless());
});