## TearlessCEF ##

A port of CryCEF for DirectX 11. CryEngine not required.

In other words, an attempt to create an open-source project inspired by Coherent Labs' [Coherent UI for Native Engines](http://coherent-labs.com/product-coherent-ui/).

**n.b., support platforms: win64, list ends.**

See also: [What should developers consider when using Chromium Embedded Framework (CEF) in their games?](http://coherent-labs.com/blog/what-developers-should-consider-when-using-chromium-embedded-framework-cef-in-their-games/)

**n.b., I am not affiliated with Coherent Labs, nor have I evaluated any of their products.**

This project is comprised of many sub-projects, which have been stripped, mangled, and molested into taking part unwillingly.

You should clone the **Master Project** with `git clone --recursive` but that is a work in progress.  Instead, clone all sub-modules into a common directory. See below.

The test executable is a stripped down example from [AntTweakBar](http://anttweakbar.sourceforge.net).

The other components were sourced from the following repos:

 - https://github.com/CapsAdmin/bare-minimum-cryengine3
 - https://github.com/CoherentLabs/Plugin_D3D
 - https://github.com/hendrikp/CryHTML5
 - https://github.com/hendrikp/Plugin_SDK

And are forked as sub-modules to the **Master Project** as:

 - https://github.com/sfinktah/AntTweakBar
 - https://github.com/sfinktah/CryHTML5
 - https://github.com/sfinktah/Plugin_D3D
 - https://github.com/sfinktah/Plugin_SDK
 - https://github.com/sfinktah/bare-minimum-cryengine3

### Installation ###

*n.b., I use cygwin, so you must translate my Unix into your point and click frappery.*

    mkdir TearlessCEF && cd TearlessCEF
    for submodule in 
    for submodule in AntTweakBar CryHTML5 Plugin_D3D Plugin_SDK bare-minimum-cryengine3
    do
        git clone https://github.com/sfinktah/$submodule
    done

### Building ###

    AntTweakBar/build.bat

*n.b., this is a work in progress, and is not guaranteed to compile, build, or run without causing catastrophic system failures.*

