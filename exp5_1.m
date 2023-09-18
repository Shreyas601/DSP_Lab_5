%1
a = 1+mod(236,3);
Fs = 100;
t = 0:1/Fs:(10-1/Fs);
F = (2+2*a):(1/Fs)*(3*4/10):(5+5*a)-1/Fs*3/10;
x = sin(2.*pi.*F.*t);
plot(t,x);
xlabel('time');
ylabel('function');
title('plot of signal vs time');
figure;

%2
L = 1000;
y = fft(x);
plot(Fs/L*(0:L-1),abs(y));
xlabel('Frequency');
ylabel('Magnitude');
title('plot of magnitude spectrum');
figure;

%3
win_len = 100;
overlap = 10;
spectrogram(x,hamming(win_len),overlap,Fs,'yaxis');

a = 1 + mod(257,3)

l_lim = 2 + (2*a) %8
u_lim = 5 + (5*a) %20
fs = 100;
t = 0 :(1/fs):(10-(1/fs));
f = l_lim + ((u_lim-l_lim)*t/10);
x = sin(2*pi*f.*t);

%100
window_len = 100;
overlap = 10;
[S,F,T] = spectrogram(x,window_len,overlap);

figure;
imagesc(T,F,20*log10(abs(S)));
axis xy;
xlabel('Time (s)');
ylabel('Frequency (Hz)');
title('Spectrogram (100) Hamming Window');

%150
window_len = 150;
overlap = 10;
[S,F,T] = spectrogram(x,window_len,overlap);

figure;
imagesc(T,F,20*log10(abs(S)));
axis xy;
xlabel('Time (s)');
ylabel('Frequency (Hz)');
title('Spectrogram (150) Hamming Window');

%200
window_len = 200;
overlap = 10;
[S,F,T] = spectrogram(x,window_len,overlap);

figure;
imagesc(T,F,20*log10(abs(S)));
axis xy;
xlabel('Time (s)');
ylabel('Frequency (Hz)');
title('Spectrogram (200) Hamming Window');

%200
window_len = 200;
overlap = 10;
[S,F,T] = spectrogram(x,hanning(window_len),overlap);

figure;
imagesc(T,F,20*log10(abs(S)));
axis xy;
xlabel('Time (s)');
ylabel('Frequency (Hz)');
title('Spectrogram (200) Hanning Window');

%200
window_len = 200;
overlap = 10;
[S,F,T] = spectrogram(x,blackman(window_len),overlap);

figure;
imagesc(T,F,20*log10(abs(S)));
axis xy;
xlabel('Time (s)');
ylabel('Frequency (Hz)');
title('Spectrogram (200) Blackman Window');