public class BPM {
    // globally accessible variables
    static dur QN, SN, EN, HN, DQN, DEN;
    
    fun void tempo(float beat) { // beat in BPM
        60.0 / beat => float SPB; // Seconds Per Beat
        SPB::second => QN;
        QN * 2 => HN;
        QN / 2 => EN;
        EN / 2 => SN;
        EN * 3 => DQN;
        SN * 3 => DEN;
    }
}