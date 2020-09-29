# AppigyAPI

A server-side application built with [Vapor](https://github.com/vapor/vapor) for my ShellHacks2020 talk `"Building native apps and web services with Swift"`. You can watch that talk [here](https://www.youtube.com/watch?v=gtmYRUIN-DQ) if you want.

## What it does

* AppigyAPI serves JSON-formatted application data as well as static assets.
* AppigyAPI uses the SQLite database for persistent storage and the Fluent ORM for handling data and migrations.

## What you'll need

* macOS
* Xcode 12+
* Vapor
* SQLite

## How to start

If you attended my ShellHacks2020 talk and want to follow along with the [video](https://www.youtube.com/watch?v=gtmYRUIN-DQ), then I recommend cloning the shellhacks branch and starting from there.

Otherwise, just clone the repo, open in Xcode, and hit the run button.

If you're running the master branch, you'll need to run `vapor run migrate` to serve any data.
