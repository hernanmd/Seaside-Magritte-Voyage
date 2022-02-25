# Description

A meta-package for Pharo which installs latest stable releases of the following Open Source tookits and frameworks:

- [Seaside](https://github.com/SeasideSt/Seaside): The framework for developing web applications in Smalltalk.
- [Magritte](https://github.com/magritte-metamodel/magritte): A fully dynamic meta-description framework.
- [Voyage](https://github.com/pharo-nosql/voyage): An object persistence abstraction layer for Pharo. 

# Installation

```smalltalk
EpMonitor disableDuring: [ 
	Metacello new
		baseline: 'SeasideMagritteVoyage';
		repository: 'github://hernanmd/Seaside-Magritte-Voyage/src';
		onConflictUseLoaded;
	load ]
```
