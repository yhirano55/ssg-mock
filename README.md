# ssg-mock

## Setup

```
$ bundle
$ zcat db/seeds.dump.gzip | sqlite3 db/development.sqlite3
```

## How to generate a static page in console

```ruby
page = Page.first
component = StaticPages::PageComponent.new(page: page)
ApplicationController.renderer.render(component)
```
