# PatoCraft

## Star History

<a href="https://www.star-history.com/?repos=havaianasdestruido%2FPatoCraft&type=date&legend=top-left">
 <picture>
   <source media="(prefers-color-scheme: dark)" srcset="https://api.star-history.com/chart?repos=havaianasdestruido/PatoCraft&type=date&theme=dark&legend=top-left" />
   <source media="(prefers-color-scheme: light)" srcset="https://api.star-history.com/chart?repos=havaianasdestruido/PatoCraft&type=date&legend=top-left" />
   <img alt="Star History Chart" src="https://api.star-history.com/chart?repos=havaianasdestruido/PatoCraft&type=date&legend=top-left" />
 </picture>
</a>


Reverse-engineered MCPE 1.2.5 B2 Android port, re-branded.

## Build from source

```powershell
# Decompile (if starting from APK)
java -jar tools/apktool.jar d input.apk -o src

# Rebuild
java -jar tools/apktool.jar b src -o PatoCraft.apk

# Sign (debug)
java -jar tools/uber.jar -a PatoCraft.apk --overwrite
```

Output: `PatoCraft.apk` (58 MB, debug-signed).

## Package rename

| Original (vanilla MCPE) | PatoCraft |
|---|---|
| `com.mojang.minecraftpe` | `quack.mc.patocraft` |
| `Minecraft` | `PatoCraft` |
| `minecraftpe` (native lib) | preserved as-is |

## What changed vs vanilla

- **Package name**: `com.mojang.minecraftpe` → `quack.mc.patocraft` in all smali refs, manifest, permissions, services
- **App display name**: `Minecraft` / `Minecraft Demo` → `PatoCraft` / `PatoCraft Demo` in all 60 locale strings files
- **Build output name**: `MCPE 1.2.5 B2 SEM LICENÇA MixnealGamer.apk` → `PatoCraft.apk`

## What stays the same

- Native libs: `libminecraftpe.so`, `libfmod.so` (unchanged)
- Game assets: `behavior_packs/`, `resource_packs/`, `structures/`, etc.
- All smali bytecode (decompiled, unmodified logic)
- All resources and UI layouts
- Google Play / Xbox Live / MSA auth integration
- Amazon IAP integration
- FMOD audio engine
- SimpleFramework XML serialization
- Apache HttpMime 4.0.2
- App version: `1.2.5.12` (versionCode `871020512`)
- Min SDK 21 / Target SDK 33

## File layout

```
patocraft/
  src/
    smali/          # decompiled Java classes (quack.mc.patocraft/*)
    res/            # 60+ locale resources, layouts, drawables
    lib/            # native libs (armeabi-v7a)
    assets/         # game content, shaders, skins, packs
    AndroidManifest.xml
    apktool.yml
  tools/
    apktool.jar     # 3.0.3 - build/decompile
    uber.jar        # 1.3.0 - sign/align
```

## Tools

- **apktool** 3.0.3 (smali 3.0.9-dev) — decompiles and rebuilds Android APKs
- **uber-apk-signer** 1.3.0 — zipaligns and signs with debug keystore

Requires Java 8+ (`JAVA_HOME`).
