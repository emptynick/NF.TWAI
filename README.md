# NF.TWAI

> **Please note**: This repository is non-functional at the moment. Please star or watch it to get notified of any changes!


TWAI for ESP32 running nanoframework

## Introduction
The aim of this repository is to add Espressifs TWAI (aka CAN bus) driver to the nanoframework.  
This is a work in progress and not yet functional.

  

## Installing
> Make sure you are able to compile `nf-interpreter`.
  
### Clone the repo
You have two ways to clone this repository:

#### First
Clone the repository into your `nf-interpreter/InteropAssemblies`  folder

#### Second
Clone the repository wherever you want and symlink to the folder in `nf-interpreter/InteropAssemblies`

### Add interop assembly
Open `CMakePresets.json` and add `NF.TWAI` to your boards `NF_INTEROP_ASSEMBLIES` list  

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
  
### Copy the CMake module
Copy `FindINTEROP-NF.TWAI.cmake` found in this repo under `Stubs/NF.TWAI` to `CMake/Modules` in your `nf-interpreter` folder.

### Build the firmware
Build a firmware image (in this case for `ESP32_OLIMEX`). 
Observe the output. It should display `NF.TWAI` in `Interop assemblies included`

### Use the library
Open your nanoframework projects and add a reference to `NF.TWAI` by right-clicking on the project and selecting `Add Reference...` and then `Browse...` and selecting `NF.TWAI.dll`.

  

That's it. You can now use TWAI!