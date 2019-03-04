----------------------------------------------------------------------------

*************************************
* Programs that make use of PROSITE *
*************************************

Name        : PROSITE.PRG
Topic       : Describes the programs (academic or commercial) that make use
              of the PROSITE database. Also includes a section on email and
              WWW servers
Last revised: July 1999

Author      : Amos Bairoch
              Swiss Institute of Bioinformatics
              Centre Medical Universitaire
              1, Rue Michel Servet, 1211 Geneva 4
              Switzerland

              Email    : bairoch@medecine.unige.ch
              Telephone: +41-22-702 54 77
              Fax      : +41-22-702 55 02

----------------------------------------------------------------------------
----------------------------------------------------------------------------
1) PUBLIC DOMAIN PROGRAMS
----------------------------------------------------------------------------
----------------------------------------------------------------------------

Program     : MacPattern

Author      : Rainer Fuchs
              Address  : ARIAD Pharmaceuticals
                         Hoechst-Ariad Genomics Center
                         26 Landsdowne St.
                         Cambridge, MA 02139
                         USA
              Telephone: +1-617-4940400 (ext. 268)
              Email    : fuchs@ariad.com

Runs on     : Apple MacIntosh; System 6.0.5 or greater, MultiFinder
              compatible.

Version     : 3.1 of September 1993.

Citation    : Fuchs R.
              MacPattern: protein pattern searching on the Apple MacIntosh.
              Comput. Appl. Biosci. 7:105-106(1991).

              Fuchs R.
              Predicting protein function: a versatile tool for the Apple
              MacIntosh.
              Comput. Appl. Biosci. 10:171-178(1994).

Availability: Available from the  EBI File Server.   Send a message  to  the
              following  address:  netserv@ebi.ac.uk,  the   message  should
              contain the following line:

                      GET MAC_SOFTWARE:MACPATTERN.HQX

              You will receive back by email a  file  containing MacPattern,
              once you have transferred  it to you Mac you must decode it by
              (Un)StuffIt.

              Also available  by  anonymous  ftp  from  "ftp.ebi.ac.uk", the
              program can be found in "/pub/software/mac/macpattern.hqx"

Description : MacPattern allows you to use  PROSITE (or any pattern database
              adhering to the PROSITE conventions) for searching protein (or
              DNA) sequences for the occurence of known patterns.    You may
              search for all patterns in the database,  for selected entries
              or you may create "patterns sets".  The complete documentation
              for each pattern in Prosite can be accessed easily. Output can
              be viewed on screen, printed, saved to disk  or  copied to the
              Clipboard. MacPattern accepts to read protein sequences in the
              following  formats:  SWISS-PROT,   NBRF/PIR,  Pearson's FASTA,
              Intelligenetics,  DNA-Strider,  DNAid, and ASCII.  Works  with
              individual   sequences  or   sets   of   sequences,  including
              SWISS-PROT on the EMBL CD-ROM.

              Version 2.0 and later  also utilise Henikoff's BLOCKS database
              for searches of protein  sequences  with site-specific scoring
              matrices. Output is  evaluated  according  to  the  "strength"
              value provided in each database entry.   Another option is the
              identification of  statistically significant  protein segments
              using the Maximal Segment Score method by Karlin and Altschul.

----------------------------------------------------------------------------

Program     : PATTERN

Author      : Olivier Boulot
              Address  : Genethon
                         13, place de Rungis
                         75013 Paris
                         France
              Telephone: +33-1-45651300
              Email    : lydie.bougueleret@genset.fr

Runs on     : Unix
Language    : C (code is available).

Version     : 1.0 of January 1991.

Citation    : None (if necessary cite as unpublished method).

Availability: Send an email message to the author.

Description : PATTERN will scan a sequence or a  protein   sequence database
              with the patterns  stored in PROSITE.   It  entirely  supports
              the PROSITE syntaxe. Can also work on nucleotides.

----------------------------------------------------------------------------

Program     : pftools (pfscan, pfsearch, GtoP) 

Author      : Philipp Bucher 
              Address  : Swiss Institute for Experimental Cancer Research 
                         Ch. des Boveresses 155
                         CH-1066 Epalinges s/Lausanne 
                         Switzerland 
              Telephone: +41-21-692-5892
              FAX      : +41-21-652-6933
              Email    : pbucher@isrec-sun1.unil.ch 

Runs on     : Unix
Language    : Fortran 77 (code is available).

Version     : 1.0 of December 1995.

