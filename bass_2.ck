// MIDI
36 => int C2;  48 => int C3;  60 => int C4;  72 => int C5;  84 => int C6;
37 => int Cs2; 49 => int Cs3; 61 => int Cs4; 73 => int Cs5; 85 => int Cs6;
37 => int Db2; 49 => int Db3; 61 => int Db4; 73 => int Db5; 85 => int Db6;
38 => int D2;  50 => int D3;  62 => int D4;  74 => int D5;  86 => int D6;
39 => int Ds2; 51 => int Ds3; 63 => int Ds4; 75 => int Ds5; 87 => int Ds6;
39 => int Eb2; 51 => int Eb3; 63 => int Eb4; 75 => int Eb5; 87 => int Eb6;
40 => int E2;  52 => int E3;  64 => int E4;  76 => int E5;  88 => int E6;
41 => int F2;  53 => int F3;  65 => int F4;  77 => int F5;  89 => int F6;
42 => int Fs2; 54 => int Fs3; 66 => int Fs4; 78 => int Fs5; 90 => int Fs6;
42 => int Gb2; 54 => int Gb3; 66 => int Gb4; 78 => int Gb5; 90 => int Gb6;
43 => int G2;  55 => int G3;  67 => int G4;  79 => int G5;  91 => int G6;
44 => int Gs2; 56 => int Gs3; 68 => int Gs4; 80 => int Gs5; 92 => int Gs6;
44 => int Ab2; 56 => int Ab3; 68 => int Ab4; 80 => int Ab5; 92 => int Ab6;
45 => int A2;  57 => int A3;  69 => int A4;  81 => int A5;  93 => int A6;
46 => int As2; 58 => int As3; 70 => int As4; 82 => int As5; 94 => int As6;
46 => int Bb2; 58 => int Bb3; 70 => int Bb4; 82 => int Bb5; 94 => int Bb6;
47 => int B2;  59 => int B3;  71 => int B4;  83 => int B5;  95 => int B6;
-1 => int REST;

// Play p;

60.0/109 => float SBP;
SBP::second => dur QN;
QN * 2 => dur HN;
QN / 2 => dur EN;
EN / 2 => dur SN;
EN * 3 => dur DQN;
SN * 3 => dur DEN;
QN * 4 => dur WN;

[Fs3, Fs4, Fs3, A3, Fs3, A3, B3, Fs3,
Fs3, Fs4, Fs3, A3, Fs3, A3, B3, Fs3,
Fs3, Fs4, Fs3, A3, Fs3, A3, B3, Fs3,
Fs3, Fs4, Fs3, A3, Fs3, A3, B3, As3, A3, Gs3,
-1,
-1,
-1,
-1,
Fs3, Fs4, Fs3, A3, Fs3, A3, B3, Fs3,
Fs3, Fs4, Fs3, A3, Fs3, A3, B3, Fs3,
Fs3, Fs4, Fs3, A3, Fs3, A3, B3, Fs3,
Fs3, Fs4, Fs3, A3, Fs3, A3, B3, As3, A3, Gs3,
-1, Fs4, Fs3, A3, Fs3, A3, B3, Fs3,
Fs3, Fs4, Fs3, A3, Fs3, A3, B3, Fs3,
Fs3, Fs4, Fs3, A3, Fs3, A3, B3, Fs3,
Fs3, Fs4, Fs3, A3, Fs3, A3, B3, As3, A3, Gs3,
Fs3, Fs4, Fs3, A3, Fs3, A3, B3, Fs3,
Fs3, Fs4, Fs3, A3, Fs3, A3, B3, Fs3,
Fs3, Fs4, Fs3, A3, Fs3, A3, B3, Fs3,
Fs3, Fs4, Fs3, A3, Fs3, A3, B3, As3, A3, Gs3,
-1, Fs4, Fs3, A3, Fs3, A3, B3, Fs3,
Fs3, Fs4, Fs3, A3, Fs3, A3, B3, Fs3,
Fs3, Fs4, Fs3, A3, Fs3, A3, B3, Fs3,
Fs3, Fs4, Fs3, A3, Fs3, A3, B3, As3, A3, Gs3] @=> int BASS[];

[DEN, EN, SN, SN, SN, DEN, DEN, EN,
EN, DEN, SN, SN, SN, DEN, DEN, EN,
EN, DEN, SN, SN, SN, DEN, DEN, EN,
EN, DEN, SN, SN, SN, DEN, EN, SN, SN, SN,
WN,
WN,
WN,
WN,
DEN, EN, SN, SN, SN, DEN, DEN, EN,
EN, DEN, SN, SN, SN, DEN, DEN, EN,
EN, DEN, SN, SN, SN, DEN, DEN, EN,
EN, DEN, SN, SN, SN, DEN, EN, SN, SN, SN,
QN, SN, SN, SN, SN, DEN, DEN, EN,
EN, DEN, SN, SN, SN, DEN, DEN, EN,
EN, DEN, SN, SN, SN, DEN, DEN, EN,
EN, DEN, SN, SN, SN, DEN, EN, SN, SN, SN,
DEN, EN, SN, SN, SN, DEN, DEN, EN,
EN, DEN, SN, SN, SN, DEN, DEN, EN,
EN, DEN, SN, SN, SN, DEN, DEN, EN,
EN, DEN, SN, SN, SN, DEN, EN, SN, SN, SN,
QN, SN, SN, SN, SN, DEN, DEN, EN,
EN, DEN, SN, SN, SN, DEN, DEN, EN,
EN, DEN, SN, SN, SN, DEN, DEN, EN,
EN, DEN, SN, SN, SN, DEN, EN, SN, SN, SN] @=> dur DURS_BASS[];

MidiOut mout;
MidiMsg msg;
0 => int port;
if (!mout.open(port)) {
    <<< "Error: MIDI port did not open on port: ", port >>>;
    me.exit();
}

fun void sendOutMIDInote(int on, int note, int velocity) {
    if (on == 0) 128 => msg.data1; // 10000000 NoteOff
    else 144 => msg.data1; // 10010000 NoteOn
    note => msg.data2;
    if (on == 0) 0 => msg.data3;
    else velocity => msg.data3;
    <<< msg.data1, msg.data2, msg.data3 >>>;
    mout.send(msg);
}

int note, velocity;

for (0 => int i; i < BASS.size(); i++) {
    BASS[i] => note;
    60 => velocity;
    if (note != -1) {
        60 => velocity;
        sendOutMIDInote(1, note, velocity);
    }
    else {
        sendOutMIDInote(0, 0, 0);
    }
    DURS_BASS[i] => now;
}