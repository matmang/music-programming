public class Play {
    fun void playNote(StkInstrument inst, int note, dur duration) {
        Std.mtof(note) => inst.freq;
        if (note != -1)
            0.2 => inst.noteOn;
        duration * (4.0/5.0) => now;
        0.2 => inst.noteOff;
        duration / 5 => now;
    }
    
    fun void play(StkInstrument inst, int notes[], dur durs[]) {
        for(0 => int i; i < notes.size(); ++i)
            playNote(inst, notes[i], durs[i]);
    }
    
}