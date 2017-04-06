function [] = writelib()
    data = load('data.mat');
    oldlib = load('library.mat');
    lib = Library;
    lib.legacylib(oldlib.lib);
    lib.load_zh_library(data);

    save('library_zh.mat', 'lib');
end