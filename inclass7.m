%Inclass assignment 7. 
% 1. The gene Cdx2 is a crucial transcription factor involved in number of
% developmental stages. Use the UCSC genome browser to answer the following questions
% about it:

% A. What human chromosome is it located on? 
13
% B. How many exons does it have? 
3
% C. What is the precise position of its stop codon in the genome?
27,971,139
% D. Identify at least one difference in sequence between human and mouse
% CDX2.
CDX2's transcript(6,350) and coding region (5,141) in mouse are smaller than when it is in human(9,003 and 5,892).

% E. In which human tissues is it expressed most abundantly?
colon, small intestine.

%2. A. Use the unigene database to find the accession number for a genbank
% entry containing the complete coding sequence of Cdx2. 
%NM_001256.5

% B. Use MATLAB to read the genbank information corresponding to that
% accession number. 
cdx2=getgenbank('NM_001256.5')

% C. Use the information read in to find the position of the start and stop
% codon within the sequence. What are the parts of the sequence before the start codon 
% and after the stop codon?
cdx2=getgenbank('NM_001265.5');
cdx2.CDS.location

ans =

    '363..1304'
%The start codon is at 363 bp, stop codon is at 1304 bp. The parts that are before the start codon and after the stop codon are introns.

% D. Use the protein_id to read the information on the protein. Use the
% information you read to determine where the homeobox domain of the protein is.
% Hint: see the field "Features". 

cdx2prot=getgenpept('NP_001256')

protein=cdx2prot.Features

Region          190..242                                                  '
    '                /region_name="Homeobox"                                   '
    '                /note="Homeobox domain; pfam00046"                        '
    '                /db_xref="CDD:306543" 

% The homeobox is in 190 to 242. 
