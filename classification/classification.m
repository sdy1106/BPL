%train_fn = input('请输入分类文件名' , 's');
train_fn = 'Chinese/image1-1.mat';
N = 5;
test_fn_set = cell(1,N);
% 1：的 3：国 4：在 5：人
test_fn_set{1} ='Chinese/image1-2.mat';
test_fn_set{2} = 'Chinese/image1-3.mat';
test_fn_set{3} = 'Chinese/image3-1.mat';
test_fn_set{4} = 'Chinese/image4-1.mat';
test_fn_set{5} = 'Chinese/image5-1.mat';
%func_refit(train_fn , test_fn_set , true)
classification_with_accuracy(train_fn , test_fn_set);
