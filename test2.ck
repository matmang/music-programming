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
    velocity => msg.data3;
    <<< msg.data1, msg.data2, msg.data3 >>>;
    mout.send(msg);
}

int note, velocity;
while (true) {
    Math.random2(60,100) => note;
    Math.random2(30,127) => velocity;
    sendOutMIDInote(1, note, velocity);
    .5::second => now;
    sendOutMIDInote(0, note, velocity);
    .5::second => now;
}