Citation    : None (if necessary cite as unpublished method).

Availability: Available from ISREC ftp server. Anonymous FTP to
              "ftp.ch.embnet.org"; the files are located in
              "/pub/sib-isrec/pftools".

Description : pfscan scans a single sequence for the  occurrences of several
              PROSITE matrix entries.
              pfsearch searches  a sequence database for  occurrences  of  a
              single PROSITE matrix entry.
              GtoP converts a GCG formatted profile into a PROSITE formatted 
              generalized profile.   

----------------------------------------------------------------------------

Programs    : PIP, SPLITP1, SPLITP2, SPLITP3.

Author      : Rodger Staden
              Address  : MRC Laboratory of Molecular Biology
                         Hills Road
                         Cambridge, CB2 2QH
                         United Kingdom
              Telephone: +44-223-248011
              Email    : rs@mrc-lmb.cam.ac.uk

Runs on     : VAX with VMS or Ultrix
              DEC Alpha (OSF 1)
              Unix (Sun OS; Solaris; IRIX; etc.)

Citation    : Staden R.
              Screening protein and nucleic acid sequences against libraries
              of patterns.
              DNA Sequence 1:369-374(1991).

Availability: Send an email message to the author.

Description : PIP can screen  protein sequences  against  the  whole PROSITE
              database or against a specific pattern entry in PROSITE.

              SPLITP1: splits the  file  PROSITE.DAT  so  that  there  is  a
              separate file for each entry. Each file is automatically named
              "psentry-number.dat"  (example PS00197.DAT).  In   addition an
              index file is created.

              SPLITP2: splits the  file  PROSITE.DOC  so  that  there  is  a
              separate   file   for  each  document entry.   Each   file  is
              automatically named "pdocentry-number.doc" (example PDOC00128.
              DOC).

              SPLITP3: intereprets the PROSITE.DAT file and rewrites it in a
              notation speicific for the PIP program.  This utility produces
              various files.

----------------------------------------------------------------------------

Program     : PPS
Author      : Wang Huaichun
              Address  : Department of Biotechnology Information Service
                         Institute of Medical Information
                         27 Taiping Road
                         Beijing 100850
                         China
              Telephone: +86-1-8214640
              FAX      : +86-1-8213044

Citation    : Wang H., He Y.
              PPS: A computer program for searching protein motifs based on
              the PROSITE database.
              China High Tech. Lett. 4:30-33(1994).

Runs on     : MS-DOS
Language    : C

Version     : 1.0

Availability: Available in China from the author.

Description : Program to search  protein sequences  for  the  occurrence  of
              PROSITE patterns.

----------------------------------------------------------------------------

Program     : ProSearch

Author      : Lee F. Kolakowski Jr.
              Address  : Dept. of Pharmacology
                         Univ. Texas Health Science Center
                         7703 Floyd Curl Drive
                         San Antonio, 78284-7764
                         USA
              Telephone: +1-210-5674233
              FAX      : +1-210-5674303
              Email    : kolakowski@uthsca.edu

Runs on     : Any system with a complete implementation  of  AWK programming
              language. Is known to run on Unix platforms, VAX VMS, MS-DOS.
Language    : AWK

Version     : 2.1 of September 1992

Citation    : Kolakowski L.F. Jr., Leunissen J.A.M., Smith J.E.
              ProSearch: fast searching of protein sequences with regular
              expression patterns related to protein structure and function.
              Biotechniques 13:919-921(1992).

Availability: Available from the  EBI File Server.   Send a message  to  the
              following  address:  netserv@ebi.ac.uk,  the   message  should
              contain one of the following three lines:

                     GET UNIX_SOFTWARE:PROSEARCH.UAA
                     GET VAX_SOFTWARE:PROSEARCH.UAA
                     GET DOS_SOFTWARE:PROSEARCH.UAA

              You will then receive back  by   email  the  file containing a
              shell archive of ProSearch.  Non-Unix version will be packaged
              in ZOO archives or as VMS DCL_Shell archives.

Description : ProSearch allows  direct  searching of regular expressions  on
              protein sequences.     The PROSITE patterns must be translated
              into Unix-style regular expressions  by hand or by cregex (see
              the description   for   that program).  One  or  more  protein
              sequences can be swiftly  searched  for  all  patterns  in the
              database. Patterns can be easily  developed and added  to  the
              database.  All  output is  written  to standard output, and as
              such can be redirected to  any device.   The  input  format is
              constrained to  just  sequence, but many input formats can  be
              handled by   filtering    the     input     through    READSEQ
              (gilbert@iubio.vax.indiana.edu). There are 2 levels of output.
              The simplest is  a  table  of sites in the protein which match
              patterns in  the  database,  and the pattern's name.  The more
              complete output is this  table,   the   sequence matched,  and
              the PROSITE documentation associated with the pattern.

