function random_2bit(tsize)
close all
load dataSeed.mat

fid1 = fopen('v252f_Cd_161_012830_2bit.lba', 'r');

fid2 = fopen('Data/v252f_Cd_161_012830.lba','w');
fid2 = fopen('Data/v252f_Cd_161_012830.lba','w');
fid3 = fopen('Data/v252f_At_161_012830.lba', 'w');

A = fread(fid1,4096,'uint8=>char');
%Copy the header of an original LBA file to the new file
fwrite(fid2, A);
fwrite(fid3, A);
 tic
rng(dataSeed); %Reset the Random Number Generator seed once
 for i = 1:tsize
 r = randi([-1 1],1,1024*1000*10);
 fwrite(fid2, r,'bit2');
 fwrite(fid3, r,'bit2');
 end
 toc
 fclose(fid2);
 fclose(fid3);
 fclose(fid1);