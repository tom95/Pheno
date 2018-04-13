# Pheno

Pheno is a widget framework containing a number of ready-to-go widgets for common UI use cases. All widgets are stylable with a CSS-like system. Also comes with a ToolBuilder that uses these styles.

![Screenshot](https://raw.githubusercontent.com/tom95/Pheno/master/screenshots/Screenshot.png)

## How to Install
First install metacello using [this guide](https://github.com/Metacello/metacello#squeak). Then run the following in a workspace in your Squeak image.

```smalltalk
Metacello new
  baseline: 'Bootstrap';
  repository: 'github://tom95/Pheno:master/src';
  load.
```

Finally, launch a couple examples using e.g.
```smalltalk
BTLabelExample open.
BTColorStylesExample open.

" to browse all examples, run: "
Browser newOnCategory: 'Bootstrap-Examples'.
```
