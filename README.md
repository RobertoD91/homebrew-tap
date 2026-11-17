# Homebrew tap

Personal [Homebrew](https://brew.sh) tap of [RobertoD91](https://github.com/RobertoD91).

## IcoNVader

An unofficial rebuild of the classic IcoNVader screen saver for modern macOS
(Apple Silicon and Intel, macOS 11 or later), signed and notarized by Apple.
Project page: [RobertoD91/IcoNVader-rebuild](https://github.com/RobertoD91/IcoNVader-rebuild).

```bash
brew install --cask robertod91/tap/iconvader
```

Then choose **IcoNVader** in **System Settings → Screen Saver**.

```bash
brew upgrade --cask iconvader
```

After upgrading, quit System Settings and run `killall legacyScreenSaver`, otherwise macOS keeps
the previous version loaded.

```bash
brew uninstall --cask --zap iconvader
```

`--zap` also removes the screen saver's preferences.
