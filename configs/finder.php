<?php

use StubsGenerator\Finder;

return Finder::create()
    ->in( array(
        'source/dokan-lite',
    ) )
    ->append(
        Finder::create()
            ->in(['source/dokan-lite'])
            ->files()
            ->depth('< 1')
            ->path('dokan.php')
    )
    // ->notPath('customizer')
    // ->notPath('debug')
    ->sortByName(true)
;
