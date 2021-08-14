function [acc] = fish(train,tests,kkk)
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
    
    [D,idx]=sort(diag(D),'descend');
    V=V(:,idx);
    V2=[];
    V2=V(:,1:kkk);
    eigen =  train*V2;
    x=size(train,2)/10;
    y = size(tests,2)/10;
    ScatW = zeros(2500,2500);
    ScatB = zeros(2500,2500);
    for i=1:10
%         ScatW = ScatW + A(:,i)*A(:,i)';
            ScatB = ScatB + (mean(train(:,x*i-x+1:x*i),2)*mean(train(:,x*i-x+1:x*i),2)');
            k=floor((i-1)/x)+1;
            temp=mean(train(:,x*k-x+1:x*k),2);
            for j=1:x
            ScatW=ScatW+(A1(:,x*i-j+1)-temp)*(A1(:,x*i-j+1)-temp)';
            end
    end
    Sbb = eigen'*ScatB*eigen;
    Sww = eigen'*ScatW*eigen;
    [VeSbb,DeSww]=eig(Sbb,Sww);
    [DeSww,idx]=sort(diag(DeSww),'descend');
    VeSbb=VeSbb(:,idx);
    fisher=eigen*VeSbb;
    weights=fisher'*train;
    err_tot=[];
    count=0;
    idx=[];
    for i=1:size(tests,2)
        test1 = tests(:,i);
        test2=test1-av;
        projtest=fisher'*test2;
        blah=[];
        for j=1:size(train,2)
            blah=[blah , (norm(weights(:,j)-projtest))];
        end
        [min_dist min_dist_ind]=min(blah);
        idx=[idx min_dist_ind];
        if(floor((i-1)/y)==floor((min_dist_ind-1)/x))
            count=count+1;
        end 
%         recons_sum=zeros(m*n,1);
%         recons=[];
%         for i=1:kkk(z)
%             recons=projtest(i)*fisher(:,i);
%             recons_sum=recons_sum+recons;
%         end
%         recons_img=recons_sum+av;
%  
%         err=immse(test1,recons_img);
%         err_tot=[err_tot err];
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
