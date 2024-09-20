# git-version Extension For Quarto

Get the last version (last tags) of the git repository with a quarto shortcode. 

## Installing

_TODO_: Replace the `<github-organization>` with your GitHub organization.

```bash
quarto add MarcSoudant/git-version
```

This will install the extension under the `_extensions` subdirectory.
If you're using version control, you will want to check in this directory.

## Using


### Tagging commit

To tag a version of the document/project that you wish to include in the
revision history table, simply ensure that your changes are committed and add a git tag.

```bash
git tag 0.0.1-alpha
```

We can only recommend that you comply with the version naming according to [semantic versioning](https://semver.org/).

>[!NOTE]
>By default `git push` does not push tags to the remote git(s), to do so you can use `git push <remote> <tag_name>`.

### Shortcode to use

Just insert this command line in your quarto document :

```md
{{ < git-version > }}
```

>[!NOTE]
>If git is not installed or no tags has been set to the git repo, `?.?` will be printed.


## Example

Here is the source code for a minimal example: [example.qmd](example.qmd).

