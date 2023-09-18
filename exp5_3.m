% Parameters
Fs = 10000;         % Sample rate (in Hz)
BitsPerSample = 16; % Bits per sample
Duration = 3;       % Duration of recording (in seconds)
FileName = 'name.wav'; % Output file name

% Create an audio recorder object
recObj = audiorecorder(Fs, BitsPerSample, 1);

% Record audio
disp('Start recording...');
record(recObj, Duration);
disp('Recording...');

% Wait for the recording to complete
pause(Duration);

% Stop recording
stop(recObj);
disp('Recording stopped.');

% Get the recorded audio data
audioData = getaudiodata(recObj);

% Save as a .wav file
audiowrite(FileName, audioData, Fs);

disp(['Audio saved as ' FileName]);


[y,Fs] = audioread("name.wav");
figure(1)
plot(y)
title('name')
xlabel("time");
ylabel("AMPLITUDE");
m = abs(fft(y));
F = (0:length(m)-1)*Fs/length(m);
figure(2)
plot(F,m)
title('fft')
xlabel("FREQUENCY");
ylabel("AMPLITUDE");
window_length = 100; % Length of the Hamming window (samples)
overlap = 10;        % Overlap between consecutive windows (samples)
window_length_2 = 150;

% Create and plot the spectrogram
figure(3);
spectrogram(y, hamming(window_length), overlap);
title('Spectrogram of name');


