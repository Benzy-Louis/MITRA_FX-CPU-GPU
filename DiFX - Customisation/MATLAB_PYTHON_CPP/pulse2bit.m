function pulse2bit(l,w,tsize,sign)
close all
load dataSeed.mat

fid1 = fopen('v252f_Cd_161_012830_2bit.lba', 'r');

fid2 = fopen('Data/v252f_Cd_161_012830.lba','w');
fid3 = fopen('Data/v252f_At_161_012830.lba', 'w');

A = fread(fid1,4096,'uint8=>char');
o = l-w;
pattern =  [sign*ones(1,w),zeros(1,o)];
%Copy the header of an original LBA file to the new file
fwrite(fid2, A);
fwrite(fid3, A);
 
tic 
 r = int8(zeros(1,1024*1000*10));
 r = int8(repmat(pattern, 1, (length(r)/length(pattern))));
 for i = 1:tsize
 fwrite(fid2, r,'bit2');
 fwrite(fid3, r,'bit2');
 end
 toc

 fclose(fid2);
 fclose(fid3);
 fclose(fid1);