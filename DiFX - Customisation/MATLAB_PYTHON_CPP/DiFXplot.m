function DiFXplot(lowfreq,hifreq,nchan,phase,...
    ampLag,amp,ant1name,ant2name,polpair,mjdstring,snr,csnr)
close all
y = (lowfreq:(hifreq-lowfreq)/double(nchan-1):hifreq);
subplot(2,1,1)
plot(y,amp,'rx',y,amp,'b-')
ylabel('Amplitude');
xlabel('Frequency (MHz)');
  title(strcat({'Baseline with antenna '},ant1name,'-',...
      ant2name,{' Polarisation '},polpair,{' at mjd '},...
      mjdstring,{' SNR ~ '},num2str(snr)));
axis([lowfreq hifreq -Inf Inf])

subplot(2,1,2)
plot(y,phase,'rx',y,phase,'b-')
ylabel('Phase in radians');
xlabel(strcat({'Frequency '},num2str(lowfreq),'-',...
     num2str(hifreq),{' MHz '}))
axis([lowfreq hifreq -pi pi])

