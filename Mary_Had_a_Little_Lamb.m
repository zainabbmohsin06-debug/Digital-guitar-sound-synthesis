% MARY HAD A LITTLE LAMB :)

clear all; close all; clc;

fprintf('\n=====================================\n');
fprintf('Mary Had A Little Lamb!:)\n');
fprintf('=====================================\n');

fs= 44100;

% FASTER tempo for generating happy feelingzz :)
bpm = 138;  % For keeping melody faster and happier :)
beat = 60/bpm;

% Notes
C4= 261.63;
D4= 293.66;
E4= 329.63;
G4= 392.00;

% Durations - kept shorter
q= beat;           % faster quarter note 
h= beat * 1.8;     % slightly shorter half notes
w= beat * 3.5;     % slightly shorter whole notes

%% Creating INDIVIDUAL NOTE FILES
fprintf('\n Creating individual note WAV files...\n');

% Creating a folder for individual notes
if ~exist('Individual_Notes', 'dir')
    mkdir('Individual_Notes');
end

% Generating and saving each note (approx. 2 seconds each)
notes_list= {C4, D4, E4, G4};
note_names= {'C', 'D', 'E', 'G'};

for i = 1:length(notes_list)
    note_audio = ks(notes_list{i}, 1.5, fs);  % 1.5-second notes
    note_audio = note_audio / max(abs(note_audio)) * 0.9;
    
    filename = fullfile('Individual_Notes', sprintf('%s_note.wav', note_names{i}));
    audiowrite(filename, note_audio, fs);
    fprintf('Created: %s_note.wav\n', note_names{i});
end

%% Creating the COMPLETE SONG FILE
fprintf('\nCreating complete song WAV file...\n');

song= [];

%% VERSE 1
fprintf('  Building Verse 1...\n');

% "Mary had a little lamb, little lamb, little lamb"
song= [song; ks(E4, q, fs)];
song= [song; ks(D4, q, fs)];
song= [song; ks(C4, q, fs)];
song= [song; ks(D4, q, fs)];
song= [song; ks(E4, q, fs)];
song= [song; ks(E4, q, fs)];
song= [song; ks(E4, h, fs)];

song= [song; zeros(round(0.05*fs), 1)];  % Giving a shorter pause in between

% "little lamb, little lamb"
song= [song; ks(D4, q, fs)];
song= [song; ks(D4, q, fs)];
song= [song; ks(D4, h, fs)];
song= [song; ks(E4, q, fs)];
song= [song; ks(G4, q, fs)];
song= [song; ks(G4, h, fs)];

song= [song; zeros(round(0.05*fs), 1)];  % Giving a shorter pause in between

% "Mary had a little lamb"
song= [song; ks(E4, q, fs)];
song= [song; ks(D4, q, fs)];
song= [song; ks(C4, q, fs)];
song= [song; ks(D4, q, fs)];
song= [song; ks(E4, q, fs)];
song= [song; ks(E4, q, fs)];
song= [song; ks(E4, h, fs)];

song= [song; zeros(round(0.05*fs), 1)];

% "its fleece was white as snow"
song= [song; ks(E4, q, fs)];
song= [song; ks(D4, q, fs)];
song= [song; ks(D4, q, fs)];
song= [song; ks(E4, q, fs)];
song= [song; ks(D4, q, fs)];
song= [song; ks(C4, h*1.5, fs)];  % Slightly shorter final note

song= [song; zeros(round(0.15*fs), 1)];

%% VERSE 2
fprintf('  Building Verse 2...\n');

% "Everywhere that Mary went, Mary went, Mary went"
song= [song; ks(E4, q, fs)];
song= [song; ks(D4, q, fs)];
song= [song; ks(C4, q, fs)];
song= [song; ks(D4, q, fs)];
song= [song; ks(E4, q, fs)];
song= [song; ks(E4, q, fs)];
song= [song; ks(E4, h, fs)];

song= [song; zeros(round(0.05*fs), 1)];

% "Mary went, Mary went"
song= [song; ks(D4, q, fs)];
song= [song; ks(D4, q, fs)];
song= [song; ks(D4, h, fs)];
song= [song; ks(E4, q, fs)];
song= [song; ks(G4, q, fs)];
song= [song; ks(G4, h, fs)];

song= [song; zeros(round(0.05*fs), 1)];

% "Everywhere that Mary went"
song= [song; ks(E4, q, fs)];
song= [song; ks(D4, q, fs)];
song= [song; ks(C4, q, fs)];
song= [song; ks(D4, q, fs)];
song= [song; ks(E4, q, fs)];
song= [song; ks(E4, q, fs)];
song= [song; ks(E4, h, fs)];

song= [song; zeros(round(0.05*fs), 1)];

% "the lamb was sure to go"
song= [song; ks(E4, q, fs)];
song= [song; ks(D4, q, fs)];
song= [song; ks(D4, q, fs)];
song= [song; ks(E4, q, fs)];
song= [song; ks(D4, q, fs)];
song= [song; ks(C4, h*1.5, fs)];

song= [song; zeros(round(0.15*fs), 1)];

%% VERSE 3
fprintf('  Building Verse 3...\n');

% "It followed her to school one day, school one day, school one day"
song= [song; ks(E4, q, fs)];
song= [song; ks(D4, q, fs)];
song= [song; ks(C4, q, fs)];
song= [song; ks(D4, q, fs)];
song= [song; ks(E4, q, fs)];
song= [song; ks(E4, q, fs)];
song= [song; ks(E4, h, fs)];

song= [song; zeros(round(0.05*fs), 1)];

% "school one day, school one day"
song=[song; ks(D4, q, fs)];
song= [song; ks(D4, q, fs)];
song=[song; ks(D4, h, fs)];
song=[song; ks(E4, q, fs)];
song= [song; ks(G4, q, fs)];
song= [song; ks(G4, h, fs)];

