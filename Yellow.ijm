run("Color Threshold...");
// Color Thresholder 2.0.0-rc-61/1.51n
// Autogenerated macro, single images only!
min=newArray(3);
max=newArray(3);
filter=newArray(3);
a=getTitle();
run("HSB Stack");
run("Convert Stack to Images");
selectWindow("Hue");
rename("0");
selectWindow("Saturation");
rename("1");
selectWindow("Brightness");
rename("2");
min[0]=30;
max[0]=50;
filter[0]="pass";
min[1]=0;
max[1]=255;
filter[1]="pass";
min[2]=70;
max[2]=255;
filter[2]="pass";
for (i=0;i<3;i++){
  selectWindow(""+i);
  setThreshold(min[i], max[i]);
  run("Convert to Mask");
  if (filter[i]=="stop")  run("Invert");
}
imageCalculator("AND create", "0","1");
imageCalculator("AND create", "Result of 0","2");
for (i=0;i<3;i++){
  selectWindow(""+i);
  close();
}
selectWindow("Result of 0");
close();
selectWindow("Result of Result of 0");
rename(a);
// Colour Thresholding-------------

roiManager("Select", 0);
run("Analyze Particles...", "summarize");

roiManager("Select", 1);
run("Analyze Particles...", "summarize");

roiManager("Select", 2);
run("Analyze Particles...", "summarize");

roiManager("Select", 3);
run("Analyze Particles...", "summarize");

roiManager("Select", 4);
run("Analyze Particles...", "summarize");

roiManager("Select", 5);
run("Analyze Particles...", "summarize");

roiManager("Select", 6);
run("Analyze Particles...", "summarize");

roiManager("Select", 7);
run("Analyze Particles...", "summarize");

roiManager("Select", 8);
run("Analyze Particles...", "summarize");

roiManager("Select", 9);
run("Analyze Particles...", "summarize");
