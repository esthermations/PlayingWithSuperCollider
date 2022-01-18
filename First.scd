
s.boot;

// I am evaluating this line to stop whatever sound is playing... there's probably a better way to do that
s.reboot;

{ SinOsc.ar(440, 0, 0.2) }.play;

// Different oscillations for each ear
{
	var leftOsc  = SinOsc.kr(0.5, 1.5pi, 0.5, 0.5);
	var rightOsc = SinOsc.kr(0.5, 1.0pi, 0.5, 0.5);
	[ SinOsc.ar(440, 0, leftOsc), SinOsc.ar(440, 0, rightOsc) ];
}.play;

// Pink noise panning left to right
{
	Pan2.ar(PinkNoise.ar(0.2), SinOsc.kr(0.5))
}.play;

// Uhhh.. adding noises....
{
	var oscillation = SinOsc.kr(0.5);
	var noise = PinkNoise.ar(0.2) + Saw.ar(110, 0.2);

	Pan2.ar(noise, oscillation)
}.plot;