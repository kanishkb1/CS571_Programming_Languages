#	***Team Members***

#	Name: Kanishk Barhanpurkar
#	B-Number: B00863529
#	E-mail: kbarhan1@binghamton.edu
	
#	Name: Pavan Gangareddy
#	B-Number: B00854317
#	E-mail: pgangar1@binghamton.edu

#!/usr/bin/perl
#strict- to restrict unsafe restricts.
use strict;
#warnings-to control optional warnings
use warnings;

#Opening file in read mode
print "The contents of input.txt file are as follows-\n";
print("\n");
open(r,"<","input.txt")
	or die "File input.txt could not open";
print(<r>);

#declaration of local variable
	my $c;
	my $count;
	my $input_file="input.txt";
    	open INPUT, "$input_file";
    	print("\n");
    	while(<INPUT>)
    		{
        		$c = "$_";
        		chomp($c);
        
        		#Each if-condition one necessary conditions
        		#1. That contains hi
        		#2. Exactly one vowel characters
        		#3. strings that contains two or more 'l'
        		#4. strings that begin with letter "h" and end with "t"
        		
        		
        		if($c=~m/hi/)
        			{
         			   print "$c contains \"hi\"\n ";
        			}
        
        		
        		if($c=~m/^[^aeiou]*[aeiou][^aeiou]*$/)
        			{
            			   print "$c contains one vowel characters \n";
        			}
        
        		
			$count= $c=~tr/l/l/;
        		if($count>=2)
        			{
            			  print "$c contains two or more \'l\' \n";
        			}
        
        		
        		if($c=~/^h/ && $c=~/t$/)
        			{
         			   print "$c begins with letter h and ends with t \n";
        			}
        
        
    		}
    
   	 close(INPUT);
	#closing file declared in form of alias    

	close(r);
	#closing file with -r operator
	



