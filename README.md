Achilles
========
**A**utomated **C**haracterization of **H**ealth **I**nformation at **L**arge-scale **L**ongitudinal **E**vidence **S**ystems (ACHILLES)

Achilles provides descriptive statistics on an OMOP CDM database.  ACHILLES currently supports CDM version 5.3 and 5.4.

User Documentation
==================
Documentation can be found on the [package website](https://ohdsi.github.io/Achilles).

Features
========
- Performs broad database characterization
- Export feature for [ARES](https://github.com/OHDSI/Ares)
- Export feature for AchillesWeb (deprecated)

Technology
==========
Achilles is an R package.

System Requirements
============
Requires R (version 4.0 or higher). 

Installation
=============
1. See the instructions [here](https://ohdsi.github.io/Hades/rSetup.html) for configuring your R environment, including RTools and Java.

2. In R, use the following commands to download and install Achilles:

  ```r
  install.packages("remotes")
  remotes::install_github("OHDSI/Achilles")
  ```

Support
=======
* Developer questions/comments/feedback: <a href="http://forums.ohdsi.org/c/developers">OHDSI Forums</a>
* We use the <a href="https://github.com/OHDSI/Achilles/issues">GitHub issue tracker</a> for all bugs/issues/enhancements

Contributing
============
Read [here](https://ohdsi.github.io/Hades/contribute.html) how you can contribute to this package.

License
=======
Achilles is licensed under Apache License 2.0

Development
===========
Achilles is being developed in R Studio.

Development status
==================
Achilles is ready for use.

#### Acknowledgements
- This project is supported in part through the National Science Foundation grant IIS 1251151.
