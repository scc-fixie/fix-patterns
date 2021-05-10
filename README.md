# Matching and expanding fix patterns to enableautomatic program repair
Replication package


I. Requirements
---------------
 - [Java 1.7](https://www.oracle.com/technetwork/java/javase/downloads/java-archive-downloads-javase7-521261.html)
 - [Defects4J](https://github.com/rjust/defects4j)
 - [SVN >= 1.8](https://subversion.apache.org/packages.html)
 - [perl >= 5.0.10](https://www.perl.org/get.html)

II. Description
---------------



III. Prepare Defects4J Bugs
---------------------------
 1. Download and Install Defects4J.
 - `./installD4J.sh`
 
 2. Check out and compile each bug.
 - `./checkoutD4JBugs.sh`
    
 If you fail to install Defects4J, checkout or compile Defects4J bugs, please check [instructions](https://github.com/rjust/defects4j#steps-to-set-up-defects4j).
  
 IV. TBar fix patterns
 ---------------------
 
 V. Generate fix patterns
 ------------------------
 
 VI. Matching fix patterns
 -------------------------
 
 VII. Structure of the Directories
 -------------------------------
 ```powershell
  |--- README.md               :  user guidance
  |--- TBarFixPatterns         :  TBar fix patters
  |--- matchingFixPatterns     :  matching fix patterns
  |--- newFixPatterns          :  new fix patterns


```

----
