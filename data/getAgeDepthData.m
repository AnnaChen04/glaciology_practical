%% script for loading and making a table from Roosevelt Island Age depth data downloaded for
% https://www.usap-dc.org/view/dataset/601359

% save rooseveltIslandAgeDepth RICE17InterpolatedAges1
load rooseveltIslandAgeDepth RICE17InterpolatedAges1


depth = RICE17InterpolatedAges1(2:end,1);
ice_age = RICE17InterpolatedAges1(2:end,2);
gas_age = RICE17InterpolatedAges1(2:end,3);

AgeDepthTable = table(depth,ice_age,gas_age);

%save RI_table AgeDepthTable
load RI_table AgeDepthTable

plot(AgeDepthTable.ice_age,AgeDepthTable.depth)