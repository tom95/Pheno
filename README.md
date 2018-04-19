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

## Migrating from `BT` Prefix
Here are two handy scripts to run on your repo if you used the `BT` instead of the `PH` prefix:
```bash
ack -l 'BT[^\s]' | xargs perl -pi -E 's/BT([^\s])/PH\1/g'
find . | grep BT | xargs rename -e 's/BT/PH/'
```