----------------------------------------------------------------------------

Program     : cregex

Author      : Jack A.M. Leunissen
              Address  : CAOS/CAMM Center
                         University of Nijmegen
                         Toernooiveld
                         6525 ED Nijmegen
                         The Netherlands
              Telephone: +31-80-652248
              Email    : jackl@caos.caos.kun.nl

Runs on     : VAX with VMS, Unix, MS-DOS
Language    : C (code is available).

Version     : 1.2 of September 1992

Citation    : None (if necessary cite as unpublished method).

Availability: Available from the  EBI File Server.   Send a message  to  the
              following  address:  netserv@ebi.ac.uk,  the   message  should
              contain one of the following three lines:

                     GET UNIX_SOFTWARE:CREGEX.C
                     GET VAX_SOFTWARE:CREGEX.C
                     GET DOS_SOFTWARE:CREGEX.C

              You will receive back by email a file containing cregex.c

Description : cregex  reformats  the  native PROSITE database  into  a  file
              containing regular  expressions,  which  can  be  used  in the
              pattern matching language AWK. Entries  containing a range are
              split into multiple patterns.   The regular expression file is
              most conveniently used in  combination with  PROSEARCH scripts
              (see the description for that program).

----------------------------------------------------------------------------

Program     : prosite

Author      : Klaus Hartmuth
              Address  : Institut fuer Biochemie
                         University of Vienna
                         Waehringerstrasse 17
                         A-1090 Vienna
                         Austria
              Telephone: +43-222-436141-56
              Email    : a5161dad@vm.univie.ac.at

              Manfred D. Zorn (for the UNIX version)
              Address  : Human Genome Center  MS 50B-3238
                         Lawrence Berkeley Laboratory
                         1 Cyclotron Road
                         Berkeley, CA 94720
                         USA
              Telephone: +1-510-4865041
              Email    : mdzorn@lbl.gov

Runs on     : IBM 3090 mainframe under VM/CMS
              Unix
Language    : C (code is available).

Version     : 1.2 of October 1991.

Citation    : None.

Availability: VM/CMS version: send an email message to the author

              UNIX version: by anonymous ftp from "genome.lbl.gov"; the file
              to get (in binary mode) is: ProSite.shar.Z and  is  located in
              the directory "/pub/prosite".

Description : Scans a given protein  sequence  for  the  occurrence  of  any
              pattern listed in PROSITE. Input files in SWISS-PROT, FASTA or
              plain ASCII formats are recognized.  The program output can be
              saved in an ASCII file and shows the position  of the patterns
              under the sequence, as well as the  complete  PROSITE pattern.
              Program flags  can  be set  to exclude the PROSITE.DOC  or  to
              include  the  PROSITE.DAT information.  A  position  table  of
              pattern occurences is produced for each pattern.

              A complete list  of  flags  is obtained by calling the program
              with the -h flag, as shown here:

              usage: prosite -hixvrqst -w <num> -p <num> [in.file] [out.file]

                -h        help
                -i        include PROSITE.DAT info
                -x        exclude PROSITE.DOC info
                -v        show program version
                -r        show library release
                -q        keep quiet
                -s        suppress output
                -t        create prosite.tbl
                          supply target disk as optional argument (CMS only)
                -w <num>  aa/line in output
                -p <num>  pattern size to ingnore

----------------------------------------------------------------------------

Program     : Scrutineer

Authors     : Peter R. Sibbald, Hubert Sommerfeldt, and Patrick Argos

              Address  : EMBL Data Library
                         PostFach 10.2209
                         D-69012 Heidelberg
                         Germany
              Telephone: +49-6221-387491
              Email    : sibbald@EMBL-Heidelberg.DE

Runs on     : VAX with VMS
              Unix
Language    : Pascal (code is available).

Version     : June 1992.

Citation    : Sibbald P.R., Argos P.
              Scrutineer: a computer program that flexibly seeks and
              describes motifs and profiles in protein sequence databases.
              Comput. Appl. Biosci. 6:279-288(1990).

              Sibbald P.R., Sommerfeldt H., Argos P.
              Automated protein sequence pattern handling and PROSITE
              searching.
              Comput. Appl. Biosci. 7:535-536(1991).

