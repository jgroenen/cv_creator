<?php

$filename = "cv_johan_groenen";

$xslDoc = new DOMDocument();
$xslDoc->load("{$filename}.xsl");

$xmlDoc = new DOMDocument();
$xmlDoc->load("{$filename}.xml");

$proc = new XSLTProcessor();
$proc->importStylesheet($xslDoc);

$htmlDoc = $proc->transformToDoc($xmlDoc);

$htmlDoc->preserveWhiteSpace = false;
$htmlDoc->formatOutput = true;
$htmlDoc->saveHTMLFile("index.html");

readfile("index.html");
