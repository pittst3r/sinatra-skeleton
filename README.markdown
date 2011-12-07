# Sinatra Skeleton

## The Setup

### config.ru

Needs editing if you rename <code>site.rb</code>.

### Gemfile

Comes with:

* sinatra
* thin
* haml
* sass
* rdiscount

### site.rb

* <code>require</code>s the above gems.
* Has route to find sass stylesheets at <code>/stylesheets/*.css</code> and parse them.
* Has <code>/</code> route, utilizes the markdown helper.
* Has example route for <code>/:page</code>
  * <code>/:page</code> is the name of the markdown file in </code>./views/content/</code>.

Both existing routes utilize <code>./views/index.haml</code> to render a page.

### ./views/index.haml

* Links to <code>/stylesheets/application.css</code>, which renders the corresponding sass file, by default.
* Links to the IE HTML5 shim.
* Links to the Google Analytics file.
* Uses the <code>@content</code> global to place content. <code>site.rb</code>, by default, uses the markdown helper to convert markdown files in </code>./views/content/</code> and place them in said global.

### .gitignore

    .DS_Store
    .sass-cache/
    .sass-cache/*