/*created by Vaibhav Tiwari
on June 3, 2019*/
clear all;
max=101;
fs = 10000;
%amp,freq,phase,Name,Value
for i=1:2:max
    wave=dsp.SineWave(1/i, i*2*pi,0,...
    'SamplesPerFrame',5000,'SampleRate',fs);
    y=wave();
    if i==1
        wavesum=y;
    else
        wavesum=wavesum+y;
    end
    %waitforbuttonpress;
end
plot(wavesum);