Availability: Available from the  EBI File Server.   Send a message  to  the
              following  address:  netserv@ebi.ac.uk,  the   message  should
              contain the following line:

                      GET VAX_SOFTWARE:SCRUTINE.UAA

              You will then receive by email the program split into 9 parts;
              you must then UUDECODE  these files  using the UUD program and
              uncompress the resulting file using the ZOO program. If you do
              not have the UUD or ZOO programs  or  if the above description
              seems cryptic to you, then you should first send the following
              message to netserv@ebi.ac.uk:

                      HELP VAX_SOFTWARE

              Also available by  anonymous  ftp  from "ftp.ebi.ac.uk",   the
              program can be found in "/pub/software/vax/scrutine.uaa".

Description : Scrutineer  is  a   program  designed  for  searching  protein
              sequences for patterns, motifs, alignments and so on.   A very
              wide  range  of   patterns  can  be  handled.  One  option  in
              Scrutineer  is  to  place patterns  in  a file and then search
              typically a  small  number  of sequences for all patterns.  We
              provide PROSITE patterns in Scrutineer format in a file. A new
              protein  sequence  can  be  readily  searched  for all PROSITE
              patterns.  The interface to the program is simple  and command
              driven. The code is portable.  The  user  may  easily generate
              their own patterns for later use. Scrutineer does NOT make use
              of the  documentation associated with each PROSITE pattern (to
              tour the documentation we use routines like VAX SEARCH or Unix
              grep instead). A manual comes with the program.

----------------------------------------------------------------------------

Program	    : PROTOMAT

Authors	    : Jorja Henikoff and Steven Henikoff
	      Address  : Howard Hughes Medical Institute
                         Fred Hutchinson Cancer Research Center
                         1124 Columbia Street, M-684
                         Seattle, WA 98104
                         USA
              Telephone: +1-206-6674515
              Email    : henikoff@sparky.fhcrc.org

Runs on     : IBM PC compatible systems; DOS 3.1 and higher
              SUN (Sparc) with SunOS Version 4

Version     : 5.0 of June 1992

Citation    : Henikoff S., Henikoff J.
              Automated assembly of protein blocks for database searching.
              Nucleic Acids Res. 19:6565-6572(1991).

Availability: Both MS-DOS and Unix  versions are available  by anonymous ftp
              from ncbi.nlm.nih.gov. The files to get (in binary mode) are:

              A) For DOS:

              In the "/repository/blocks/protomat.dos" directory.
              You should get all the files in that directory.

              B) For Unix:

              In the "/repository/blocks/protomat.unix" directory.
              You should get:

		     README.protomat
                     protomat.tar.Z

              You should then, once the files are transferred:

              uncompress protomat.tar.Z
              tar -xvf protomat.tar
              cd protomat
              make protomat

Description : Reads an entry from PROSITE.DAT and extracts all true positive
              and false  negative  sequences  listed  there from SWISS-PROT.
              Runs H.O. Smith's  "motif"  algorithm (PNAS 87:826-830) on the
              group of  proteins  and  extends   the  motifs   into  blocks.
              Assembles a "best path" set of blocks describing the group  of
              proteins.

----------------------------------------------------------------------------

Program     : PATMAT

Author	    : James C. Wallace
              Address  : Fred Hutchinson Cancer Research Center
                         1124 Columbia Street
                         Seattle, WA 98104
                         USA
              Telephone: +1-206-6674501
              Email    : root@fred.fhcrc.org

Runs on     : IBM PC compatible systems; DOS 3.1 amd higher
              Unix

Version     : 2.3 of 1993

Citation    : Wallace J.C., Henikoff S.
              PATMAT: a searching and extraction program for sequence,
              pattern and block queries and databases.
              Comput. Appl. Biosci. 8:249-254(1992).

Availability: Both MS-DOS and Unix  versions are available  by anonymous ftp
              from ncbi.nlm.nih.gov. The files to get (in binary mode) are:

              A) For DOS:

              In the "/repository/blocks/patmat.dos" directory.
              You should get all the files in that directory.

              B) For Unix:

              In the "/repository/blocks/patmat.unix" directory.
              You should get:

       	             README.patmat.unix
	             patmat.tar.Z

              You should then, once the files are transferred:

	      uncompress patmat.tar.Z
	      tar -xvf patmat.tar

	      Note: Executable files are included for SUN Sparc, DEC and
              Silicon Graphics workstations. Rename the appropriate file
              "patmat", e.g.
	
              mv sparcpatmat patmat

