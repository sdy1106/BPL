% Demo of fitting a motor program to an image.

% Parameters
K = 5; % number of unique parses we want to collect
verbose = true; % describe progress and visualize parse?
include_mcmc = true; % run mcmc to estimate local variability?
fast_mode = true; % skip the slow step of fitting strokes to details of the ink?

if fast_mode
    fprintf(1,'Fast mode skips the slow step of fitting strokes to details of the ink.\n');
    %warning_mode('Fast mode is for demo purposes only and was not used in paper results.');
end
for i=3:19
    fn = makestr('Chinese/image',i , '-0');
    load(fn ,'img');
    G = fit_motorprograms( i ,img,K,verbose,include_mcmc,fast_mode);
    fn = makestr('generate_exemplars/my',i , '.mat');
    save(fn , 'G');
end