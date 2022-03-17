{-# LANGUAGE CPP #-}
{-# LANGUAGE NoRebindableSyntax #-}
{-# OPTIONS_GHC -fno-warn-missing-import-lists #-}
module Paths_lucians_luscious_lasagna (
    version,
    getBinDir, getLibDir, getDynLibDir, getDataDir, getLibexecDir,
    getDataFileName, getSysconfDir
  ) where

import qualified Control.Exception as Exception
import Data.Version (Version(..))
import System.Environment (getEnv)
import Prelude

#if defined(VERSION_base)

#if MIN_VERSION_base(4,0,0)
catchIO :: IO a -> (Exception.IOException -> IO a) -> IO a
#else
catchIO :: IO a -> (Exception.Exception -> IO a) -> IO a
#endif

#else
catchIO :: IO a -> (Exception.IOException -> IO a) -> IO a
#endif
catchIO = Exception.catch

version :: Version
version = Version [1,0,0,0] []
bindir, libdir, dynlibdir, datadir, libexecdir, sysconfdir :: FilePath

bindir     = "/home/tiago/snap/exercism/5/exercism/haskell/01-lucians-luscious-lasagna/.stack-work/install/x86_64-linux-tinfo6/0f4cb95e42ee414916c8be57954de9cf17318c188cf10b143e73c9e82984276e/8.10.7/bin"
libdir     = "/home/tiago/snap/exercism/5/exercism/haskell/01-lucians-luscious-lasagna/.stack-work/install/x86_64-linux-tinfo6/0f4cb95e42ee414916c8be57954de9cf17318c188cf10b143e73c9e82984276e/8.10.7/lib/x86_64-linux-ghc-8.10.7/lucians-luscious-lasagna-1.0.0.0-KiC0JFljeOmKUHBoc1DlV8-test"
dynlibdir  = "/home/tiago/snap/exercism/5/exercism/haskell/01-lucians-luscious-lasagna/.stack-work/install/x86_64-linux-tinfo6/0f4cb95e42ee414916c8be57954de9cf17318c188cf10b143e73c9e82984276e/8.10.7/lib/x86_64-linux-ghc-8.10.7"
datadir    = "/home/tiago/snap/exercism/5/exercism/haskell/01-lucians-luscious-lasagna/.stack-work/install/x86_64-linux-tinfo6/0f4cb95e42ee414916c8be57954de9cf17318c188cf10b143e73c9e82984276e/8.10.7/share/x86_64-linux-ghc-8.10.7/lucians-luscious-lasagna-1.0.0.0"
libexecdir = "/home/tiago/snap/exercism/5/exercism/haskell/01-lucians-luscious-lasagna/.stack-work/install/x86_64-linux-tinfo6/0f4cb95e42ee414916c8be57954de9cf17318c188cf10b143e73c9e82984276e/8.10.7/libexec/x86_64-linux-ghc-8.10.7/lucians-luscious-lasagna-1.0.0.0"
sysconfdir = "/home/tiago/snap/exercism/5/exercism/haskell/01-lucians-luscious-lasagna/.stack-work/install/x86_64-linux-tinfo6/0f4cb95e42ee414916c8be57954de9cf17318c188cf10b143e73c9e82984276e/8.10.7/etc"

getBinDir, getLibDir, getDynLibDir, getDataDir, getLibexecDir, getSysconfDir :: IO FilePath
getBinDir = catchIO (getEnv "lucians_luscious_lasagna_bindir") (\_ -> return bindir)
getLibDir = catchIO (getEnv "lucians_luscious_lasagna_libdir") (\_ -> return libdir)
getDynLibDir = catchIO (getEnv "lucians_luscious_lasagna_dynlibdir") (\_ -> return dynlibdir)
getDataDir = catchIO (getEnv "lucians_luscious_lasagna_datadir") (\_ -> return datadir)
getLibexecDir = catchIO (getEnv "lucians_luscious_lasagna_libexecdir") (\_ -> return libexecdir)
getSysconfDir = catchIO (getEnv "lucians_luscious_lasagna_sysconfdir") (\_ -> return sysconfdir)

getDataFileName :: FilePath -> IO FilePath
getDataFileName name = do
  dir <- getDataDir
  return (dir ++ "/" ++ name)
