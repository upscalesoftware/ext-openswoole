Swoole ↔ Open Swoole
====================

The split of the Swoole community into [Swoole](https://github.com/swoole/swoole-src) and [Open Swoole](https://github.com/openswoole/swoole-src) projects has left its ecosystem at crossroads:
either stick with the original PHP extension or switch over to its fork.

Metapackages [upscale/ext-swoole](https://github.com/upscalesoftware/ext-swoole) and [upscale/ext-openswoole](https://github.com/upscalesoftware/ext-openswoole) declare the two extensions as interchangeable.
They enable PHP projects to support both extensions instead of choosing one or the other.

**Features:**
- Unique version constraints for `swoole` and `opensoole`
- Constraints resolution delegated to Composer
- Metapackage ships no code, just constraints

## Usage

Declare compatibility with both extensions in your `composer.json`:
```diff
     "require": {
-        "ext-swoole": "^4.0"
+        "upscale/ext-swoole": "^4.0",
+        "upscale/ext-openswoole": "^4.0"
     }
```

Presence of either extension will satisfy the requirements.

## Versioning

This metapackage mirrors official releases of [swoole/swoole-src](https://github.com/swoole/swoole-src).
They are being tagged automatically.

Specify different constraints for each extension:
```json
{
  "require": {
    "php": "~8.2.0",
    "upscale/ext-swoole": "^4.8.12",
    "upscale/ext-openswoole": "^4.12.0"
  }
}
```

## License

Copyright © Upscale Software. All rights reserved.

Licensed under the [Apache License, Version 2.0](https://github.com/upscalesoftware/ext-swoole/blob/master/LICENSE.txt).