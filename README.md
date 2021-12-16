# ssg-mock

## Setup

```
$ bundle
$ zcat db/seeds.dump.gzip | sqlite3 db/development.sqlite3
```

## How to generate a static page in console

```ruby
page = Page.first
component = StaticPages::PageComponent.new(page: page, layout: nil)
ApplicationController.renderer.render(component)
```

## How to generate all pages

```
$ bin/rails build:all
```
