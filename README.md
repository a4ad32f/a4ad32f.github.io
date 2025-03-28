# Portfolio Repository

This is a setup to maintain and release the portfolio into GitHub Pages:

* The `gh-pages` branch has the artifacts shown in GitHub Pages.
* The `dev` branch has the source code used to generate the portfolio's artifacts.
* The `Feature/[Description]` branches have incremental changes for the `dev` branch.

# How to Test Locally

```
git clone https://github.com/a4ad32f/a4ad32f.github.io.git
cd a4ad32f.github.io
docker build --target [target] -t portfolio .
docker run -p 8000:8000 portfolio
```
