% % % % Multichanel data combine using Walsh Combination 
% % % % To be run after running
% % % % 'recon_Multichanel_GA_Sengupta_IOVS_Aug2017.py' Python script.
% % % % This script uses walsh combination to combine data from separate receive 
% % % % channels

% file_index = { '003'; '004'; '005';'006';'007';'008';'009';'010'};
file_index = { '004'};

%%% Data path of Python scripe output
data_path = '/Users/GA_RawData_MatFile/';


for i = 1:size(file_index,1)
    
 %%%% Make sure this name matches the Python output   
filename = ['raw_', file_index{i},'_128_10_PYTHONREC.mat'];

data = load([data_path , filename]);
img = data.img;
[ C, Frames, M, N]  = size(img);

Recon_Frames = Frames;
im_walsh_out = zeros(M,M,Recon_Frames);

 for f = 1 : Recon_Frames
    disp(f);
    image_temp = squeeze(img(:,f,:,:));
    image_temp = permute(image_temp , [ 2 , 3, 1]);
    im_walsh_out(:,:,f) = coilCombine(image_temp);
 end
 
 eval(sprintf('save([data_path, ''Im_Walsh_Coil_Combined_%s''],''im_walsh_out'');',file_index{i}));

end

