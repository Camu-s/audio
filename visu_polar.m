function visu_polar(theta_0, N, d, f, c)
%VISU_POLAR Visualise la réponse d'antenne
%   In: theta_0, angle de polarisation
%       N, nombre de microphone
%       d, distance entre les microphones
%       f, fréquence
%       c, célérité du son

theta = linspace(0, 180, 300);
cst = d.*(pi.*f./c);
sinus_num = sin(cst.*N.*(cos(theta_0)-cos(theta)));
sinus_denom = sin(cst.*(cos(theta_0)-cos(theta)));
plot(theta, sinus_num./sinus_denom);

end

