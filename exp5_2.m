%1
a = 1+mod(236,3);
[x,Fs] = audioread('instru3.wav');
win_len = 100;
overlap = 10;
spectrogram(x,hamming(win_len),[],overlap,Fs,'yaxis');
figure;
L = 70504;
y = fft(x);
plot(Fs/L*(0:L-1),abs(y));
xlabel('Frequency');
ylabel('Magnitude');
title('plot of magnitude spectrum');
figure;

%2
[x,Fs] = audioread('Opera.wav');
win_len = 100;
overlap = 10;
spectrogram(x,hamming(win_len),[],overlap,Fs,'yaxis');
figure;
L = 220500;
y = fft(x);
plot(Fs/L*(0:L-1),abs(y));
xlabel('Frequency');
ylabel('Magnitude');
title('plot of magnitude spectrum');