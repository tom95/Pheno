# Pheno

Pheno is a widget framework containing a number of ready-to-go widgets for common UI use cases. All widgets are stylable with a CSS-like system. Also comes with a ToolBuilder that uses these styles.

![Screenshot](https://raw.githubusercontent.com/tom95/Pheno/master/screenshots/Screenshot.png)

## How to Install
First install metacello using [this guide](https://github.com/Metacello/metacello#squeak). Then run the following in a workspace in your Squeak image.

```smalltalk
Metacello new
  baseline: 'Pheno';
  repository: 'github://tom95/Pheno:master/src';
  load.
```

Finally, launch a couple examples using e.g.
```smalltalk
PHLabelExample open.
PHColorStylesExample open.

" to browse all examples, run: "
Browser newOnCategory: 'Pheno-Examples'.
```

## Upgrading from v1.0.0
* `PHLabel>>text:` no longer parses markup. Use `PHLabel>>markup:`
* `PHLabel>>style:set:` and `PHLabel>>style:` and the `#styleAttributes` accessor have been removed
* Strongly consider running `PHStyleContext class>>configureForScalingFactor:fontNamed:` after installing a TTF font, for the intended experience (may be advised to save the image first, to ensure everything is legible after. Please report a bug and attach a screenshot if anything goes wrong)

## Migrating from `BT` Prefix
Here are two handy scripts to run on your repo if you used the `BT` instead of the `PH` prefix:
```bash
ack -l 'BT[^\s]' | xargs perl -pi -E 's/BT([^\s])/PH\1/g'
find . | grep BT | xargs rename -e 's/BT/PH/'
```

## Pango
Pheno can use Pango for rendering text. It will automatically do so if the plugin is available.
For linux we provide pre-built binaries: download the [plugin library](https://github.com/tom95/Pheno/blob/master/PangoPlugin/bin/linux-amd64/PangoPlugin) and place it next to your squeak executable (not your squeak.sh, but the executable that is usually found in the `bin` folder).
If you get an error, check if all dependencies of the plugin are installed on your system, e.g. via `ldd PangoPlugin`.
