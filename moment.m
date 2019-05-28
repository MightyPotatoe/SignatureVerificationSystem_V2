function [output] = moment(img)
[Cgy, Cgx] = centerOfGravity(img);
rozmiar = size(img);
j=0.0000 + 1.0000i;
A=0;
for i = 1:1:rozmiar(1)
    for k = 1:1:rozmiar(2)
        A = A + img(i,k);
    end
end
u=1;
v=1;
c11 = 0;
c20 = 0;
c21 = 0;
c12 = 0;
c30 = 0;
for i =1:1:rozmiar(1)
    for k= 1:1:rozmiar(2)
        c11=c11 + (((k-Cgx) + j*(i-Cgy))^1)*((k-Cgx)-j*(i-Cgy)^1)*img(i,k);
        c20=c20 + (((k-Cgx) + j*(i-Cgy))^2)*((k-Cgx)-j*(i-Cgy)^0)*img(i,k);
        c21=c21 + (((k-Cgx) + j*(i-Cgy))^2)*((k-Cgx)-j*(i-Cgy)^1)*img(i,k);
        c12=c12 + (((k-Cgx) + j*(i-Cgy))^1)*((k-Cgx)-j*(i-Cgy)^2)*img(i,k);
        c30=c30 + (((k-Cgx) + j*(i-Cgy))^3)*((k-Cgx)-j*(i-Cgy)^0)*img(i,k);
    end
end

s11 = c11/(A^2);
s20 = c20/(A^2);
s21 = c21/(A^2.5);
s12 = c12/(A^2.5);
s30 = c30/(A^2.5);

I1 = real(s11);
I2 = real(s21*s12);
I3 = real(s20*s12*s12);
I4 = imag(s20*s12*s12);
I5 = real(s30*s12*s12*s12);
I6 = imag(s30*s12*s12*s12);

output = [I1 I2 I3 I4 I5 I6];





end