song= [song; zeros(round(0.05*fs), 1)];

% "It followed her to school one day"
song= [song; ks(E4, q, fs)];
song= [song; ks(D4, q, fs)];
song= [song; ks(C4, q, fs)];
song =[song; ks(D4, q, fs)];
song =[song; ks(E4, q, fs)];
song= [song; ks(E4, q, fs)];
song= [song; ks(E4, h, fs)];

song= [song; zeros(round(0.05*fs), 1)];

% "which was against the rules"
song = [song; ks(E4, q, fs)];
song= [song; ks(D4, q, fs)];
song =[song; ks(D4, q, fs)];
song= [song; ks(E4, q, fs)];
song= [song; ks(D4, q, fs)];
song= [song; ks(C4, h*1.5, fs)];

song= [song; zeros(round(0.15*fs), 1)];

%% VERSE 4
fprintf('  Building Verse 4...\n');

% "It made the children laugh and play, laugh and play, laugh and play"
song= [song; ks(E4, q, fs)];
song= [song; ks(D4, q, fs)];
song= [song; ks(C4, q, fs)];
song = [song; ks(D4, q, fs)];
song= [song; ks(E4, q, fs)];
song= [song; ks(E4, q, fs)];
song=[song; ks(E4, h, fs)];

song=[song; zeros(round(0.05*fs), 1)];

% "laugh and play, laugh and play"
song=[song; ks(D4, q, fs)];
song=[song; ks(D4, q, fs)];
song=[song; ks(D4, h, fs)];
song=[song; ks(E4, q, fs)];
song=[song; ks(G4, q, fs)];
song=[song; ks(G4, h, fs)];

song=[song; zeros(round(0.05*fs), 1)];

% "It made the children laugh and play"
song=[song; ks(E4, q, fs)];
song=[song; ks(D4, q, fs)];
song=[song; ks(C4, q, fs)];
song=[song; ks(D4, q, fs)];
song=[song; ks(E4, q, fs)];
song=[song; ks(E4, q, fs)];
song=[song; ks(E4, h, fs)];

song=[song; zeros(round(0.05*fs), 1)];

% "to see a lamb at school"
song=[song; ks(E4, q, fs)];
song=[song; ks(D4, q, fs)];
song=[song; ks(D4, q, fs)];
song=[song; ks(E4, q, fs)];
song=[song; ks(D4, q, fs)];
song=[song; ks(C4, h*1.5, fs)];

song=[song; zeros(round(0.15*fs), 1)];

%% VERSE 5
fprintf('  Building Verse 5...\n');

% "And so the teacher turned it out, turned it out, turned it out"
song=[song; ks(E4, q, fs)];
song= [song; ks(D4, q, fs)];
song= [song; ks(C4, q, fs)];
song= [song; ks(D4, q, fs)];
song = [song; ks(E4, q, fs)];
song= [song; ks(E4, q, fs)];
song= [song; ks(E4, h, fs)];

song= [song; zeros(round(0.05*fs), 1)];

% "turned it out, turned it out"
song = [song; ks(D4, q, fs)];
song= [song; ks(D4, q, fs)];
song= [song; ks(D4, h, fs)];
song= [song; ks(E4, q, fs)];
song =[song; ks(G4, q, fs)];
song = [song; ks(G4, h, fs)];

song= [song; zeros(round(0.05*fs), 1)];

% "And so the teacher turned it out"
song= [song; ks(E4, q, fs)];
song= [song; ks(D4, q, fs)];
song= [song; ks(C4, q, fs)];
song= [song; ks(D4, q, fs)];
song= [song; ks(E4, q, fs)];
song= [song; ks(E4, q, fs)];
song= [song; ks(E4, h, fs)];

song=[song; zeros(round(0.05*fs), 1)];

% "but still it lingered near"
song= [song; ks(E4, q, fs)];
song= [song; ks(D4, q, fs)];
song= [song; ks(D4, q, fs)];
song= [song; ks(E4, q, fs)];
song= [song; ks(D4, q, fs)];
song= [song; ks(C4, w*1.5, fs)];  % Final happy ending :)

%% Designing Quick fade out
fprintf('  Adding fade out...\n');
fade_duration = 1.5;  % Shorter fade
fade_samples = round(fade_duration * fs);
if fade_samples < length(song)
    for i = 1:fade_samples
        song(end-fade_samples+i) = song(end-fade_samples+i) * (1 - i/fade_samples);
    end
end

%% Normalizing and saving the complete song
song = song / max(abs(song)) * 0.9;
song_filename = 'Mary_Had_a_Little_Lamb.wav';
audiowrite(song_filename, song, fs);
fprintf('Created: %s\n', song_filename);

%% Main
fprintf('Tempo: %d BPM - For joyful vibezz!\n', bpm);
fprintf('Beat: %.3f sec\n', beat);
fprintf('\nLocation: %s\n', pwd);

%% Playing the complete poem
fprintf('\nPress Enter to hear the JOYFUL Melody :)...\n');
fprintf('For having happy and bouncy vibesss!\n');
pause;
sound(song, fs);

%% Karplus-Strong function
function note = ks(freq, dur, fs)
    N = round(fs/freq);
    if N < 2
        N = 2;
    end
    n = round(dur*fs);
    note = zeros(n,1);
    note(1:min(N,n)) = 2*rand(min(N,n),1)-1;
    for j = N+1:n
        note(j) = 0.99 * 0.5 * (note(j-N) + note(j-N+1));
    end
    note = note .* exp(-2.5*(0:n-1)'/n);
    if max(note)>0
        note = note/max(note);
    end
end