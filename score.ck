BPM t;
//Machine.add(me.dir() + "melody_1.ck");
//Machine.add(me.dir() + "bass_1.ck");
//=> now;

t.tempo(109);
Machine.add(me.dir() + "melody_2.ck");
Machine.add(me.dir() + "bass_2.ck");
Machine.add(me.dir() + "drum.ck");
24 * (8 * t.EN) + t.HN => now;

t.tempo(90);
Machine.add(me.dir() + "melody_3.ck");
Machine.add(me.dir() + "drum_mamba.ck");
//Machine.add(me.dir() + "bass_3.ck");
17 * (8 * t.EN) => now;
