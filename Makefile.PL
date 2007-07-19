#!/usr/bin/perl
use strict;
use ExtUtils::MakeMaker;

`cd lib/Char/Class && make all`;
WriteMakefile (
    NAME         => 'CharClass',
    DISTNAME     => 'charclass',      
    VERSION      => '1.0',
    PREREQ_PM    => {
                     'utf8' => 0,
                    },
    dist         => {COMPRESS => 'gzip', SUFFIX => '.gz'},
);
