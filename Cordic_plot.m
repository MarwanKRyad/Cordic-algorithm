% angle=0:0.1*pi:2*pi;
% [x, y] =cordic_algorithm (angle,4);
% ideal_cos=cos(angle);
% figure
% plot(angle,x,'g');
% hold on 
% plot(angle,ideal_cos,'r');
% xlabel('angle in rad');
% ylabel('cos');
% legend('cordic cos','ideal cos');
% title("cordic cos at n=4");
% grid on
% axis tight

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% angle=0:0.1*pi:2*pi;
% [x, y] =cordic_algorithm (angle,10);
% ideal_cos=cos(angle);
% figure
% plot(angle,x,'g');
% hold on 
% plot(angle,ideal_cos,'r');
% xlabel('angle in rad');
% ylabel('cos');
% legend('cordic cos','ideal cos');
% title("cordic cos at n=10");
% grid on
% axis tight
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% angle=0:0.1*pi:2*pi;
% [x, y] =cordic_algorithm (angle,4);
% ideal_sin=sin(angle);
% figure
% plot(angle,y,'g');
% hold on 
% plot(angle,ideal_sin,'r');
% xlabel('angle in rad');
% ylabel('cos');
% legend('cordic sin','ideal cos');
% title("cordic sin at n=4");
% grid on
% axis tight
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% angle=0:0.1*pi:2*pi;
% [x, y] =cordic_algorithm (angle,10);
% ideal_sin=sin(angle);
% figure
% plot(angle,y,'g');
% hold on 
% plot(angle,ideal_sin,'r');
% xlabel('angle in rad');
% ylabel('cos');
% legend('cordic sin','ideal cos');
% title("cordic sin at n=10");
% grid on
% axis tight
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
angle=-6*pi:0.1*pi:6*pi;
[x, y] =cordic_algorithm (angle,10);
figure
plot(angle,x,'g');
hold on 
plot(angle,y,'r');
xlabel('angle in rad');
ylabel('cordic');
legend('cordic cos','cordic sin');
title("cordic at n=10");
grid on
axis tight