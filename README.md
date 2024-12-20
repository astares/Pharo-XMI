# Pharo-XMI
XML Metadata Interchange for [Pharo](https://www.pharo.org)

[![Build](https://github.com/astares/Pharo-XMI/actions/workflows/build.yml/badge.svg)](https://github.com/astares/Pharo-XMI/actions/workflows/build.yml)

[![Pharo 9](https://img.shields.io/badge/Pharo-9.0-%23aac9ff.svg)](https://pharo.org/download)
[![Pharo 10](https://img.shields.io/badge/Pharo-10-%23aac9ff.svg)](https://pharo.org/download)
[![Pharo 11](https://img.shields.io/badge/Pharo-11-%23aac9ff.svg)](https://pharo.org/download)
[![Pharo 12](https://img.shields.io/badge/Pharo-12-%23aac9ff.svg)](https://pharo.org/download)
[![Pharo 13](https://img.shields.io/badge/Pharo-13-%23aac9ff.svg)](https://pharo.org/download)

Install
---------

```Smalltalk
Metacello new 
	repository: 'github://astares/Pharo-XMI/src';
	baseline: 'XMI';
	load 	
```	

Usage
---------
You can open an XMI object either from a given stream or URL
```Smalltalk
(XMIFile fromURL: 'http://www.omg.org/spec/UML/20131001/UML.xmi') inspect
```	

You can also open a file if you like:

```Smalltalk
XMIFile importFile
```	

Screenshot
---------
![XMI](images/xmi_gt.png)