Description : General database searching  tool  with a simple and clear user
              interface. Can searches  PROSITE.DAT  as  a  pattern database.
              Searches other databases with patterns as probes.

----------------------------------------------------------------------------

Programs    : dbsite and mksite

Authors     : Jean-Michel Claverie, Isabelle Sauvaget, and Herve Recipon
              Telephone: +33-4-91717896
              Email    : jmc@ir1cbm.cnrs-mrs.fr

Runs on     : Unix
Language    : C (code is available).

Version     : 2.0 of January 1992.

Citation    : Claverie J.-M., Sauvaget I.
              WOOB.C: a portable software package for defining and
              searching ambiguous sequence patterns
              Protein Seq. Data Anal. 4:119-121(1991).

Availability: Send an email message to the first author.

Description : dbsite searches a set  of  sequences  (from  one to  an entire
              database) in  FASTA format for patterns defined  as  position/
              weight matrices. Pattern  definition  is  straigthforward  and
              scans  are  fast.   Options  include   thresholding  and  both
              tabulated and re-entrant (e.g. FASTA format) outputs.

              mksite makes  weight  matrice patterns  out of either multiple
              alignments or PROSITE patterns definition (PA line).

----------------------------------------------------------------------------

Program(s)  : QUELSITE

Author      : C. Valencien
              Address  : BISANCE - CITI2
                         45 rue des Saints-Peres
                         75270 Paris Cedex 06
                         France
              Telephone: +33-142962489
              Email    : bisance@frciti51.bitnet

Runs on     : VAX with VMS (Fortran)

Version     : June 1991.

Citation    : Dessen P., Fondrat C., Valencien C., Mugnier C.
              BISANCE: A French service for access to biomolecular sequence
              databases.
              Comput. Appl. Biosci. 6:355-356(1990).

Description : QUELSITE  is  a  program  which  is  integrated in the BISANCE
              structure (national server in France). It permits to query all
              items of the PROSITE database as keywords, patterns, access or
              documentation numbers.

----------------------------------------------------------------------------

Program(s)  : SIGNPT

Author      : Phillipe Dessen
              Address  : GIS INFOBIOGEN
                         7 rue Guy Moquet - BP8
                         94801 VILLEJUIF Cedex
                         France
              Telephone: +33-145595241
              Email    : dessen@infobiogen.fr

Runs on     : Unix or VMS
Language    : Fortran 77

Version     : November 1992.

Citation    : Dessen P., Fondrat C., Valencien C., Mugnier C.
              BISANCE: A French service for access to biomolecular sequence
              databases.
              Comput. Appl. Biosci. 6:355-356(1990).

Description : SIGNPT is a program which is  integrated  in  the  SQX package
              (EMBNet national server in France).  It permits to search  the
              PROSITE  patterns  on any protein  sequence (personal  or from
              PIR,  SWISS-PROT  databanks).  Probability  of  occurence   is
              evaluated  from  the  mean abundance  of  amino acids  in  the
              database. A given level of mismatch is authorized.

----------------------------------------------------------------------------

Program     : PATTERN

Author      : C. Geourjon and Gilbert Deleage
              Address  : Institut de Biologie et Chimie des Proteines
                         UPR 412-CNRS
                         Universite Claude Bernard Lyon 1
                         7, passage du Vercors
                         F-69367 Lyon Cedex 07
                         France
              Telephone: +33-472722647
              Fax      : +33-472722601
              Email    : deleage@ibcp.fr

Runs on     : IBM RISC 6000 under AIX (Unix), also available for DOS. Soon
              available under MS-Windows
Language    : F77 Fortran.

Version     : 2.0 (Unix), 5.5 (DOS)

Citation    : Geourjon C., Deleage G.
              Interactive and graphic coupling between multiple alignments,
              secondary structure predictions and motif/pattern scanning
              into proteins.
              Comput. Appl. Biosci. 9:87-91(1993).

Availability: Can be obtained for non-commercial use; write  to  the authors
              or contact them by electronic mail.

Description : Part  of  the  ANTHEPROT software package for protein sequence
              analysis. Can scan a sequence with the patterns stored  in the
              PROSITE.DAT file or with user-defind patterns stored using the
              same syntax. The user can set an optional similarity  thresold
              or mismatch number.

----------------------------------------------------------------------------

Program     : SMART (Sequence Motif Analysis and Retrieval Tool)

