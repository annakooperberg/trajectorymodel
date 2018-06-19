%taken from https://nl.mathworks.com/help/aerotbx/examples/importing-from-usaf-digital-datcom-files.html#d119e62
type astdatcom.in;
type astdatcom.out;
alldata = datcomimport('astdatcom.out', true, 0);
data = alldata{1};
aerotab = {'cyb' 'cnb' 'clq' 'cmq'};
for k = 1:length(aerotab)
    for m = 1:data.nmach
        for h = 1:data.nalt
            data.(aerotab{k})(:,m,h) = data.(aerotab{k})(1,m,h);
        end
    end
end
