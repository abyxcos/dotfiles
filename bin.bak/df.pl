#!/usr/bin/env perl
my @df = `df -Hl`;
shift(@df);

foreach (@df) {
	@_ = split(' ');
	$_[5] =~ s|^.*/|/|;
	if(length($_[5]) < 4) {
		$_[5].="\t";
	} else {
		$_[5] = substr($_[5], 0, 7);
	}
	printf("%s\t\t%4s\/%4s free (%3s)\n", $_[5], $_[3], $_[1], $_[4]);
}

