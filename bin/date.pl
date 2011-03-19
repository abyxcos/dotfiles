#! /usr/bin/env perl
use Cairo;

# Config Variables
$output_file = "/tmp/geeklet_date.png";
$file_x = 120;
$file_y = 50;
$date_font = "Helvetica Neue";

# Return a formatted time (long day, hour:minute, am/pm)
sub get_time {
	my @weekDays = qw(Sunday Monday Tuesday Wednesday Thursday Friday Saturday Sundway);
	my ($second, $minute, $hour, $date, $month, $yearOffset, $weekDay, $yearDay, $dst) = localtime();

	my $am = ($hour - 12 >= 0) ? "PM" : "AM";
	if ($am eq "PM") { $hour -= 12; }
	if ($hour == 0) { $hour = 12; }
	my $time = sprintf("%02d:%02d", $hour, $minute);
	return ($weekDays[$weekDay], $time, $am);
}


my $surface = Cairo::ImageSurface->create('argb32', $file_x, $file_y);
my $cr = Cairo::Context->create($surface);

$cr->select_font_face($date_font, normal, bold);
$cr->set_source_rgb(0.85, 0.85, 0.85);
#$cr->set_source_rgb(0.35, 0.35, 0.35);
my ($day, $time, $am) = get_time();

# Extents
$cr->set_font_size(18);
my $day_ex = $cr->text_extents($day);
$cr->set_font_size(36);
my $time_ex = $cr->text_extents($time);
$cr->set_font_size(18);
my $am_ex = $cr->text_extents($am);

# Time
$cr->set_font_size(36);
$cr->move_to(0, $day_ex->{height} + $time_ex->{height} + 3);
$cr->show_text($time);

# AM/PM
$cr->set_font_size(18);
$cr->move_to($time_ex->{width} + $time_ex->{x_bearing}, $day_ex->{height} + $am_ex->{height} + 3);
$cr->show_text($am);

# Day
$cr->set_font_size(18);
$cr->move_to($time_ex->{width} + $time_ex->{x_bearing} + $am_ex->{width} - $day_ex->{width}, $day_ex->{height});
$cr->show_text($day);

$cr->show_page;
unlink($output_file);
$surface->write_to_png($output_file);