Author      : Ogiwara Atushi et al.
              Address  : Human Genome Center, Institute of Medical Science
                         The University of Tokyo
                         4-6-1, Shirokanedai, Minato-Ku
                         Tokyo 108
                         Japan
              Telephone: +81-3-5449 5614
              Fax      : +81-3-5449 5434
              Email    : ogi@ims.u-tokyo.ac.jp

Runs on     : Unix (Sun workstations), XView window system (with color
              monitor), and the Internet
Language    : C

Version     : 1.1B

Citation    : Ogiwara A., Uchiyama I., Kanehisa M.
              Sequence Motif Analysis and Retrieval Tool.
              (In) Proceedings of Genome Informatics Workshop IV, Takagi T.,
              Imai H., Miyano S., Mitaku S., Kanehisa M., Eds., pp402-409,
              Universal Academy Press, Tokyo, (1993).

              Ogiwara A., Uchiyama I., Takagi T., Kanehisa M.
              Further improvements on SMART: Sequence Motif Analysis and
              Retrieval Tool.
              (In) Proceedings of Genome Informatics Workshop 1994, Miyano S., 
              Akutsu T., Imai H., Gotoh O., Takagi T., Eds., pp206-207,
              Universal Academy Press, Tokyo, (1994).

Availability: By FTP  from ftp.genome.ad.jp  in  the directory /pub/hgc/smart
              SMART is not a public domain program, a license form (available
              on the FTP server) must be signed and sent back before you have
              the legal right to use the program.

Description : Find  out  protein    sequence  motifs  described in PROSITE or
              MotifDic. The programs not only searches  locations  of  motifs
              but also  gives additional  information  related to  the  found
              motifs which  may  help users to annotate the query sequence by
              presenting structural  and functional examples of the motifs in
              the actual protein.

----------------------------------------------------------------------------
----------------------------------------------------------------------------
2) COMMERCIAL PROGRAMS
----------------------------------------------------------------------------
----------------------------------------------------------------------------

Program(s)  : PROSITE in the PC/Gene package

Runs on     : IBM PC compatible systems; DOS 3.1 and higher

Version     : 5.10 in PC/Gene release 6.8

Company info: IntelliGenetics, Inc. / Oxford Molecular

              Address  : IntelliGenetics
                         Oxford Science Park
                         Oxford OX4 46A
                         U.K.

              Telephone: +44-1865-784 620
              Fax      : +44-1865-784 619

Description : This program is part  of  the PC/Gene protein  and  nucleotide
              sequence  analysis package,  it  allows  the  user  to  scan a
              protein sequence for the occurence of PROSITE patterns.    The
              output shows the list  of  hits  in  a tabular form as well as
              annotations under  a standard three-letter code representation
              of the sequence. So as to expound the biological relevance  of
              the sites detected in  a sequence the  program can display the
              documentation relevant to each pattern detected in a sequence.
              The PROSITE documentation file  can  also  be searched for the
              occurence of one or more word(s).

----------------------------------------------------------------------------

Program(s)  : QUEST in the IntelliGenetics Suite package

Runs on     : Sun with SunOS Version 4.0 or greater
              VAX with VMS 5.4 or greater

Version     : Release 5.4 of the IntelliGenetics Suite

Company info: IntelliGenetics, Inc. / Oxford Molecular

              Address  : IntelliGenetics
                         Oxford Science Park
                         Oxford OX4 46A
                         U.K.

              Telephone: +44-1865-784 620
              Fax      : +44-1865-784 619

Description : The QUEST program allows a user to  scan  a data bank for  any
              pattern of characters in a sequence or annotations.   Patterns
              can be entered by  the  user or can be taken  from  over  3000
              known patterns provided with the program.  These  protein  and
              nucleic acid patterns include those found in PROSITE, patterns
              in  the  Transcription  Factors Database (TFD),  and  patterns
              entered from the literature by IntelliGenetics.

              You can  also use QUEST to  scan  your  sequence  against  the
              PROSITE data bank or any of the  other  patterns provided with
              the IntelliGenetics Suite.

----------------------------------------------------------------------------

Program(s)  : PROSITE in the GeneWorks(R) Program

Runs on     : Apple MacIntosh; System 6.x and 7.

Version     : 4.0 in GeneWorks release 2.2.1

Company info: IntelliGenetics, Inc. / Oxford Molecular

              Address  : IntelliGenetics
                         Oxford Science Park
                         Oxford OX4 46A
                         U.K.

              Telephone: +44-1865-784 620
              Fax      : +44-1865-784 619


