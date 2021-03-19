# Rails: The HTS Experiment

This is the code repository for a simple Event tracking [CRUD](https://en.wikipedia.org/wiki/Create,_read,_update_and_delete)
application implemented in [Ruby on Rails](https://rubyonrails.org/) with
[Hotwire, Turbo and Stimulus](https://turbo.hotwire.dev/). It was forked from
James Hibbard's excellent [Rails/React tutorial](https://hibbard.eu/rails-react-crud-app/).

See the rationale for this experiment on our blog. _(Link to be added upon
publication of the blog post.)_

The following repo branches are of interest:
* [fork-point](https://github.com/gaslight/hts-experiment/tree/fork-point):
where this repo was forked from the upstream repo
* [rails-non-hts](https://github.com/gaslight/hts-experiment/tree/rails-non-hts):
the "vanilla" (non-HTS) Rails implementation
* [rails-with-hts](https://github.com/gaslight/hts-experiment/tree/rails-with-hts):
the Rails version implemented with Hotware, Turbo and Stimulus

## Requirements
* [Git](https://git-scm.com/)
* [Ruby](https://www.ruby-lang.org/en/downloads/)
* [Yarn](https://yarnpkg.com/)

## Installation
With the above listed requirements installed on your system, open a terminal in
a directory of your choosing and run the following commands:
```sh
git clone git@github.com:gaslight/hts-experiment.git
cd hts-experiment
./bin/setup
```

## Running
* Start the Rails server with the command: `./bin/rails s`
* In a second terminal start the wepback-dev-server with the command:
`./bin/webpack-dev-server`
* Clink on this link: http://localhost:3000/events/

## Contributing
GitHub's guide for [Contributing to Open Source](https://guides.github.com/activities/contributing-to-open-source/)
offer's the best advice.

### tl;dr
1. [Fork it](https://help.github.com/articles/fork-a-repo/)!
1. Create your feature branch: `git checkout -b cool-new-feature`
1. Commit your changes: `git commit -am 'Added a cool feature'`
1. Push to the branch: `git push origin cool-new-feature`
1. [Create new Pull Request](https://help.github.com/articles/creating-a-pull-request/).

## License

Code archives and code examples are licensed under the MIT license.

Copyright © 2020 James Hibbard

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
