# basic Rake file

desc "Build site with production env"
task :deploy do
  ENV["JEKYLL_ENV"] = "production"
  exec("bundle exec jekyll build")
end
