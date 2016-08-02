[![Build Status](https://travis-ci.org/sotetsuk/slides-test.svg?branch=master)](https://travis-ci.org/sotetsuk/slides-test)
[![license](https://img.shields.io/github/license/mashape/apistatus.svg?maxAge=2592000)]()

# Google Slides Figure embedded in GitHub README
This repository demonstrates automatic deployment of the figure in **Google Slides** to **GitHub README.md** using Travis CI.

[![test](test.png)](https://docs.google.com/presentation/d/1s71LVtOyWlVL4WKCOks9dIgpW3XqviBQkBhMzFkbQFE/edit#slide=id.p)

## Feature
- You will never forget where the source file of the figure is (**_Just click the figure above!_**)
- Deployed **_only when_** the figure has been updated in Google Slides (and someone commits)
- Perfect updated history in Google Slides
- No other dependencies

## How to use

#### 1. Prepare your own slides and its download link

```
https://docs.google.com/presentation/d/[YOUR_OWN__ID]/export/pdf
```

#### 2. Prepare your own access token

In order to commit the updated figure to the repository, you should prepare your own **Personal access tokens** from [here](https://github.com/settings/tokens) and encrypt it by:

```
$ travis encrypt GH_TOKEN=[YOUR_TOKEN]
```

and add the followings to ```.travis.yml```

```yml
env:
  global:
    - secure: [YOUR_OWN_ENCRYPTED_TOKEN]
```

#### 3. Setting Travis CI
If you have prepared your own slides and encrypted access token, then it's straightforward!
Add ```update_tmb.sh``` to your root of the repository and run it in ```.travis.yml```:

```yml
script:
  - sh update_tmb.sh
```

## License

```
The MIT License (MIT)

Copyright (c) 2016 Sotetsu KOYAMADA

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
```
