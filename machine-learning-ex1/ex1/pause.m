function pause()
    % Fix pause in Octave 5.1.0
    fflush(stdout);
    input('', 's');
end
