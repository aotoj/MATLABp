close all; clear; clc;

AirTempData = load('SantaCruzAirTempMaxMin2015to2019.txt');
% delete the first column (time of measurement) since we don't need it
AirTempData(:,1) = [];
% create the column vectors for max and min temperatures
MaxTemp = AirTempData(:,2); 
MinTemp = AirTempData(:,3);
% plot now
x = 1:1826;
figure(1)
plot(x, MaxTemp, 'b')
hold on
plot(x, MinTemp, 'b')
xline(365,'r','LineWidth',2); % plot the vertical red lines.
xline(731,'r','LineWidth',2); % +366 for the leap year.
xline(1096,'r','LineWidth',2);
xline(1461,'r','LineWidth',2);
hold off
% type in the plotting and axis styling commands here
xticks([1,365,731,1096,1461])
xticklabels({'Jan 1, 2015','Jan 1, 2016','Jan 1, 2017','Jan 1, 2018','Jan 1, 2019'})
xtickangle(35)
axis tight
title('Maximum and minimum daily air temperatures in Santa Cruz, 2015-2019','FontSize',18)
ylabel(['Temperature in ' char(176) 'F'])
set(gca,'FontSize',16)