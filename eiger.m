function [acc] = eiger(train,tests,kkk)
c=[];
acc=[];
     m=50;
     n=50;
     av = mean(train,2);
     A1=train;
    for i=1:size(train,2)
        train(:,i)=train(:,i)-av;
    end
    
    t = transpose(train);
    C = t*train;
    [V,D] = eig(C);
    eigen = [];
    V2=[];
     for i=size(train,2):-1:1+size(train,2)-kkk
        V2=[V2 V(:,i)];
     end
  
    eigen =  train*V2;
    x=size(train,2)/10;
    y = size(tests,2)/10;
    proj=[];
    for i=1:size(train,2)
        temp=eigen'*train(:,i);
        proj=[proj temp];
    end
    count=0;
    for i=1:size(tests,2)
        test1 = tests(:,i);
        test2=test1-av;
        projtest=eigen'*test2;
        blah=[];
        for j=1:size(train,2)
            dis=(norm(projtest-proj(:,j)))^2;
            blah=[blah dis];
        end
        [min_dist min_dist_ind]=min(blah);
        if(floor((i-1)/y)==floor((min_dist_ind-1)/x))
            count=count+1;
        end
       
    end
    
    c=[c count];
    %count/1.6
    acc=[acc (count/y)*10];
end
    %recons_img=reshape(recons_img,m,n);
%     figure,
%     imshow((reshape(test1,m,n)));
%     figure,
%     imshow(uint8(recons_img));
%         
%      figure(1)
%     grid on;
%     plot(k,acc);
%     xlabel("k");
%     ylabel("Recognition rate (%)");
%    
