# How to generate a PDF from a Quarto (.qmd) document with RStudio

First, define the format of your document as `pdf` in the document YAML header.

```{markdown}
---
title: "My document"
format:
  pdf
---
```

Second, install TinyTex by opening the [Terminal](https://docs.posit.co/ide/user/ide/guide/tools/terminal.html) tab in RStudio ...


![](https://docs.posit.co/ide/user/ide/guide/tools/images/terminal-basic.png)


... and entering this


```{bash}
quarto install tinytex
```

Note that if TinyTex is already install, this command we allow you to update it.

Third, you can now render the document by clicking on "Render" in RStudio.


## Additional resources.

* If you want to control more options of your PDF see the official Quarto documentation [here](https://quarto.org/docs/output-formats/pdf-basics.html). 

* A video detailing the entire process is below

<iframe width="560" height="315" src="https://www.youtube.com/embed/OUWOx80eJqk?si=kZwnP-Ftbhv01NEi" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>
