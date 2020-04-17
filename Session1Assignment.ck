// Sound Network
SinOsc s => dac;
SinOsc s2 => dac;
SawOsc sw => dac;
TriOsc tr => dac;


// play s, s2, sw, tr at the same time
0.5 => s.gain;
0.5 => s2.gain;
0.2 => sw.gain;
0.2 => tr.gain;
// sweep from 50-500
for ( 50 => int i; i < 500; i++)
// at starting pitches with different intervals    
{
    i => s.freq;
    i*0.5 => s2.freq;
    i*1.2 => sw.freq;
    i*1.3 => tr.freq;
    0.005::second => now;
}

while( true )
{
    // randomly choose frequency from 50 to 300 with four oscilators
 
0.2 => s.gain;
0.2 => s2.gain;
0.1 => sw.gain;
0.1 => tr.gain;
// choose random frequencies within ranges for each oscilator    
    Math.random2f( 50, 80 ) => s.freq;
    Math.random2f( 60, 120 ) => s2.freq;
    Math.random2f( 100, 200 ) => sw.freq;
    Math.random2f( 200, 300 ) => tr.freq;
  // advance time by 100 milliseconds
    100::ms => now;
}
