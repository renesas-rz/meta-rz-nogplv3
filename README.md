# meta-rz-nogplv3

This layer supports removing GPLv3 software from the Yocto build for Renesas RZ reference BSP.

Note:
- This layer replaces default shell `bash` (which has GPLv3 license) by `zsh` shell.  
  `zsh` shell is not guaranteed to be full compatible with `bash`, but normal shell script should run fine.
- Because `coreutils` has GPLv3 license, it will be replaced by `uutils-coreutils` from meta-openembedded.  
  Note that `uutils-coreutils` is not yet fully compatbile with `coreutils`.

## Dependencies

| Name              | Layers      | Repository                                     | Branch    |
| ---               |  ---        | ---                                            | ---       |
| poky              | meta        | https://git.yoctoproject.org/poky              | scarthgap |
| meta-openembedded | meta-oe     | https://git.openembedded.org/meta-openembedded | scarthgap |
| meta-renesas      | meta-rz-bsp <br> meta-rz-distro | https://github.com/renesas-rz/meta-renesas     | scarthgap |

## How to use

Simply add this layer to bitbake build system
```bash
    $ bitbake-layers add-layer ../meta-rz-nogplv3/
```
