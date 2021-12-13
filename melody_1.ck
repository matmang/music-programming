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
F3, C3,
F3, Fs3, F4, F4,
F4, C4,
Ds4, Ds4, Ds4, F4, F4, F4, // ajikdo garigo
D4, F4, Fs4, F4, Ds4, C4 // hwangageul pyeolchin neo

] @=> int MELODY[];

[
EN, EN, // I'm a
EN, EN+HN, EN, EN, // kill-a neoreul
EN, EN+HN, // kkael ae 
EN, EN, QN, EN, EN, QN, // ajikdo garigo
EN, EN, QN, EN, EN, QN, // hwangageul pyeolchin neo
EN, EN+HN, QN, // paella We
EN, EN+QN+EN, EN, EN, EN, // Holl-er duryeopji
EN, EN, QN, QN, EN, EN, // anha neo neo Hit your
EN, DQN, HN, // har-der, nal
EN, EN, EN, EN, QN, EN, EN, // mireoneoheo Deep fake on me
EN, EN, EN, EN, EN, EN, EN, EN, // junbiga andoen mudae-
EN, EN, EN, EN, QN, EN, EN, // -ro moraneoheo Fake on me
EN, EN, EN, EN, EN, EN, SN, SN, // Got e-very-bo-dy mock up to
QN, EN, SN, SN, EN, SN, SN, EN, SN, SN, // me suchireul neukkige mentareul 
EN, SN, SN, QN, EN, SN, SN, EN, EN, // heundeureo nwa ssaneulhan gwanjung 
EN, SN, SN, QN, EN, SN, SN, EN, SN, SN, // muneojyeo ae deoneun neol mot chama 
QN, QN, QN, QN // Say No! (Yeah, yeah)
] @=> dur DURS[];

//Rhodey piano;
//piano => dac;
//spork ~ p.play(piano, MELODY, DURS);
//4 * (8 * EN) + (2 * EN) => now;

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

int velocity;
for(0 => int i; i < MELODY.size(); ++i) {
    120 => velocity;
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