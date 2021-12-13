BPM t;
t.QN => dur QN;
t.HN => dur HN;
t.EN => dur EN;
t.SN => dur SN;
t.DQN => dur DQN;
t.DEN => dur DEN;

Play p;

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

[
C5, Fs5, C5, Fs5, // ooh eh ooh~
-1, -1, Fs4, Fs4, Fs4, Fs4, Fs4, // gyeolguk nan muneul
E4, Fs4, -1, Fs4, Fs4, Fs4, Fs4, Fs4, // yeoreo, geu bicceun negen
E4, Fs4, -1, Fs4, Cs4, Fs4, Cs4, // fire, too hot too hot
Cs5, Fs5, Cs5, Fs5, // ooh eh ooh~ 
-1, -1, Fs4, Fs4, Fs4, Fs4, Fs4, // na gunggeumhae michi
E4, Fs4, -1, Fs4, Fs4, Fs4, Fs4, Fs4, // gesseo, e daeume pyeolchil
E4, Fs4, -1, -1, Cs4, Cs4, Cs4, // story .. im on the
Cs4, -1, Cs4, Cs4, -1, Cs4, // next level, jeo 
-1, Fs4, E4, D4, Cs4, Cs4, Cs4, Cs4, // neomeoui muneul yeoreo 
Cs4, -1, Cs4, Cs4, -1, Cs4, // next level, neol 
-1, Fs4, E4, D4, Cs4, Cs4, Cs4, Cs4, // gyeolgugen naega busyeo
-1, Cs4, Cs4, Cs4, -1, Cs4, // next level, KO-
-1, Cs4, Cs4, Cs4, Cs4, Cs4, Cs4, Cs4, // -SMO eh daheul ttaekkaji
Cs4, -1, Cs4, Cs4, -1, Cs4, Cs4, // next level, je-
Cs4, Cs4, Cs4, Cs4, Cs4, Cs4, Cs4, Cs4, Cs4, Cs4, // -kkyeora jekkyeora jekkyeora im on the
Cs4, -1, Cs4, Cs4, -1, Cs4, // next level, deo 
-1, Fs4, E4, D4, Cs4, Cs4, Cs4, Cs4, // ganghaejyeo jayuropge
Cs4, -1, Cs4, Cs4, -1, Cs4, // next level, nan 
-1, Fs4, E4, D4, Cs4, Cs4, Cs4, Cs4, // gwangyaui naega anya
-1, Cs4, Cs4, Cs4, -1, Cs4, // next level, ya-
-1, Cs4, Cs4, Cs4, Cs4, Cs4, Cs4, Cs4,
Cs4, -1, Cs4, Cs4, -1, Cs4, Cs4,
Cs4, Cs4, Cs4, Cs4, Cs4, Cs4, Cs4, -1,
Fs4
] @=> int MELODY[];

[
-1, -1, -1, -1, // ooh eh ooh~
-1, -1, -1, -1, -1, -1, -1, // gyeolguk nan muneul
-1, -1, -1, -1, -1, -1, -1, -1, // yeoreo, geu bicceun negen
-1, -1, -1, -1, -1, -1, -1, // fire, too hot too hot
-1, -1, -1, -1, // ooh eh ooh~ 
-1, -1, -1, -1, -1, -1, -1, // na gunggeumhae michi
-1, -1, -1, -1, -1, -1, -1, -1, // gesseo, e daeume pyeolchil
-1, -1, -1, -1, -1, -1, -1, // story .. im on the
-1, -1, -1, -1, -1, -1, // next level, jeo 
-1, -1, -1, -1, -1, -1, -1, -1, // neomeoui muneul yeoreo 
-1, -1, -1, -1, -1, -1, // next level, neol 
-1, -1, -1, -1, -1, -1, -1, -1, // gyeolgugen naega busyeo
-1, -1, -1, -1, -1, -1, // next level, KO-
-1, -1, -1, -1, -1, -1, -1, -1, // -SMO eh daheul ttaekkaji
-1, -1, -1, -1, -1, -1, -1, // next level, je-
-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, // -kkyeora jekkyeora jekkyeora im on the
-1, -1, -1, -1, -1, -1, // next level, deo 
-1, -1, -1, -1, -1, -1, -1, -1, // ganghaejyeo jayuropge
-1, -1, -1, -1, -1, -1, // next level, nan 
-1, Fs5, E5, D5, Cs5, Cs5, Cs5, Cs5, // gwangyaui naega anya
-1, -1, -1, -1, -1, Cs4, // next level, ya-
-1, -1, -1, -1, -1, -1, -1, -1,
-1, -1, -1, -1, -1, -1, -1,
-1, -1, -1, -1, -1, -1, -1, -1,
Fs5
] @=> int MELODY_HIGH[];

[
DEN, SN, QN+DQN, EN,
QN, EN, EN, EN, EN, EN, EN,
DEN, SN, EN, EN, EN, EN, EN, EN,
DEN, SN, EN, EN, EN, EN, QN,
DEN, SN, QN+DQN, EN,
QN, EN, EN, EN, EN, EN, EN,
DEN, SN, EN, EN, EN, EN, EN, EN,
EN, EN, QN, EN, EN, EN, EN,
QN, QN, EN, EN, EN, EN,
EN, EN, EN, EN, EN, EN, EN, EN,
QN, QN, EN, EN, EN, EN,
EN, EN, EN, EN, EN, EN, EN, EN,
QN, QN, EN, EN, EN, EN,
EN, EN, EN, EN, EN, EN, EN, EN,
QN, QN, EN, EN, EN, SN, SN,
EN, SN, SN, EN, SN, SN, EN, EN, EN, EN,
QN, QN, EN, EN, EN, EN,
EN, EN, EN, EN, EN, EN, EN, EN,
QN, QN, EN, EN, EN, EN,
EN, EN, EN, EN, EN, EN, EN, EN,
QN, QN, EN, EN, EN, EN,
EN, EN, EN, EN, EN, EN, EN, EN,
QN, QN, EN, EN, EN, SN, SN,
EN, SN, SN, EN, SN, SN, QN, QN,
HN
] @=> dur DURS[];

MidiOut mout;
MidiMsg msg;
0 => int port;
if (!mout.open(port)) {
    <<< "Error: MIDI port did not open on port: ", port >>>;
    me.exit();
}

fun void sendOutMIDInote(int on, int note, int velocity) {
    if (on == 0) 128 => msg.data1;
    else 144 => msg.data1;
    note => msg.data2;
    velocity => msg.data3;
    <<< msg.data1, msg.data2, msg.data3 >>>;
    mout.send(msg);
}

// Rhodey piano => dac;
//FMVoices piano[2];
//piano[0] => dac;
//piano[1] => dac;
//spork ~ p.play(piano[0], MELODY, DURS);
//spork ~ p.play(piano[1], MELODY_HIGH, DURS);
//24 * (8 * EN) + HN => now;
int velocity;
for(0 => int i; i < MELODY.size(); ++i) {
    120 => velocity;
    if(MELODY_HIGH[i] != -1)
        sendOutMIDInote(1, MELODY_HIGH[i], velocity);
    if(MELODY[i] != -1){
        sendOutMIDInote(1, MELODY[i], velocity);
        DURS[i] * (4.0/5.0) => now;
        if(i > 0 && MELODY[i] == MELODY[i-1]) {
            sendOutMIDInote(0, MELODY[i], velocity);
        }
    }
    else {
        sendOutMIDInote(0, MELODY[i], velocity);
        DURS[i] * (4.0/5.0) => now;
    }
    DURS[i] * (1.0/5.0) => now;
}