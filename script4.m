clear; clf;
out=load('out'); % load the data file out
t =out(:,1); % time
xp=out(:,2); % the position of the primary star
yp=out(:,3);
xs=out(:,4); % the position of the secondary star
ys=out(:,5);
Ep=out(:,6); % the energy of the primary star
Es=out(:,7); % the energy of the secondary star

% Plot xp vs yp and xs vs ys
figure;
plot(xp, yp, 'b-', xs, ys, 'r-');
xlabel('X');
ylabel('Y');
title('Orbit of the Binary Star System');
legend('Primary Star', 'Secondary Star');

% Plot xp-xs vs yp-ys
figure;
plot(xp-xs, yp-ys, 'k-');
xlabel('X_p - X_s');
ylabel('Y_p - Y_s');
title('Relative Motion of Secondary Star');

figure;
plot(t, Ep, 'k-');
xlabel('Time');
ylabel('Energy');
title('Energy of the Primary Star');

figure;
plot(t, Es, 'k-');
xlabel('Time');
ylabel('Energy');
title('Energy of the Secondary Star');
