#!/usr/bin/perl
use strict;
use ExtUtils::MakeMaker;

`cd lib/Char/Class && make all`;
WriteMakefile (
    NAME         => 'Char::Class',
    DISTNAME     => 'Char-Class',      
    VERSION      => '1.00',        
    #VERSION_FROM => 'lib/Char/Class.pm',
    PREREQ_PM    => {
                     'utf8' => 0,
                    },
    dist         => {COMPRESS => 'gzip', SUFFIX => '.gz'},
);
