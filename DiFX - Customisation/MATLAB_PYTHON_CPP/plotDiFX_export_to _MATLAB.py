#Save to .MAT files
	scipy.io.savemat("%s_baseline%03d_freq_%02d_pol_%sPlotDiFX.mat" %\
	(inputfile, baseline[i], freqindex[i], polpair[i]),\
	 mdict={"Visibility": vis[0][:j+1],\
	"nchan": nchan[i],\
	"chan": chans[:nchan[i]],\
	"lag":lag[i],\
	"amp": amp[i][:nchan[i]],\
	"phase":phase[i][:nchan[i]],\
	"baseline":baseline[i],\
	"freqindex":freqindex[i],\
	"ant1name":ant1name,\
	"ant2name":ant2name,\
	"lowfreq":lowfreq,\
	"hifreq":hifreq,\
	"mjdstring":mjdstring,\
	"snr":snr,\
	"csnr":((snr-3)/2),\
	"delayOffSet":delayoffsetus,\
	"polpair":polpair[i]})
