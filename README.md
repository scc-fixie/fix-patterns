# Matching and expanding fix patterns to enableautomatic program repair
Replication package


I. Requirements
---------------
 - [Java 1.8](https://www.oracle.com/technetwork/java/javase/downloads/java-archive-downloads-javase7-521261.html)
 - [Defects4J](https://github.com/rjust/defects4j)
 - [Git >= 1.9](https://git-scm.com/downloads)
 - [SVN >= 1.8](https://subversion.apache.org/packages.html)
 - [perl >= 5.0.12](https://www.perl.org/get.html)


II. Description
---------------
Our tool automatically generates fix patterns out of similar fixes and compares the generated fix patterns against a state-of-the-art taxonomy. Our tool splits fixes into smaller, method-level chunks and calculates their similarity. A threshold-based clustering algorithm groups similar chunks, generates fix patterns and finds matches with the state-of-the-art taxonomy. We thematically analyse non-matching clusters and observe new fix patterns that expand the existing taxonomy.

The dataset we use in our evaluation is Defects4J and the taxonomy of fix patterns is a collection of fix patterns from the APR literature found in TBar.

III. Prepare Defects4J Bugs
---------------------------
 1. Download and Install Defects4J.
 - `./installD4J.sh`
 
 2. Check out and compile each bug.
 - `./checkoutD4JBugs.sh`
    
 If you fail to install Defects4J, checkout or compile Defects4J bugs, please check [instructions](https://github.com/rjust/defects4j#steps-to-set-up-defects4j).
  
 IV. TBar fix patterns
 ---------------------
 
 TBar is a template-based automated program repair tool that applies fix patterns from a taxonomy collected form the APR literature.
 
 For more details about the taxonomy of fix patterns and the TBar tool, please see [publication](https://dl.acm.org/doi/10.1145/3293882.3330577).
 
 For more details about how we automatically match our fix patterns with TBar fix patterns in our evaluation, please see [TBar fix patterns](https://github.com/35fjq0/fixPatterns/blob/main/TBarFixPatterns.md).
 
 V. Generate fix patterns
 ------------------------
 
 VI. Matching fix patterns
 -------------------------
 
 VII. Structure of the Directories
 -------------------------------
 ```powershell
  |--- README.md               :  user guidance
  |--- TBar.md                 :  TBar fix patters
  |--- MatchingFPs             :  matching fix patterns
  |--- NewFPs                  :  new fix patterns


```

----
