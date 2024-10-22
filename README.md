[![Copier](https://img.shields.io/endpoint?url=https://raw.githubusercontent.com/copier-org/copier/master/img/badge/badge-grayscale-inverted-border-orange.json)](https://github.com/copier-org/copier)

# uv-tool-min-copier

Minimum copier template for a python script to be `uv tool install`ed.

## usage

```bash
copier copy gh:kj-9/uv-tool-min-copier your-tool-dir
```

this generates a minimum files for a python script to be `uv tool install`ed at `./your-tool-dir`


then, you can `uv tool install` your tool specifying the local path to the tool directory.
```
uv tool install ./your-tool-dir
```

or using github gist:
```
# create gist
cd your-tool-dir
gh gist create main.py pyproject.toml --description "your tool description"
# prints created gist url

# install the tool from gist
uv tool install https://gist.github.com/{github-username}/{gist-id} # paste printed gist url
```

you can also list gist id by `gh gist list` command.