Description : PROSITE is  incorporated in   three  different  parts of   the
              GeneWorks program.  All or a portion of the patterns described
              in PROSITE can be displayed in the sequence view of GeneWorks.
              The sites described in PROSITE  can also be seen in GeneWorks'
              Graphic view, which shows a graphic  schematic of the sequence
              and can compare the PROSITE graphic  with other elements, such
              as plots of hydrophobicity, structure, and others.   GeneWorks
              is also capable of searching  all  of  the SWISS-PROT database
              for patterns.  It is  possible to  enter  any  of  the PROSITE
              patterns in GeneWorks Query view to search the data bank.  The
              PROSITE  documentation  describing  each  of  the  patterns is
              available as on-line GeneWorks help. By selecting the pattern,
              the  user  can  bring up a  printable  window  containing  the
              appropriate PROSITE help.

----------------------------------------------------------------------------

Program(s)  : MOTIFS in the Wisconsin Package

Runs on     : VAX with VMS 5.0 or greater
              DEC-AXP with Open VMS 1.0 or greater
              Silicon Graphics (RISC) with IRIX Version 5.0
              SUN (Sparc) with SunOS Version 4.1.3 or Solaris version 2.2

Version     : 8.01

Company Info: Genetics Computer Group

              Address  : 575 Science Drive
                         Madison, WI 53711
                         U.S.A.

              Telephone: +1-608-2315200
              Fax      : +1-608-2315202
              Email    : help@gcg.com

Description : MOTIFS looks for  protein  sequence motifs  by  checking  your
              protein  sequence for  every  sequence  pattern in the PROSITE
              database. Symbol mismatches can be allowed. For each find, the
              output file displays  the original  complex  pattern  from the
              PROSITE database and the  actual (simplified) pattern that was
              identified.  As an option, the PROSITE documentation  relevent
              to each 'found' pattern can be included in the output file.

----------------------------------------------------------------------------

Program(s)  : PROMOT

Runs on     : Silicon Graphics IRIX, Hewlett Packard 700, SUN Sparcstations
              Is expected to be ported to VAX under VMS,

Version     : 1

Company Info: Oxford Molecular Ltd (OML)

              Address  : Magdalen Centre
                         Oxford Science Park
                         Sandford-on-Thames
                         Oxford OX4 4GA
                         United Kingdom

              Telephone: +44-865-784600
              Fax      : +44-865-784601

Citation    : Sternberg M.J.E.
              PROMOT: A FORTRAN program to scan protein sequences against a
              library of known motifs.
              Comput. Appl. Biosci. 7:257-260(1991).

Description : PROMOT will  scan  one  or   more  protein  sequences  against
              PROSITE. Statistics of the matches are evaluated. User-defined
              patterns can also be input.  PROMOT will also scan one or more
              motifs against a  protein  sequence  database in SWISS-PROT or
              PIR-NBRF formats.

----------------------------------------------------------------------------

Program(s)  : Protean, GeneMan

Runs on     : Apple MacIntosh

Company info: DNASTAR, Inc.

              Address  : DNASTAR, Inc.
                         1228 South Park Street
                         Madison, WI 53715
                         U.S.A.

              Telephone: +1-608-2587420
              Fax      : +1-608-2587439

              Address  : DNASTAR, Ltd.
                         Abacus House, Manor Road
                         West Ealing, London W13 OAS
                         United Kingdom

              Telephone: +44-81-5668282
              Fax      : +44-81-5669555

Description : Protean and GeneMan are part of the LaserGene  protein and DNA
              sequence analysis package.   Protean allows the user to scan a
              protein   sequence  for  the  occurence  of  PROSITE patterns.
              GeneMan   allows  the user to scan a  protein database for the
              occurence of PROSITE patterns.   The  output displays  matches
              in a tabular form  as well as graphically.  The  programs also
              display the documentation relevant to each pattern detected in
              a sequence.

----------------------------------------------------------------------------

Program(s)  : Motif Master

Runs on     : IBM PC compatible systems; DOS 3.1 and higher

Version     : 2.0

Company info: National Biosciences Inc.

              Address  : 3650 Annapolis Lane N., suite 140
                         Plymouth, MN 55447
                         U.S.A.

              Telephone: +1-612-5502012 or +1-800-7474362
              Fax      : +1-612-5509625 or +1-800-3695118
              Email    : nbi@natbio.com

              Author   : Maltchenko S.
                         Molecular Biology Department
                         National Biosciences, Inc.

