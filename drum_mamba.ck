Gain master => dac;
SndBuf snare => master;
SndBuf kick => master;
SndBuf hihat => master;

me.dir() + "/percussion/kick.wav" => kick.read;
me.dir() + "/percussion/snare.wav" => snare.read;
me.dir() + "/percussion/light_hihat.wav" => hihat.read;

kick.samples() => kick.pos;
snare.samples() => snare.pos;
hihat.samples() => hihat.pos;

0.3 => kick.gain;

60.0/90 => float SBP;
SBP::second => dur QN;
QN * 2 => dur HN;
QN / 2 => dur EN;
EN / 2 => dur SN;
EN * 3 => dur DQN;
SN * 3 => dur DEN;
QN * 4 => dur WN;

[1, 0, 0, 0, 1, 0, 1, 0, 0] @=> int kick_hits[];
[0, 0, 1, 0, 0, 0, 0, 1, 0] @=> int snare_hits[];
[1, 1, 1, 1, 0, 1, 1, 1, 1] @=> int hihat_hits[];

[EN, EN, EN, SN, SN, EN, EN, EN, EN] @=> dur drum_durs[];

for (0 => int i; i < 17; i++) {
    for (0 => int beat; beat < kick_hits.size(); beat++) {
        if (kick_hits[beat])
            0 => kick.pos;
        if (snare_hits[beat])
            0 => snare.pos;
        if (hihat_hits[beat])
            0 => hihat.pos;
        drum_durs[beat] => now;
    }
}