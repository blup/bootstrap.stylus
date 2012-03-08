
# bootstrap.stylus (v2.0.1)

  Twitter's [Bootstrap](https://github.com/twitter/bootstrap) for [Stylus](https://github.com/learnboost/stylus).


## Installation

 Bootstrap uses [nib](https://github.com/visionmedia/nib) for transparent CSS3 support and helpful mixins, but you simply need to `.use()` `bootstrap`, which in turn exposes `@import "bootstrap"`.

```js
var stylus = require('stylus')
  , bootstrap = require('bootstrap')
  , fs = require('fs');

var styl = fs.readFileSync(__dirname + '/example.styl', 'utf8');

var css = stylus(styl)
  .use(bootstrap())
  .set('filename', 'example.styl')
  .set('compress', true)
  .render(function(err, css){
    if (err) throw err;
    console.log(css);
  });
```

Then you can __@import__ all or portions of the library:

```css
// everything
@import 'bootstrap'

// only config and forms
@import 'bootstrap/config'
@import 'bootstrap/forms'
```

## Configuration

You can variables before the configuration is __@import__ed:

```css
radius = 5px
@import 'bootstrap'
```

Copyright and License
---------------------

Copyright 2011 Twitter, Inc.

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this work except in compliance with the License.
You may obtain a copy of the License in the LICENSE file, or at:

   http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