Citation    : Ioannou Y.A.
              Motif Master 1.0.
              Biotechnol. Software 12(6):4-5(1995).

Description : Motif  Master  searches  protein  sequence  files  or sequence
              databases against the PROSITE database. Files &  databases may
              also be searched against user-generated databases or patterns.
              Search results  (pattern matches) may be  displayed  on-screen
              or outputted to a file. Motif Master also searches the PROSITE
              documentation  file,  from  which  specific  chapters  may  be
              retrieved. The program accepts DNA or RNA pattern databases as
              well, for  searching  nucleic acid sequence files. PIR, SWISS-
              PROT,  EMBL and GenBank formats are  all compatible with Motif
              Master as well as plain sequence files.

----------------------------------------------------------------------------

Program(s)  : BIOSEARCH/PR 

Runs on     : ?

Version     : ?

Company info: Fujitsu Ltd.

              Address  : 9-3 Nakase 1-Chome, Mihama-Ku
                         Chiba-Shi 
                         Chiba 261
                         Japan

              Telephone: +81-43-?
              Fax      : +81-43-299 3019
              Email    : ?

Description : ?

----------------------------------------------------------------------------
----------------------------------------------------------------------------
3) Electronic mail servers
----------------------------------------------------------------------------
----------------------------------------------------------------------------

Name       : EBI Mail-PROSITE Server
Organiz.   : European Bioinformatics Institute / Hinxton / UK
Description: Allows to rapidly compare  a  new  protein  sequence against all
             patterns stored in PROSITE.
Address    : prosite@ebi.ac.uk
Contact    : To report problems: nethelp@ebi.ac.uk
Note       : Can also be used with WWW.

-----------------------------------------------------------------------------

Name       : BLOCKS e-mail searcher
Organiz.   : Fred Hutchinson Center / Seattle / USA
Description: Compares a protein or DNA  sequence  to  the current database of
             protein blocks.  Blocks  are  short  multiply  aligned  ungapped
             segments corresponding to the  most  highly conserved regions of
             proteins. The BLOCKS database has been constructed by successive
             application  of  the  automated PROTOMAT  system  to  individual
             entries in PROSITE.  You can  also  use  this server to retrieve
             specifics blocks and PROSITE entries.
Address    : blocks@howard.fhcrc.org
Contact    : To report problems: henikoff@howard.fhcrc.org

-----------------------------------------------------------------------------

Name       : MOTIF E-Mail Server on GenomeNet
Organiz.   : Supercomputer Laboratory / Institute for Chemical Research /
             Kyoto / Japan
Description: Allows  to rapidly  compare  a new protein sequence against  all
             patterns  stored  in PROSITE as well as in the MotifDic library.
Address    : motif@genome.ad.jp
Contact    : To report problems: motif-manager@genome.ad.jp

----------------------------------------------------------------------------
----------------------------------------------------------------------------
4) WWW servers
----------------------------------------------------------------------------
----------------------------------------------------------------------------

Name       : ScanProsite
Organiz.   : Swiss Institute of Bioinformatics / Switzerland
Description: Allows to scan a sequence against the patterns from PROSITE or a
             pattern against SWISS-PROT.
Address    : http://www.expasy.ch/tools/scnpsite.html
Contact    : To report problems: gasteige@medecine.unige.ch

-----------------------------------------------------------------------------

Name       : ProfileScan
Organiz.   : Swiss Institute of Bioinformatics / Switzerland
Description: Allows to scan a sequence against the profiles from PROSITE or a
             profile against SWISS-PROT.
Address    : http://www.isrec.isb-sib.ch/software/PFSCAN_form.html
Contact    : To report problems: laurent.falquet@isrec.unil.ch

-----------------------------------------------------------------------------

Name       : PPSEARCH
Organiz.   : European Bioinformatics Institute / Hinxton / UK
Description: Allows to scan a sequence against the patterns from PROSITE. This
             implementation allows a graphical output.
Address    : http://www2.ebi.ac.uk/ppsearch/

-----------------------------------------------------------------------------

Name       : PROSITE
Organiz.   : Pole Bio-informatique Lyonnais / France
Description: Allows to scan a sequence against the patterns from PROSITE. This
             implementation allows to define a level of mismatches.
Address    : http://pbil.ibcp.fr/cgi-bin/npsa_automat.pl?page=npsa_prosite.html

-End-of-document-------------------------------------------------------------
