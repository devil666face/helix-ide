# helix-ide

Ready-made IDE based on [helix-editor](https://helix-editor.com/)

## Requirements

1. [Glibc >= 2.28](https://github.com/Devil666face/helix-editor-for-custom-glib)
   _Default helix support only glibc>=2.29 use this project for build custom binary file_
2. x86_64

## Supported [languages](https://github.com/helix-editor/helix/wiki/How-to-install-the-default-language-servers)

1. [Golang](https://github.com/helix-editor/helix/wiki/How-to-install-the-default-language-servers#go):

   1. [goimports](https://pkg.go.dev/golang.org/x/tools/cmd/goimports)
   2. [gopls](https://pkg.go.dev/golang.org/x/tools/gopls)
   3. [dlv](https://github.com/go-delve/delve)
   4. [air](https://github.com/cosmtrek/air)
   5. [golangci-lint](https://github.com/golangci/golangci-lint)
   6. [templ](https://github.com/a-h/templ)

2. [Python](https://github.com/helix-editor/helix/wiki/How-to-install-the-default-language-servers#python---pyright--ruff--black):

   1. [pyright](https://github.com/microsoft/pyright)
   2. [ruff-lsp](https://github.com/astral-sh/ruff-lsp)
   3. [black](https://github.com/psf/black)

3. [Bash](https://github.com/helix-editor/helix/wiki/How-to-install-the-default-language-servers#bash)
4. [Dockerfile](https://github.com/helix-editor/helix/wiki/How-to-install-the-default-language-servers#docker)
5. [Html](https://github.com/helix-editor/helix/wiki/How-to-install-the-default-language-servers#html) [Javascript Json Jsx](https://github.com/helix-editor/helix/wiki/How-to-install-the-default-language-servers#javascript) [Css](https://github.com/helix-editor/helix/wiki/How-to-install-the-default-language-servers#css) [Scss](https://github.com/helix-editor/helix/wiki/How-to-install-the-default-language-servers#scss)
6. [Markdown](https://github.com/helix-editor/helix/wiki/How-to-install-the-default-language-servers#marksman)
   1. [marksman](https://github.com/artempyanykh/marksman)
   2. [prettier](https://prettier.io/)
7. [Typescript](https://github.com/helix-editor/helix/wiki/How-to-install-the-default-language-servers#typescript)
8. [Yaml](https://github.com/helix-editor/helix/wiki/How-to-install-the-default-language-servers#yaml)
   1. [Ansible](https://github.com/helix-editor/helix/wiki/How-to-install-the-default-language-servers#ansible)

```
npm install -g @ansible/ansible-language-server
apt-get install ansible-lint ansible
```

2. [prettier](https://prettier.io/)
3. [Toml](https://github.com/helix-editor/helix/wiki/How-to-install-the-default-language-servers#toml)
   1. [taplo](https://github.com/tamasfe/taplo/releases)

## Additions

1. [Lazygit](https://github.com/jesseduffield/lazygit)
2. [Lazydocker](https://github.com/jesseduffield/lazydocker)
3. [Dive](https://github.com/wagoodman/dive)

## Installaton

```bash
sudo bash -c "$(wget https://raw.githubusercontent.com/Devil666face/helix-ide/main/install.sh -O -)"
```

### Add new stubs for pyright

Example for [django-types](https://pypi.org/project/django-types/)

```
/opt/helix-23.03/python/bin/python3.10 -m pip install django-types
mkdir -p /opt/helix-23.03/node/lib/node_modules/pyright/dist/typeshed-fallback/stubs/django/django
touch /opt/helix-23.03/node/lib/node_modules/pyright/dist/typeshed-fallback/stubs/django/METADATA.toml
echo "version = \"*\"" >> /opt/helix-23.03/node/lib/node_modules/pyright/dist/typeshed-fallback/stubs/django/METADATA.toml
cp -r /opt/helix-23.03/python/lib/python3.10/site-packages/django-stubs/* /opt/helix-23.03/node/lib/node_modules/pyright/dist/typeshed-fallback/stubs/django/django
```

---

Use this for add modules

```bash
npm install -g package
```

```
/opt/helix/python/bin/pip3.10 install package
```
