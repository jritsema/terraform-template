# terraform-template

This repo is intended to be used as a simple template for spinning up new terraform projects.

This repo uses [asdf](https://asdf-vm.com/) to manage the `terraform` CLI and the various other tools it depends upon.

```
 Choose a make command to run

  init    project initialization - install tools and register git hook
  tffmt   runs terraform fmt against iac/base and iac/env/dev
```

Note that you can set your `AWS_PROFILE` in `.envrc` and it will get automatically loaded by `direnv`.
