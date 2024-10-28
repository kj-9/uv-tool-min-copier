[![Copier](https://img.shields.io/endpoint?url=https://raw.githubusercontent.com/copier-org/copier/master/img/badge/badge-grayscale-inverted-border-orange.json)](https://github.com/copier-org/copier)

# uv-tool-min-copier

Minimum copier template for a python script to be `uv tool install`ed.

This template is meant to be used with [uv](https://docs.astral.sh/uv/).


## Usage

To start, just run:
```bash
uvx copier copy gh:kj-9/uv-tool-min-copier your-tool-dir
```

this will prompt you to fill in some values.
If you answer Yes to the question ` Do you want to use Click for command line interface?`, copier generates a `main.py` script with a basic [click](https://click.palletsprojects.com/en/8.1.x/) command line interface.


After filling in the values, copier generates minimum files:
```
create  .gitignore
create  main.py
create  pyproject.toml
```

where: 
- `main.py` is a your python script to be installed as a tool
- `pyproject.toml` is a configuration file for `uv` to install your `main.py` script as a tool
- `.gitignore` is a gitignore file in case you want to manage your tool with git.


### Install your tool script

You can run `uv tool install` specifying the local path to the tool directory:
```
uv tool install ./your-tool-dir -e
```
where `-e` option is for editable install.


If you initialize git repositoriy and uploaded to github, you can install by running:

```
uv tool install git+https://github.com/{github-username}/{repo-name}
```


You can even upload `main.py` and `pyproject.toml` to a gist to share your tool with others.
with [gh](https://cli.github.com/) installed, you can do it like:
```
# create gist
cd your-tool-dir
gh gist create main.py pyproject.toml --description "your tool description"
# prints created gist url

# install the tool from gist
uv tool install git+https://gist.github.com/{github-username}/{gist-id} # paste printed gist url
```

you can also list gist id by `gh gist list` command.


## Why I made this template

I was searching for some way to quickly install a single python script in a isolated environment.

`uv tool install` is great for installing a python script as tools, but it needs a properly set up pyproject.toml file to work.

Someone already asked for a simpler way - just running `uv tool install ./script.py` (check out [the feature request](https://github.com/astral-sh/uv/issues/7242)), but it's not ready yet. So I made this template as a workaround until that happens.
