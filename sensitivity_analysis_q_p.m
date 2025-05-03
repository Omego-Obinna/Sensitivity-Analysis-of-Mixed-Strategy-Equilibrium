% Hypothetical values for parameters
B_A_leak = 250000;     % Benefit for A if it leaks information
C_A_look = 30000;      % Cost for A to look for information
B_U_harmony = 200000;  % Benefit for U from a secure environment
B_U_hide = 150000;     % Benefit for U if hiding is successful
C_U_hide = 50000;      % Cost for U to hide information
C_U_leak = 300000;     % Cost for U if data is leaked

% Small perturbation value (delta) for central differencing
delta = 1e3;  % Perturb by 1000

% Plotting the sensitivity results to match the uploaded images
figure;

% (a) Sensitivity of p* with respect to C_A_look
subplot(2, 3, 1);
C_A_look_range = linspace(20000, 40000, 100);
p_star_vals = (B_A_leak - C_A_look_range) / B_A_leak;
plot(C_A_look_range, p_star_vals, 'b-', 'LineWidth', 1.5);
xlabel('C^{A}_{look} (£)', 'FontSize', 12); ylabel('p^*', 'FontSize', 12);
title('Sensitivity of p^{*} with respect to C^{A}_{look} (£)', 'FontSize', 12);
legend('p^* vs. C^{A}_{look}', 'Location', 'Best');
text(max(C_A_look_range), min(p_star_vals) - 0.02, '(a)', 'FontSize', 12, 'Color', [0.5 0 0.5], 'HorizontalAlignment', 'center');
set(gca, 'XTickLabel', strcat('£', string(get(gca, 'XTick'))), 'FontSize', 10);

% (b) Sensitivity of p* with respect to B_A_leak
subplot(2, 3, 2);
B_A_leak_range = linspace(200000, 300000, 100);
p_star_vals = (B_A_leak_range - C_A_look) ./ B_A_leak_range;
plot(B_A_leak_range, p_star_vals, 'r-', 'LineWidth', 1.5);
xlabel('B^{A}_{leak} (£)', 'FontSize', 12); ylabel('p^*', 'FontSize', 12);
title('Sensitivity of p^{*} with respect to B^{A}_{leak} (£)', 'FontSize', 12);
legend('p^* vs. B^{A}_{leak}', 'Location', 'Best');
text(max(B_A_leak_range), min(p_star_vals) - 0.02, '(b)', 'FontSize', 12, 'Color', [0.5 0 0.5], 'HorizontalAlignment', 'center');
set(gca, 'XTickLabel', strcat('£', string(get(gca, 'XTick'))), 'FontSize', 10);

% (c) Sensitivity of q* with respect to B_U_harmony
subplot(2, 3, 3);
B_U_harmony_range = linspace(150000, 250000, 100);
q_star_vals = (B_U_harmony_range - B_U_hide + C_U_hide) ./ (C_U_leak + B_U_harmony_range);
plot(B_U_harmony_range, q_star_vals, 'b-', 'LineWidth', 1.5);
xlabel('B^{U}_{harmony} (£)', 'FontSize', 12); ylabel('q^*', 'FontSize', 12);
title('Sensitivity of q^{*} with respect to B^{U}_{harmony} (£)', 'FontSize', 12);
legend('q^* vs. B^{U}_{harmony}', 'Location', 'Best');
text(max(B_U_harmony_range), min(q_star_vals) - 0.02, '(c)', 'FontSize', 12, 'Color', [0.5 0 0.5], 'HorizontalAlignment', 'center');
set(gca, 'XTickLabel', strcat('£', string(get(gca, 'XTick'))), 'FontSize', 10);

% (d) Sensitivity of q* with respect to B_U_hide
subplot(2, 3, 4);
B_U_hide_range = linspace(100000, 200000, 100);
q_star_vals = (B_U_harmony - B_U_hide_range + C_U_hide) ./ (C_U_leak + B_U_harmony);
plot(B_U_hide_range, q_star_vals, 'r-', 'LineWidth', 1.5);
xlabel('B^{U}_{hide} (£)', 'FontSize', 12); ylabel('q^*', 'FontSize', 12);
title('Sensitivity of q^{*} with respect to B^{U}_{hide} (£)', 'FontSize', 12);
legend('q^* vs. B^{U}_{hide}', 'Location', 'Best');
text(max(B_U_hide_range), min(q_star_vals) - 0.02, '(d)', 'FontSize', 12, 'Color', [0.5 0 0.5], 'HorizontalAlignment', 'center');
set(gca, 'XTickLabel', strcat('£', string(get(gca, 'XTick'))), 'FontSize', 10);

% (e) Sensitivity of q* with respect to C_U_hide
subplot(2, 3, 5);
C_U_hide_range = linspace(40000, 60000, 100);
q_star_vals = (B_U_harmony - B_U_hide + C_U_hide_range) ./ (C_U_leak + B_U_harmony);
plot(C_U_hide_range, q_star_vals, 'b-', 'LineWidth', 1.5);
xlabel('C^{U}_{hide} (£)', 'FontSize', 12); ylabel('q^*', 'FontSize', 12);
title('Sensitivity of q^{*} with respect to C^{U}_{hide} (£)', 'FontSize', 12);
legend('q^* vs. C^{U}_{hide}', 'Location', 'Best');
text(max(C_U_hide_range), min(q_star_vals) - 0.02, '(e)', 'FontSize', 12, 'Color', [0.5 0 0.5], 'HorizontalAlignment', 'center');
set(gca, 'XTickLabel', strcat('£', string(get(gca, 'XTick'))), 'FontSize', 10);

% (f) Sensitivity of q* with respect to C_U_leak
subplot(2, 3, 6);
C_U_leak_range = linspace(250000, 350000, 100);
q_star_vals = (B_U_harmony - B_U_hide + C_U_hide) ./ (C_U_leak_range + B_U_harmony);
plot(C_U_leak_range, q_star_vals, 'r-', 'LineWidth', 1.5);
xlabel('C^{U}_{leak} (£)', 'FontSize', 12); ylabel('q^*', 'FontSize', 12);
title('Sensitivity of q^{*} with respect to C^{U}_{leak} (£)', 'FontSize', 12);
legend('q^* vs. C^{U}_{leak}', 'Location', 'Best');
text(max(C_U_leak_range), min(q_star_vals) - 0.02, '(f)', 'FontSize', 12, 'Color', [0.5 0 0.5], 'HorizontalAlignment', 'center');
set(gca, 'XTickLabel', strcat('£', string(get(gca, 'XTick'))), 'FontSize', 10);
