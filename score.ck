// savage - oh my god ~
SndBuf sample => dac;
0.4 => sample.gain;
me.dir() + "/audio/Savage-cut-vocals.wav" => string filename;
filename => sample.read;
0 => sample.pos;
sample.length() => now;

// savage melody
me.dir() + "/audio/Savage_vocal1.wav" => filename;
filename => sample.read;
0 => sample.pos;
sample.length() => now;

me.dir() + "/audio/Savage_vocal2.wav" => filename;
filename => sample.read;
0 => sample.pos;
sample.length() => now;

me.dir() + "/audio/Savage_vocal3.wav" => filename;
filename => sample.read;
0 => sample.pos;
sample.length() => now;

me.dir() + "/audio/Savage_vocal4.wav" => filename;
filename => sample.read;
0 => sample.pos;
sample.length() => now;

BPM t;
//t.tempo(147);
//Machine.add(me.dir() + "melody_1.ck");
//Machine.add(me.dir() + "bass_1.ck");
//(2 * t.EN) + (4 * 8 * t.EN) => now;

t.tempo(109);
Machine.add(me.dir() + "melody_2.ck");
//Machine.add(me.dir() + "bass_2.ck");
24 * (8 * t.EN) + t.HN => now;

me.dir() + "/audio/Blackmamba_intro.wav" => filename;
filename => sample.read;
0 => sample.pos;
sample.length() => now;

t.tempo(90);
Machine.add(me.dir() + "melody_3.ck");
//Machine.add(me.dir() + "bass_3.ck");
17 * (8 * t.EN) => now;