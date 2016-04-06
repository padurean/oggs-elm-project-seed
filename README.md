# oggs-elm-project-seed

Elm project seed/boilerplate with minimal dependencies to keep things sane.

## Description

- Uses _**npm**_ as a build tool with few **dev-only dependencies**.

- Provides a development workflow in which the developer does some changes and just refreshes the page to see them in action

- Elm compilation, static files minification, running tests and creating the distribution can all be accomplished using a `npm run` command, run manually or through one of the `npm run watch[..]` commands.

- To view the available commands and understand the build process please inspect the [package.json](https://github.com/padurean/oggs-elm-project-seed/blob/master/package.json)
file.

- The [_Hello_ example component](https://github.com/padurean/oggs-elm-project-seed/tree/master/src/components) is using [elmx](https://github.com/pzavolinsky/elmx). One can use it to build the component by writing plain html instead of Elm html.
However, the drawback is that (at least at the moment) one needs to use the [Atom](https://atom.io/) editor with the [language-elmx](https://atom.io/packages/language-elmx) package/plugin in order to the _.elmx_ files transpiled to _.elm_ files/code. **The npm-based build process only works with _.elm_ files**. If _elmx_ is not desired, then the generated _.elm_ file can be nicely formatted and the _.elmx_ file just needs to be dropped.

- **!NOTE**: _.elm_ files generated from _.elmx_ will be in the same folder and will have the same name as the _.elmx_ file.

## How to use

### Development

Using a terminal, run the following:

```
git clone https://github.com/padurean/oggs-elm-project-seed.git
cd oggs-elm-project-seed
npm i
elm package install
npm run watch
```

### Run tests

```
npm run test
```

or, when working on tests, in order to get them automatically re-run on changes:

```
npm run watch:test
```

### Run tests and build the distribution

```
npm run dist
```
