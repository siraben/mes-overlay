# Nix overlay for Mes-related packages

This repository is an overlay containing packages related to [GNU Mes](https://www.gnu.org/software/mes/), a project that is used in significantly reducing binary seed bootstrap of GNU Guix, and potentially, [NixOS](https://github.com/NixOS/nixpkgs/issues/123095) in the future.

Currently I have packaged the following:

- `blynn-compiler`, a bootstrapped compiler for a subset of Haskell
- `kaem`, a minimal build tool
- `m2-planet`, a minimal compiler for a subset of C
- `mescc-tools`, bootstrapping tools for Mes (minimal shell, hex assembler, macro assembler)
- `mescc-tools-seed`, trusted binary seeds less than 1 KB in size

Let's make sure we keep bootstrapping our systems into the future!

### Related work

- [Bootstrappable Builds](http://bootstrappable.org/)
- @melg8's [bootstrap seeds in Nix](https://github.com/melg8/cit/tree/feature/BootstrapNix/bootstrap_nix/bootstrap_seeds)
- [live-bootstrap](https://github.com/fosslinux/live-bootstrap)

