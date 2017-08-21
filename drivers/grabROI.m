DataDirs = {...
'F:\sr test data\Results3 - Copy',...
}

for i = 1 : length(DataDirs)
    DataDir = DataDirs{i};
    Files = dir([DataDir, '\*.mat']);
    FileName = [DataDir, '\', Files.name]
    [RoI, Sigma_Reg] = getROI(FileName);
    SaveFile = regexprep(FileName, '\.mat$', '_ROI.mat')
    save(SaveFile, 'RoI','Sigma_Reg');
end
