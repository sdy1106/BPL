%train_fn = input('����������ļ���' , 's');
train_fn = 'Chinese/image1-1.mat';
N = 5;
test_fn_set = cell(1,N);
% 1���� 3���� 4���� 5����
test_fn_set{1} ='Chinese/image1-2.mat';
test_fn_set{2} = 'Chinese/image1-3.mat';
test_fn_set{3} = 'Chinese/image3-1.mat';
test_fn_set{4} = 'Chinese/image4-1.mat';
test_fn_set{5} = 'Chinese/image5-1.mat';
%func_refit(train_fn , test_fn_set , true)
classification_with_accuracy(train_fn , test_fn_set);
