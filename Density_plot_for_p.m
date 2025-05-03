% Generate data points for p (attacking) and q (hiding) probabilities
p = randn(1000, 1) * 0.1 + 0.88;  % Centered around p* = 0.88
q = randn(1000, 1) * 0.1 + 0.20;  % Centered around q* = 0.20

% Set bin edges for the 2D histogram
pEdges = linspace(0, 1, 21);  % 21 bins along the p-axis
qEdges = linspace(0, 1, 31);  % 31 bins along the q-axis

% Generate 2D histogram
h = histogram2(p, q, pEdges, qEdges, 'DisplayStyle', 'bar3');

% Set color scale and bar properties
colormap hsv;  % Using the HSV colormap as requested
h.FaceColor = 'flat';  % Use a flat color scheme for the histogram
h.EdgeColor = 'none';  % Remove edges for a smoother appearance
h.ShowEmptyBins = 'off';  % Hide empty bins

% Set axis labels and title
xlabel('Probability of Attacking (\it{p})', 'FontSize', 14);
ylabel('Probability of Hiding (\it{q})', 'FontSize', 14);
zlabel('Frequency', 'FontSize', 14);  % Add label for the z-axis
title('Nash Equilibrium Distribution Plot', 'FontSize', 16);

% Add colorbar for frequency
c = colorbar;
ylabel(c, 'Frequency', 'FontSize', 12);

% Set plot viewing angle
view(3);  % 3D view
grid on;
