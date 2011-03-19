#! /usr/bin/env perl
use Cairo;
use Math::Trig;

$output_file = "/tmp/circlock.png";
$size = 32;
$ring = 4;
$spacer = 6;
$degree_offset = -(pi)/2;	# Start circle at 12 instead of 3
$minute_ratio = pi/30;		# Convert minutes to radians
$hour_ratio = pi/6;			# Convert hours to radians

my $surface = Cairo::ImageSurface->create('argb32', $size, $size);
my $cr = Cairo::Context->create($surface);
$cr->set_source_rgb(0.85, 0.85, 0.85);
$cr->set_line_width($ring);

my ($second, $minute, $hour) = localtime();
$hour -= ($hour - 12 >= 0) ? 12 : 0;	# Shift to 12 hour clock
#if ($hour == 0) { $hour = 12; }			# 0 o'clock or 12 o'clock

# Minutes arc
$cr->arc($size/2, $size/2, $size/2 - $ring/2,
	$degree_offset, $degree_offset + $minute * $minute_ratio);
$cr->stroke();

# Hour arc
$cr->arc($size/2, $size/2, $size/2 - $ring/2 - $spacer,
	$degree_offset, $degree_offset + $hour * $hour_ratio
	+ $minute * $minute_ratio/12);
$cr->stroke();

$cr->show_page;
unlink($output_file);
$surface->write_to_png($output_file);
