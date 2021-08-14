A1 = [];
A2 = [];
A3 = [];
A4 = [];
A5 = [];
for i=1:10
        for j=1:7
            if(i<10)
            if(j<10)
            str=strcat(int2str(i),'/person0',int2str(i),'_0',int2str(j),'.png');
            end
            if(j>9)
            str=strcat(int2str(i),'/person0',int2str(i),'_',int2str(j),'.png');
            end
            end
            if(i==10)
            if(j<10)
            str=strcat(int2str(i),'/person',int2str(i),'_0',int2str(j),'.png');
            end
            if(j>9)
            str=strcat(int2str(i),'/person',int2str(i),'_',int2str(j),'.png');
            end
            end
            img = double(imread(str));
            [m n] = size(img);
            x = reshape(img,[m*n 1]);

            A1=[A1 x];
        end
        for j=8:19
            if(i<10)
            if(j<10)
            str=strcat(int2str(i),'/person0',int2str(i),'_0',int2str(j),'.png');
            end
            if(j>9)
            str=strcat(int2str(i),'/person0',int2str(i),'_',int2str(j),'.png');
            end
            end
            if(i==10)
            if(j<10)
            str=strcat(int2str(i),'/person',int2str(i),'_0',int2str(j),'.png');
            end
            if(j>9)
            str=strcat(int2str(i),'/person',int2str(i),'_',int2str(j),'.png');
            end
            end
            img = double(imread(str));
            [m n] = size(img);
            x = reshape(img,[m*n 1]);

            A2=[A2 x];
        end
        for j=20:31
            if(i<10)
            if(j<10)
            str=strcat(int2str(i),'/person0',int2str(i),'_0',int2str(j),'.png');
            end
            if(j>9)
            str=strcat(int2str(i),'/person0',int2str(i),'_',int2str(j),'.png');
            end
            end
            if(i==10)
            if(j<10)
            str=strcat(int2str(i),'/person',int2str(i),'_0',int2str(j),'.png');
            end
            if(j>9)
            str=strcat(int2str(i),'/person',int2str(i),'_',int2str(j),'.png');
            end
            end
            img = double(imread(str));
            [m n] = size(img);
            x = reshape(img,[m*n 1]);

            A3=[A3 x];
        end
        for j=32:45
            if(i<10)
            if(j<10)
            str=strcat(int2str(i),'/person0',int2str(i),'_0',int2str(j),'.png');
            end
            if(j>9)
            str=strcat(int2str(i),'/person0',int2str(i),'_',int2str(j),'.png');
            end
            end
            if(i==10)
            if(j<10)
            str=strcat(int2str(i),'/person',int2str(i),'_0',int2str(j),'.png');
            end
            if(j>9)
            str=strcat(int2str(i),'/person',int2str(i),'_',int2str(j),'.png');
            end
            end
            img = double(imread(str));
            [m n] = size(img);
            x = reshape(img,[m*n 1]);

            A4=[A4 x];
        end
        for j=46:64
            if(i<10)
            if(j<10)
            str=strcat(int2str(i),'/person0',int2str(i),'_0',int2str(j),'.png');
            end
            if(j>9)
            str=strcat(int2str(i),'/person0',int2str(i),'_',int2str(j),'.png');
            end
            end
            if(i==10)
            if(j<10)
            str=strcat(int2str(i),'/person',int2str(i),'_0',int2str(j),'.png');
            end
            if(j>9)
            str=strcat(int2str(i),'/person',int2str(i),'_',int2str(j),'.png');
            end
            end
            img = double(imread(str));
            [m n] = size(img);
            x = reshape(img,[m*n 1]);

            A5=[A5 x];
        end
end
    R11 = fish(A1,A1,10);
    R12 = fish(A1,A2,10);
    R13 = fish(A1,A3,10);
    R14 = fish(A1,A4,10);
    R15 = fish(A1,A5,10);
    R21 = fish(A2,A1,10);
    R22 = fish(A2,A2,10);
    R23 = fish(A2,A3,10);
    R24 = fish(A2,A4,10);
    R25 = fish(A2,A5,10);
    R31 = fish(A3,A1,10);
    R32 = fish(A3,A2,10);
    R33 = fish(A3,A3,10);
    R34 = fish(A3,A4,10);
    R35 = fish(A3,A5,10);
    R41 = fish(A4,A1,10);
    R42 = fish(A4,A2,10);
    R43 = fish(A4,A3,10);
    R44 = fish(A4,A4,10);
    R45 = fish(A4,A5,10);
    R51 = fish(A5,A1,10);
    R52 = fish(A5,A2,10);
    R53 = fish(A5,A3,10);
    R54 = fish(A5,A4,10);
    R55 = fish(A5,A5,10);
    H1=["Number of eigenvectors = 10"]
    R=["Train/test ","Subset 1","Subset 2","Subset 3","Subset 4","Subset 5";
        "Subset 1", R11,R12,R13,R14,R15;
        "Subset 2", R21,R22,R23,R24,R25;
        "Subset 3", R31,R32,R33,R34,R35;
        "Subset 4", R41,R42,R43,R44,R45;
        "Subset 5", R51,R52,R53,R54,R55]
    
     S11 = fish(A1,A1,31);
    S12 = fish(A1,A2,31);
    S13 = fish(A1,A3,31);
    S14 = fish(A1,A4,31);
    S15 = fish(A1,A5,31);
    S21 = fish(A2,A1,31);
    S22 = fish(A2,A2,31);
    S23 = fish(A2,A3,31);
    S24 = fish(A2,A4,31);
    S25 = fish(A2,A5,31);
    S31 = fish(A3,A1,31);
    S32 = fish(A3,A2,31);
    S33 = fish(A3,A3,31);
    S34 = fish(A3,A4,31);
    S35 = fish(A3,A5,31);
    S41 = fish(A4,A1,31);
    S42 = fish(A4,A2,31);
    S43 = fish(A4,A3,31);
    S44 = fish(A4,A4,31);
    S45 = fish(A4,A5,31);
    S51 = fish(A5,A1,31);
    S52 = fish(A5,A2,31);
    S53 = fish(A5,A3,31);
    S54 = fish(A5,A4,31);
    S55 = fish(A5,A5,31);
    H2=["Number of eigenvectors = 31"]
    S=["Train/test ","Subset 1","Subset 2","Subset 3","Subset 4","Subset 5";
        "Subset 1", S11,S12,S13,S14,S15;
        "Subset 2", S21,S22,S23,S24,S25;
        "Subset 3", S31,S32,S33,S34,S35;
        "Subset 4", S41,S42,S43,S44,S45;
        "Subset 5", S51,S52,S53,S54,S55]
    