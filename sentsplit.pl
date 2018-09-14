#!/usr/bin/perl

( $orgcorpus, $newcorpus ) = @ARGV;

open ORG, $orgcorpus or die "Can not open the $orgcorpus!\n";
open NEW, " > $newcorpus " or die "Can not open the $newcorpus file\n";

while( <ORG> )
{
	chomp;
	@words = split;
	foreach $word ( @words )
	{
		if ( ( $word eq "." ) || ( $word eq "?" ) )
		{
			print NEW "$word\n";
		}
		else
		{
			print NEW "$word ";
		}
	}
}
