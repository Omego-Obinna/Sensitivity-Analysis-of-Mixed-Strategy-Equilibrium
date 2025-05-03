% Define the game parameters with sample values (in monetary terms)
B_A_leak = 250000;  % Benefit of leaking information
C_A_look = 30000;   % Cost of looking for hidden information

% Create a range of probabilities for p (probability of attacking)
p_values = linspace(0, 1, 100);

% Calculate expected payoffs for each p value
E_Look_A = -C_A_look .* p_values + (B_A_leak - C_A_look) .* (1 - p_values);
E_Not_Look_A = zeros(size(p_values));  % Expected payoff is 0 for not attacking

% Find the point where E_Look_A equals E_Not_Look_A
[~, idx] = min(abs(E_Look_A - E_Not_Look_A));
p_optimal = p_values(idx);
optimal_payoff = E_Look_A(idx);

% Plot the expected payoffs with monetary values
figure;
plot(p_values, E_Look_A, 'b-', 'LineWidth', 2); hold on;
plot(p_values, E_Not_Look_A, 'r--', 'LineWidth', 2);
plot(p_optimal, optimal_payoff, 'ko', 'MarkerSize', 10, 'LineWidth', 2); % Mark the equilibrium point
legend('E^{Look_{A}}_{payoff}', 'E^{ ¬Look_{A}}_{payoff}', 'Equilibrium Point', 'Location', 'Best');
xlabel('Probability of Attacking (p)');
ylabel('Expected Payoff (£)');
title('Expected Payoff vs Probability of Attacking for \mathcal{A}');
set(gca, 'YTickLabel', strcat('£', string(get(gca, 'YTick')))); % Display monetary values
grid on;
hold off;

% Print the results to the command window
fprintf('Optimal Probability of Attacking (p*): %.2f\n', p_optimal);
fprintf('Expected Payoff at Equilibrium: $%.2f\n', optimal_payoff);
