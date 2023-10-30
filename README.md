About:
======

This repository contains the samples and instrument editor meta data to build the
standard instrument tarball for SpectMorph. To build a standard instrument tarball
for SpectMorph, use

    ./make-dist

To build one single instrument, use the build script with the instrument name

    ./build.sh trumpet

To edit a sample, create a zip file of the directory, for instance like this

    cd trumpet
    zip ../tmp/trumpet.sminst *

You can then import the sample into SpectMorph in the instrument editor. Finally
when done editing, replace the contents of the directory with the new contents
from the sminst file.

Origin of the Samples / Copyrights:
===================================

* alto-flute: IMIS
* alto-saxophone: IMIS
* bassoon: IMIS
* bass-clarinet: IMIS
* bass-trombone: IMIS
* cello: IMIS
* claudia-ah: CC0
* claudia-ih: CC0
* claudia-oh: CC0
* double-bass: IMIS
* french-horn: IMIS
* mirko-ah: CC0
* mirko-oh: CC0
* oboe: IMIS
* pan-flute: Fluid (R3) GM SoundFont
* reed-organ Fluid (R3) GM SoundFont
* soprano-saxophone: IMIS
* sven-ah: CC0
* sven-ih: CC0
* sven-oh: CC0
* synth-saw: CC0
* trumpet: IMIS
* viola: IMIS
* violin: IMIS

Licenses:

* CC0: samples were sampled for this project and released as public domain (CC0)
* IMIS: The Iowa Musical Instruments Samples are in the Public Domain and may be used in any way that you wish without any restriction whatsoever.
* Fluid (R3) GM SoundFont: From README: "I hereby release Fluid under the MIT license, as described in COPYING."
