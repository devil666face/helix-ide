# helix-ide
Ready-made IDE based on [helix-editor](https://helix-editor.com/)

## Requirements
1. [Glibc >= 2.28](https://github.com/Devil666face/helix-editor-for-custom-glib)
  _Default helix support only glibc>=2.29 use this project for build custom binary file_
3. x86_64

## Supproted [languages](https://github.com/helix-editor/helix/wiki/How-to-install-the-default-language-servers)
1. bash
2. css
3. dockerfile
4. html
5. javascript
6. json
7. jsx
8. markdown
9. python
10. scss
11. tsx
12. typescript
13. yaml

## Additions
1. [Lazygit](https://github.com/jesseduffield/lazygit)

## Installaton 
```bash
cd /opt && sudo wget https://github.com/Devil666face/helix-ide/releases/download/v05.12/helix-ide.tar.gz && sudo tar -xf helix-ide.tar.gz && sudo rm helix-ide.tar.gz
sudo chown -R `YOUR_MAIN_USER`:`YOUR_MAIN_USER` helix-23.03 && cd helix-23.03
./init.sh
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

### TODO
1. [ ] [~~Add stubs for django~~](https://github.com/typeddjango/django-stubs)
2. [x] [Add stubs for django](https://pypi.org/project/django-types/)
3. [ ] [Add another stubs](https://github.com/typeddjango/awesome-python-typing)
