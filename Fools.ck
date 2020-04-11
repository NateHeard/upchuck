//modified from https://www.youtube.com/watch?v=7hyXeD48pPU

SndBuf buffer => dac;

//"C:/Users/nate_/Documents/X_Music/ChucK/Goat.wav" => buffer.read;
"C:/Users/nate_/Documents/X_Music/ChucK/FoolsGold.wav" => buffer.read;

buffer.samples() / 16 => int s;

s::samp => dur tick;

while(true) {
 if (Std.rand2(1,8) <8) {
  s * Std.rand2(0,8) => buffer.pos;
}
if (Std.rand2(1,8) <2) {2 => buffer.rate;}
else if (Std.rand2(1,8) <1) {1.1 => buffer.rate;}
else if (Std.rand2(1,8) <1) {0.9 => buffer.rate;}
else if (Std.rand2(1,8) <3) {0.8 => buffer.rate;}
else {1 => buffer.rate;}

tick => now;
}  
 