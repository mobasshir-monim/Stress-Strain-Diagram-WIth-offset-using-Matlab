stress=[0 0.2096 0.4759 0.6595 0.9972 1.387 2.586 3.087 5.4 6.254 6.762 7.064 7.217 7.39 7.447 7.275 7.62 7.75 7.76 7.665 7.647 7.597 7.552 7.199 6.50 5.595 4.92 4.489 ];
strain=[0 0.0000874 .000140 .0002097 .0003146 0.0004369 0.0008738 .001048 .001922 .002447 .003146 .003845 .004369 .005278 .00568 .00612 .00786 .011855 .01835 .02656 .02726 .02971 .03146 .04369 .06117 .07864 .08738 .09262];
stress2=(1000/9.8).*stress;
plot(strain,stress2,"bo-")
grid on
title("Figure 1: Variation of the Stress vs Strain Diagram")
xlabel("Strain, \epsilon (mm/mm)")
ylabel("Stress, \sigma (MPa)")
text(0.09262,4.489*(1000/9.8),"\leftarrow Fracture")
hold on
slopes=diff(stress2,1,10)./diff(strain,1,10);
m=286690.9469;
y=@(x)m*(x-.0002);
fplot(y,[.0002 .0035],"r-",LineWidth=1.5)
hold off