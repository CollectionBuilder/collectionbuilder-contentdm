# Building your collection

When developing the collection use `jekyll s` to start the development server.
By default the Jekyll environment is "development". 
In this environment CollectionBuilder skips some template elements to cut down on build time, including these `_includes`:

- item-meta
- page-meta
- google-analytics

To deploy the collection, you will need to use the Jekyll environment variable "production" and the `build` command rather than serve. 
This is set by adding the env, `JEKYLL_ENV=production`, in front of the command: 
`JEKYLL_ENV=production jekyll build`

To simplify, this command is added in a [Rake](https://github.com/ruby/rake) task in this repository.
Typing the command `rake deploy` will set the correct environment and build. 
(*note:* setting ENV cannot be done on windows CMD, use the rake task or Git Bash terminal).
