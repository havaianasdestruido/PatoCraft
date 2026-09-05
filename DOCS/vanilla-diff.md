# PatoCraft vs Vanilla MCPE — Detailed Differences

## Package and Identity

### Vanilla MCPE
- **Package**: `com.mojang.minecraftpe`
- **Display name**: `Minecraft` / `Minecraft Demo`
- **Lib name**: `minecraftpe` (native `.so`)
- **Permission base**: `com.mojang.minecraftpe.permission.C2D_MESSAGE`

### PatoCraft
- **Package**: `quack.mc.patocraft`
- **Display name**: `PatoCraft` / `PatoCraft Demo`
- **Lib name**: `minecraftpe` (unchanged — native libs are precompiled)
- **Permission base**: `quack.mc.patocraft.permission.C2D_MESSAGE`

## Manifest Changes

| Element | Vanilla | PatoCraft |
|---|---|---|
| `<manifest package>` | `com.mojang.minecraftpe` | `quack.mc.patocraft` |
| MainActivity | `com.mojang.minecraftpe.MainActivity` | `quack.mc.patocraft.MainActivity` |
| NotificationListenerService | `com.mojang.minecraftpe.NotificationListenerService` | `quack.mc.patocraft.NotificationListenerService` |
| GcmReceiver category | `com.mojang.minecraftpe` | `quack.mc.patocraft` |
| Permission name | `com.mojang.minecraftpe.permission.C2D_MESSAGE` | `quack.mc.patocraft.permission.C2D_MESSAGE` |

## String Resources

Updated in all 60+ locale files (`values-*`):

| String key | Vanilla | PatoCraft |
|---|---|---|
| `app_name` | `Minecraft` | `PatoCraft` |
| `app_name_demo` | `Minecraft Demo` | `PatoCraft Demo` |
| `app_name_short` | `Minecraft` | `PatoCraft` |
| `app_name_short_demo` | `Minecraft Demo` | `PatoCraft Demo` |

`DeepLink_LeaveMinecraft_*` strings are preserved as-is (refer to "Minecraft" in dialog text).

## Smali Changes

### Internal package move
```
src/smali/com/mojang/minecraftpe/  →  src/smali/quack/mc/patocraft/
```
All 46 smali files moved and their class declarations updated:
```
.class public Lcom/mojang/minecraftpe/MainActivity;
  ↓
.class public Lquack/mc/patocraft/MainActivity;
```

### Internal references
All smali class references (`L...;`, `L.../...;`, `L.../.../...;`) updated from `Lcom/mojang/minecraftpe/` to `Lquack/mc/patocraft/`.

### Cross-package references (NOT changed — intentional)
- `com/mojang/android/StringValue` — separate mojang package for UI strings
- `com.mojang.minecraftpe.permission.C2D_MESSAGE` in `Minecraft_Market.smali` — Play Store billing reference (must match Play Store listing)
- `market://details?id=com.mojang.minecraftpe` — billing intent URI (must match Play Store)

These reference the original Play Store package name and must remain unchanged for in-app purchases and Play Store integration to function.

## Native Libraries (unchanged)

```
src/lib/armeabi-v7a/libminecraftpe.so  # main game engine
src/lib/armeabi-v7a/libfmod.so          # FMOD audio
```

These are precompiled ARM binaries. Package rename does not affect them.

## Game Assets (unchanged)

All content under `src/assets/` is identical to vanilla:
- `behavior_packs/` — game rules, loot tables, entities
- `resource_packs/` — textures, sounds, models
- `structures/` — structure files
- `shaders/` — OpenGL shaders
- `skins/` — default skin packs
- `store/` — store assets

## Third-party Libraries (unchanged)

| Library | Location | Version |
|---|---|---|
| SimpleFramework XML | `smali/org/simpleframework/xml/` | git master |
| Apache HttpMime | `unknown/org/apache/http/` | 4.0.2 |
| FMOD audio | `lib/libfmod.so` | bundled |
| Microsoft Auth (MSA) | `smali/Microsoft/`, `smali/Ms/` | bundled |
| Facebook SDK | `smali/bolts/`, `smali/android/` | bundled |
| Google Play GCM | `smali/android/` | deprecated |

## Build Metadata

| Field | Value |
|---|---|
| `apkFileName` | `PatoCraft.apk` |
| `versionCode` | `871020512` |
| `versionName` | `1.2.5.12` |
| `minSdkVersion` | `21` |
| `targetSdkVersion` | `33` |
| `platformBuildVersionName` | `5.1.1-1819727` |

## What Needs No Change

- All `.dex` bytecode in native libs
- All `.so` native libraries
- All resource IDs (hex IDs in `public.xml`)
- All `R$*.smali` field declarations
- All layout XML IDs
- All drawable references
- All raw resource references (audio, fonts)
- Intent filters and deep link patterns (`.mcworld`, `.mcpack`, etc.)

## Known Considerations

1. **Play Store billing** — `Minecraft_Market.smali` hardcodes `com.mojang.minecraftpe` in the Play Store billing intent. Changing this breaks in-app purchases. Leave as-is or update Play Console listing.

2. **MSA/Xbox auth** — Microsoft Account services reference their own packages; not affected by app rename.

3. **FMOD native lib** — `libfmod.so` is a prebuilt binary. Any native JNI changes require recompiling from FMOD Studio source.

4. **armeabi-v7a only** — native libs are only for ARM v7+. x86/ARM64 builds require original native source.
