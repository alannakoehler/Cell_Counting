path = "/Users/akoehler/Desktop/CD1_e10.5_p7.5_EC_RelnG10_BrdU_sl67A_20xMosaix_(c1+c2+c3)_copy_plot.tif";
sl = '67A'

open(path);

runMacro("/Users/akoehler/Desktop/Cell_Counting/Green.ijm");
selectWindow("Summary");
saveAs("Results", "/Users/akoehler/Desktop/Cell_Counting/Results/Raw/Test_" + sl +".csv")
close();


open(path);

runMacro("/Users/akoehler/Desktop/Cell_Counting/Green.ijm");
selectWindow("Summary");
saveAs("Results", "/Users/akoehler/Desktop/Cell_Counting/Results/Raw/Green_" + sl +".csv");


open(path);

runMacro("/Users/akoehler/Desktop/Cell_Counting/Yellow.ijm");
selectWindow("Summary");
saveAs("Results", "/Users/akoehler/Desktop/Cell_Counting/Results/Raw/Yellow_" + sl +".csv");


open(path);

runMacro("/Users/akoehler/Desktop/Cell_Counting/Red.ijm");
selectWindow("Summary");
saveAs("Results", "/Users/akoehler/Desktop/Cell_Counting/Results/Raw/Red_" + sl +".csv");


