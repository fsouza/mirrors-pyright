# pyright mirror

[pre-commit](https://pre-commit.com) mirror for
[Pyright](https://github.com/microsoft/pyright).

## Using with pre-commit

See [pre-commit](https://github.com/pre-commit/pre-commit) for instructions

Sample `.pre-commit-config.yaml`

```yaml
-   repo: https://github.com/fsouza/mirrors-pyright
    rev: v1.1.277
    hooks:
    -   id: pyright
```
