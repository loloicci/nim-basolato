# Package

version       = "0.2.6"
author        = "Hidenobu Itsumura @dumblepytech1 as 'medy'"
description   = "A fullstack web framework library for Nim"
license       = "MIT"
srcDir        = "src"
backend       = "c"
bin           = @["basolato/cli/ducere"]
binDir        = "src/bin"
installExt    = @["nim"]
skipDirs      = @["basolato/cli"]

# Dependencies

requires "nim >= 1.0.0"
requires "cligen >= 0.9.41"
requires "https://github.com/dom96/jester#4c39652"
# requires "karax >= 1.1.0"
requires "https://github.com/pragmagic/karax#7440393"
requires "bcrypt >= 0.2.1"
requires "nimAES >= 0.1.2"
requires "https://github.com/enthus1ast/flatdb >= 0.2.4"
requires "allographer >= 0.8.0"

# import strformat
# from os import `/`

# task docs, "Generate API documents":
#   let
#     deployDir = "deploy" / "docs"
#     pkgDir = srcDir / "basolato"
#     srcFiles = @[
#       "base","controller","logger","middleware","routing","view"
#     ]

#   if existsDir(deployDir):
#     rmDir deployDir
#   for f in srcFiles:
#     let srcFile = pkgDir / f & ".nim"
#     exec &"nim doc --hints:off --project --out:{deployDir} --index:on {srcFile}"
