# NF.TWAI

> **Please note**: This repository is non-functional at the moment. Please star or watch it to get notified of any changes!

TWAI for ESP32 running nanoframework

## Introduction

The aim of this repository is to add Espressifs TWAI (aka CAN bus) driver to the nanoframework.  
This is a work in progress and not yet functional.

## Installing

- Make sure you are able to compile `nf-interpreter`.
- Either clone the repo into `nf-interpreter/InteropAssemblies/NF.TWAI` or clone it somewhere else and symlink to `nf-interpreter/InteropAssemblies/NF.TWAI`.
- In your `CMakePresets.json` add `NF.TWAI` to the `NF_INTEROP_ASSEMBLIES` list.

For example:

```
{
    "name": "ESP32_OLIMEX_preset",
    "inherits": [
        "general-preset",
        "xtensa-esp32-preset"
    ],
    "cacheVariables": {
        "NF_INTEROP_ASSEMBLIES" : "NF.TWAI"
    }
}
```

- Build a firmware image (in this case for `ESP32_OLIMEX`) and flash it to your device with `nanoff`
- Open your nanoframework projects and add a reference to `NF.TWAI` by right-clicking on the project and selecting `Add Reference...` and then `Browse...` and selecting `NF.TWAI.dll`.

That's it. You can now use TWAI!