# .emacs.d

emacs24.5 setup for Python. Use: 

```
git clone -b <branch> https://github.com/martibosch/.emacs.d/
```

where `<branch>` might be:
* `data` for a data analysis setup with `Jupyter` Notebooks, and using `Emacs` with the `X` window system
* `web` for a web development setup with `Django`, and using `Emacs` in the terminal

See the packages that each branch includes in the `Packages` section below.

## System Requirements

This setup requires Emacs >= 24.5. The package can be installed from the source downloaded at `foo`

The package `magit` requires Git >= 1.9.4. If you use `APT` this version can be obtained as follows:

```
sudo add-apt-repository ppa:git-core/ppa -y
sudo apt-get update
sudo apt-get install git
```

## Packages:

### Base Packages:

The following packages are commonly used by all the branches of the configuration:

* `better-defaults`
* `elpy`
* `flycheck`
* `magit`
* `py-autopep8`
* `sphinx-doc`
* `yasnippet`

It is useful to check that the Python libraries required for `elpy` are installed to get a better coding experience

### Packages for Data Analysis

These packages will be installed if using the `data` branch:

* `auto-complete`
* `ein`
* `white-sand-theme`

### Packages for Web Development

These packages will be installed if using the `web` branch:

* `pony-mode`
* `web-mode`
* `zenburn-theme`
