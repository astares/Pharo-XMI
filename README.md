# Pharo-XMI
XML Metadata Interchange for [Pharo](https://www.pharo.org), written by Dipl.-Inf. Torsten Bergmann

[![Astares](https://img.shields.io/badge/astares.com-08305C?style=flat&logo=data:image/svg%2bxml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIGhlaWdodD0iNDQwIiB3aWR0aD0iNTAwIj48cG9seWdvbiBwb2ludHM9IjI1MCwwIDUwMCw0NDAgMCw0NDAiIHN0eWxlPSJmaWxsOndoaXRlIj48L3BvbHlnb24+PHBvbHlnb24gcG9pbnRzPSI1NSw0MjcgMjUwLDM1NSA0NDUsNDI3IiBzdHlsZT0iZmlsbDojMEE2MjlFIj48L3BvbHlnb24+PHBvbHlnb24gcG9pbnRzPSIyNSwgNDI1IDI0MywgMzUgMjQzLDM0MCIgc3R5bGU9ImZpbGw6Izg1QjVENCI+PC9wb2x5Z29uPjxwb2x5Z29uIHBvaW50cz0iNDc1LCA0MjUgMjU3LCAzNSAyNTcsMzQwIiBzdHlsZT0iZmlsbDojNTQ5NEJGIj48L3BvbHlnb24+PC9zdmc+)](https://www.astares.com)

[![Pharo](https://img.shields.io/static/v1?style=for-the-badge&message=Pharo&color=3297d4&logo=Harbor&logoColor=FFFFFF&label=)](https://www.pharo.org) 

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

