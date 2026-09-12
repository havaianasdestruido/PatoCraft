# TODO / Audit Notes — PatoCraft rebuild

## Status

Gradle (AGP 8.7.3 + Gradle 8.9 + JDK 17) now produces both debug and release APKs for PatoCraft (quack.mc.patocraft, versionName 1.2.5.12). Resource packaging (AAPT2), manifest merge, DEX, packaging, and signing all pass.

- Debug: `android/app/build/outputs/apk/debug/app-debug.apk` (~61 MB)
- Release: `android/app/build/outputs/apk/release/app-release.apk` (~59 MB, signed with debug keystore)

## Open items

- [ ] Install/launch smoke test on a device (surface, natives, audio, input). The missing-class stubs (StringValue, Platform, InputDeviceManager, GcmListenerService, hockeyapp/appsflyer/facebook/microsoft compat shims) are compile-only and are the highest runtime risk.
- [ ] Real signing config for release (currently `signingConfigs.debug`).
- [ ] jadx`ed non-vendor framework trees that were excluded to reach green build are documented below; nothing in the game native path depends on them.

## Excluded trees (compile only — retained in repo, excluded via sourceSets)

These vendor SDKs are excluded from the Gradle compile so the game core builds green. They remain present in the repo (full 1:1 decompile held in `android/app/src/main/java`):

- `android/support/**` (struts support-v4)
- `bolts/**`
- `com/appsflyer/**`, `com/facebook/**`, `com/google/**` (incl. gms/gcm), `com/googleplay/**`, `com/microsoft/**`
- `Microsoft/**`, `Ms/**` (telemetry)
- `net/hockeyapp/**`
- `org/apache/**`, `org/simpleframework/**`
- `com/amazon/**` (deleted — needs Amazon Appstore certification; only referenced by string constants)

## Compat stubs (in `android/app/src/main/java/compat/**`)

Minimal, no-op, compile-only stand-ins matching the exact surface used by game core:

| Stub | Used by |
|---|---|
| com.appsflyer.{AppsFlyerLib, AFInAppEventParameterName, AFInAppEventType} | MainActivity |
| com.facebook.internal.ServerProtocol (2 constants) | MainActivity, MainActivity$HeadsetConnectionReceiver |
| com.google.android.gms.gcm.GcmListenerService | NotificationListenerService |
| com.microsoft.xbox.services.{NotificationHelper, NotificationResult} | NotificationListenerService |
| net.hockeyapp.android.{Constants, CrashManager, CrashManagerListener, NativeCrashManager, metrics.MetricsManager} | MainActivity, MainActivity$16 |
| org.apache.james.mime4j.field.ContentTypeField | MainActivity (share) |
| com.mojang.android.StringValue | MainActivity (user input values) |
| quack.mc.patocraft.platforms.Platform | MainActivity, HardwareInformation (getABIS) |
| quack.mc.patocraft.input.InputDeviceManager | MainActivity |
| android.support.v4.{app.ActivityCompat, content.ContextCompat} | MainActivity |

## Reconstructed classes absent from the recovered dex

`com.mojang.android.StringValue`, `quack.mc.patocraft.platforms.Platform`, and `quack.mc.patocraft.input.InputDeviceManager` are referenced by the dex but their definitions are absent from every decompile output (jadx + apktool smali). Reimplemented by hand from call-site usage:

- StringValue: `getStringValue()`, ctors, setter
- Platform: `createPlatform(boolean)`, `onAppStart(View)`, `onVolumePressed()`, `onViewFocusChanged(boolean)`, `getABIS()`
- InputDeviceManager: `create(Activity)`, `register()`, `unregister()`

## JADX artifacts fixed (compile-only semantics preserved)

- `MainActivity` inner classes split out of MainActivity.java (T1). `HardwareInformation$CPUInfo` inlined as real inner static class.
- `TextInputProxyEditTextbox$MCPEKeyWatcher` kept as standalone interface; references use `$` name.
- `getFileDataBytes()` reconstructed: `tmp`/`ByteArrayOutputStream` were initialized *after* the loop that used them.
- `onNewIntent()` content-URI copy: removed impossible `IOException` catch nesting; guarded `input` null in finally.
- `font` attr renamed `mcpe_font` (AAPT2 duplicate-value conflict with support lib's `attr/font`).
- `pubilc.xml` restored from source (stable IDs, 76,620 bytes); checked-in `R.java`/`BuildConfig.java` of app package removed (AGP generates).

## Known warnings (accepted)

- Resource `xbid_welcome_to_xbox` removed without default value (duplicate-class check warning).
- `StyledTextView` `obtainStyledAttributes` styleable mismatch on com.microsoft.onlineid.sdk — silently no-ops.