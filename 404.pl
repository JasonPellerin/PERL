use strict;
use warnings;
$|=1;

 sub main{
       my $file = '/var/log/apache2/access.log';
       
       open(INPUT, $file) or die("Whatchu talkin bout willis?\n");
       
       while(my $line = <INPUT>) {
       	if($line =~ /404/) {
       		print $line;
       	}
       }
       close(INPUT);
 }
 main();
