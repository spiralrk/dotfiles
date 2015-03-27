#!/usr/bin/perl

#$latex = 'platex -synctex=1 %O %S';
#$bibtex = 'pbibtex %O %B';
#$dvipdf = 'dvipdfmx %O %S';
#$pdf_mode = 3;
#$pdf_previewer = 'evince';

$latex = $latex='platex -kanji=utf8 -guess-input-enc -synctex=1 -interaction=nonstopmode %S';
$bibtex = 'jbibtex';
$dvipdf = $dvipdf='dvipdfmx -f ptex-ipaex.map %S';
$dvips = 'pdvips';
$dvi_previewer = 'start xdvi';
$pdf_previewer = 'start evince';
$pdf_mode = 3;
