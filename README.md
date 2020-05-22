# Wannaroo Extra Industries (WRExInd)

NewGRF for OpenTTD - Extra industries for WRBI, can also be used with other industry sets. These are industries I've written for experimentation/testing/fun, but may be useful in your games.

1. About

     Too many trees? The Lumber Mill will clear those for you. Need to chillax? Build a Distillery. Jonesing for a chemical fix? Your friendly Hydrocracking Plant has what you need. Too many town goods? Take them all to the Distribution Center. Reduce, reuse, recycle with the Recycling Depot and Plant.

1. Compatibility

    Wannaroo Extra Industries should be compatible with other industry sets. However, no checks are carried out when starting a game. Load multiple industry sets at your own risk.
    
    I have spot-checked (but not extensively tested) with default OpenTTD industries, PBI, Manpower Industries, OpenGFX+&nbsp;Industries, and FIRS 3 basic economies x3 with sensible results. Will work with Wannaroo Basic Industries (WRBI).

    Compatibility with any newgrf is not guaranteed. No warranties are expressed or implied.

    Not valid for Toyland.

    Requirements: OpenTTD 1.9.0 or later, vehicle sets that support new cargos.

1. Features

    * 8 new industries:
        * Distribution Center :moneybag: : Accepts: food, goods, petrol, alcohol, building materials, engineering & farm supplies. Produces: nothing
        * Lumber Mill :evergreen_tree: : Copy of default lumber mill for tree growth control. Available in all climates. Enable if you need tree growth control or an industry to produce wood.
        * Distillery :beer: : Accepts: grain | wheat | maize, fruit. Produces: alcohol
        * Hydrocracking Plant :test_tube: : Accepts: waste | coal, oil, wood. Produces: chemicals, petrol. Dynamic output based on transported %
        * City Hall :classical_building: : Accepts & produces tourists (if present), otherwise passengers. Manual placement only. Displays town information for Pikka's TaI house set (version Gamma 1).
        * Desalination Plant :potable_water: : Accepts: nothing. Produces: chemicals (temp, arctic) | water (tropic), stone | chemicals. Produced cargos will vary depending on your in-game industry set.
        * Recycling Chain (2 industries): :recycle: : Transport recyclables from the Depot to the Plant, then deal with the waste in order to produce steel | paper | copper. Waste transported % must be at least 65% to enable 2nd cargo production.
    
    * Parameters: hopefully are self-explanatory

1. Development

    The usual pnml/nml files with C includes and macros. However, Distribution Center tweaks are done in nfo.
    
     1. run build.sh to generate the nfo file.
     1. copy/paste sprites from `src/docs/distribution_center_nfo_tweaks.txt` into the nfo file.
     1. run grfcodec.sh to generate the tar file.    
    
    I built this newgrf on Linux Mint 19.3 using gcc version 7.5.0, NML version 0.4.5, and grfcodec version 6.0.6 r991.
    
    Translations gladly accepted. Please open an issue on GitHub (https://github.com/jrook1445/wannaroo-extra-industries) and attach your lang file so I can include it in a release.

1. License

    GPL v2

1. Credits

    Author of this newgrf: jrook1445 (https://github.com/jrook1445)

    Source code: https://github.com/jrook1445/wannaroo-extra-industries

    Credit and Acknowledgements (with sincere thanks and appreciation):

    OpenGFX: re-use of base set sprites: all contributors/developers as listed in 6.0 Credits, https://github.com/OpenTTD/OpenGFX/blob/master/README.md

    FIRS 3: industry and cargo colours, cargo definitions, cargo icons; ideas for industry location checks: andythenorth et. al. as listed in credits.txt, http://bundles.openttdcoop.org/firs/releases/3.0.12/credits.txt
    
    Beaches as Industries: ideas for slope, water tile checks: 2TallTyler @ https://github.com/2TallTyler/beach_ind/releases

    OpenGFX+ Industries 0.3.5: ideas for C macros and industry location checks: Ingo von Borstel (aka planetmaker) et. al. as listed in readme.ptxt, https://dev.openttdcoop.org/projects/ogfx-industries/repository/entry/docs/readme.ptxt

    ECS industry extension: ideas for C macros and industry location checks: Maciej Czapkiewicz (aka McZapkie), https://dev.openttdcoop.org/projects/ecs-industry-extension

    NML and NFO: with many thanks to all the developers/contributors of NML, NFO, and the documentation/newgrf spec website at https://newgrf-specs.tt-wiki.net/wiki/Main_Page

    Inspiration: ECS industry extension, PBI, FIRS

:peace_symbol:
