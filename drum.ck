Gain master => dac;
SndBuf snare => master;
SndBuf kick => master;
SndBuf cymbal => master;

me.dir() + "/percussion/kick.wav" => kick.read;
me.dir() + "/percussion/snare.wav" => snare.read;
me.dir() + "/percussion/rumpus.wav" => cymbal.read;

kick.samples() => kick.pos;
snare.samples() => snare.pos;
cymbal.samples() => snare.pos;

0.3 => kick.gain;

// BPM t;
// t.QN => dur QN;
// t.HN => dur HN;
// t.EN => dur EN;
// t.SN => dur SN;
// t.DQN => dur DQN;
// t.DEN => dur DEN;
60.0/109 => float SBP;
SBP::second => dur QN;
QN / 2 => dur EN;

[1, 0, 0, 1, 0, 0, 0, 0,
1, 0, 0, 1, 0, 0, 0, 0,
1, 0, 0, 1, 0, 0, 0, 0,
1, 0, 0, 1, 0, 0, 0, 0,
1, 0, 0, 1, 0, 0, 0, 0,
1, 0, 0, 1, 0, 0, 0, 0,
1, 0, 0, 1, 0, 0, 0, 0] @=> int kick_hits[];

[0, 0, 1, 0, 0, 0, 1, 0,
0, 0, 1, 0, 0, 0, 1, 0,
0, 0, 1, 0, 0, 0, 1, 0,
0, 0, 1, 0, 0, 0, 1, 0,
0, 0, 1, 0, 0, 0, 1, 0,
0, 0, 1, 0, 0, 0, 1, 0,
0, 0, 1, 0, 0, 0, 1, 0] @=> int snare_hits[];

[1, 0, 0, 0, 0, 0, 0, 0,
0, 0, 0, 0, 0, 0, 0, 0,
0, 0, 0, 0, 0, 0, 0, 0,
0, 0, 0, 0, 0, 0, 0, 0,
1, 0, 0, 0, 0, 0, 0, 0,
0, 0, 0, 0, 0, 0, 0, 0,
0, 0, 0, 0, 0, 0, 0, 0] @=> int cymbal_hits[];

for (0 => int beat; beat < kick_hits.size(); beat++) {
    if (kick_hits[beat])
        0 => kick.pos;
    if (snare_hits[beat])
        0 => snare.pos;
    if (cymbal_hits[beat])
        0 => cymbal.pos;
    EN => now;
}

[0, 0, 0, 0, 1, 0, 1, 0, 0, 1, 0, 1, 0, 0,
1, 0, 1, 0, 0, 1, 0, 1, 0, 0,
0, 0, 1, 0, 0, 1, 0, 1, 0, 0,
1, 0, 1, 0, 0, 1, 0, 1, 0, 0] @=> int kick_hits1[];

[0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 1, 0, 0, 1,
0, 1, 0, 0, 1, 0, 1, 0, 0, 1,
0, 1, 0, 0, 1, 0, 1, 0, 0, 1,
0, 1, 0, 0, 1, 0, 1, 0, 0, 1] @=> int snare_hits1[];

[QN, QN, QN, QN, QN, EN, EN, QN, QN, QN, EN, EN, QN, QN,
QN, EN, EN, QN, QN, QN, EN, EN, QN, QN,
QN, EN, EN, QN, QN, QN, EN, EN, QN, QN,
QN, EN, EN, QN, QN, QN, EN, EN, QN, QN] @=> dur durs[]; 
for (0 => int beat; beat < kick_hits1.size(); beat++) {
    if (kick_hits1[beat])
        0 => kick.pos;
    if (snare_hits1[beat])
        0 => snare.pos;
    durs[beat] => now;
}

[1, 0, 0, 1, 0, 1, 0, 0,
1, 0, 0, 1, 0, 1, 0, 0,
1, 0, 0, 1, 0, 1, 0, 0,
1, 0, 0, 1, 0, 1, 0, 0,
0, 0, 0, 1, 0, 1, 0, 0,
1, 0, 0, 1, 0, 1, 0, 0,
1, 0, 0, 1, 0, 1, 0, 0,
1, 0, 0, 1, 0, 1, 0, 0] @=> int kick_hits2[];

[0, 0, 1, 0, 0, 0, 1, 0,
0, 0, 1, 0, 0, 0, 1, 0,
0, 0, 1, 0, 0, 0, 1, 0,
0, 0, 1, 0, 0, 0, 1, 0,
0, 0, 1, 0, 0, 0, 1, 0,
0, 0, 1, 0, 0, 0, 1, 0,
0, 0, 1, 0, 0, 0, 1, 0,
0, 0, 1, 0, 0, 0, 1, 0] @=> int snare_hits2[];

for (0 => int beat; beat < kick_hits2.size(); beat++) {
    if (kick_hits2[beat])
        0 => kick.pos;
    if (snare_hits2[beat])
        0 => snare.pos;
    EN => now;
}