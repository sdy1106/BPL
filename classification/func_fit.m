function func_fit(train_fn , train_G_fn , verbose)
    K = 5; % number of unique parses we want to collect
    %verbose = false; % describe progress and visualize parse?
    include_mcmc = true; % run mcmc to estimate local variability?
    fast_mode = true; % skip the slow step of fitting strokes to details of the ink?

%     if fast_mode
%         fprintf(1,'Fast mode skips the slow step of fitting strokes to details of the ink.\n');
%         %warning_mode('Fast mode is for demo purposes only and was not used in paper results.');
%     end
    load(train_fn ,'img');
    G = fit_motorprograms( extract_image_index(train_fn) ,img,K,verbose,include_mcmc,fast_mode);
    save(train_G_fn , 'G');
end

function index = extract_image_index(fn)
    begin = strfind(fn , '/image') + 6;
    ending = length(fn)-4;
    index = fn(begin:ending);
end