clc;
clear;

load 'matlab.mat';

t = 0:0.002902494331065/64:7.456507936507936;
len_t = length(t);

col_f1 = size(f1,1);

% Generating Linespace for Envelope
T = len_t;
Fs = fs;

% 1 - 260.4172 Hz
Y1 = linspace(0,0.06827,Fs*0.05805);
Y2 = linspace(0.06827,2.625,Fs*(1.689-0.05805));
Y3 = linspace(2.625,0.7332,Fs*(3.46-1.689));
Y4 = linspace(0.7332,2.616,Fs*(4.107-3.46));
Y5 = linspace(2.616,1.721,Fs*(5.164-4.107));
Y6 = linspace(1.721,1.949,Fs*(5.396-5.164));
Y7 = linspace(1.949,0.9277,Fs*(5.799-5.396));
Y8 = linspace(0.9277,1.008,Fs*(5.898-5.799));
Y9 = linspace(1.008,0.5517,Fs*(6.028-5.898));
Y10 = linspace(0.5517,3.576,Fs*(7.05-6.028));
Y11 = linspace(3.576,0.1315,Fs*(7.265-7.05));
Y12 = linspace(0.1315,-0.04425,Fs*(7.457-7.265));

a = [Y1 Y2 Y3 Y4 Y5 Y6 Y7 Y8 Y9 Y10 Y11 Y12];
A = length(a);

if T < A
    a = a(1:T);
elseif T > A
        diff = T-A;
        for i = 1:diff
            a = [a, 0];
        end
end

% 2 - 523.3578 Hz
A1 = linspace(0,1.049,Fs*(0.537));
A2 = linspace(1.049,0.1715,Fs*(1.109-0.537));
A3 = linspace(0.1715,1.893,Fs*(1.805-1.109));
A4 = linspace(1.893,0.3307,Fs*(2.482-1.805));
A5 = linspace(0.3307,2.272,Fs*(3.027-2.482));
A6 = linspace(2.272,1.77,Fs*(3.274-3.027));
A7 = linspace(1.77,1.876,Fs*(3.625-3.274));
A8 = linspace(1.876,1.52,Fs*(3.773-3.625));
A9 = linspace(1.52,1.886,Fs*(3.834-3.773));
A10 = linspace(1.886,0.4954,Fs*(4.005-3.834));
A11 = linspace(0.4954,2.152,Fs*(4.322-4.005));
A12 = linspace(2.152,0.2423,Fs*(5.198-4.322));
A13 = linspace(0.2423,3.941,Fs*(5.552-5.198));
A14 = linspace(3.941,2.141,Fs*(5.822-5.552));
A15 = linspace(2.141,1.976,Fs*(6.162-5.822));
A16 = linspace(1.976,0.4753,Fs*(6.58-6.162));
A17 = linspace(0.4753,3.606,Fs*(7.068-6.58));
A18 = linspace(3.606,0.07296,Fs*(7.259-7.068));
A19 = linspace(0.07296,0.02584,Fs*(7.436-7.259));


b = [A1 A2 A3 A4 A5 A6 A7 A8 A9 A10 A11 A12 A13 A14 A15 A16 A17 A18 A19];
A = length(b);

if T < A
    b = b(1:T);
elseif T > A
        diff = T-A;
        for i = 1:diff
            b = [b, 0];
        end
end

% 3 - 785.7937 Hz
L1 = linspace(0,0.1509,Fs*0.2143);
L2 = linspace(0.1509,0.007196,Fs*(0.2641-0.1509));
L3 = linspace(0.007196,1.167,Fs*(0.6095-0.2641));
L4 = linspace(1.167,0.0268,Fs*(1.216-0.6095));
L5 = linspace(0.0268,2.399,Fs*(1.747-1.216));
L6 = linspace(2.399,0.07754,Fs*(2.305-1.747));
L7 = linspace(0.07754,2.61,Fs*(2.792-2.305));
L8 = linspace(2.61,0.2025,Fs*(3.291-2.792));
L9 = linspace(0.2025,2.715,Fs*(3.291-2.792));
L10 = linspace(2.715,0.1903,Fs*(4.11-3.886));
L11 = linspace(0.1903,2.312,Fs*(4.473-4.11));
L12 = linspace(2.312,0.1316,Fs*(4.995-4.473));
L13 = linspace(0.1316,3.586,Fs*(5.465-4.995));
L14 = linspace(3.586,0.2119,Fs*(5.828-5.465));
L15 = linspace(0.2119,1.942,Fs*(6.235-5.828));
L16 = linspace(1.942,0.2418,Fs*(6.745-6.235));
L17 = linspace(0.2418,3.435,Fs*(7.059-6.745));
L18 = linspace(3.435,0.07041,Fs*(7.245-7.059));
L19 = linspace(0.07041,0.0006697,Fs*(7.454-7.245));

c = [L1 L2 L3 L4 L5 L6 L7 L8 L9 L10 L11 L12 L13 L14 L15 L16 L17 L18 L19];
A = length(c);

if T < A
    c = c(1:T);
elseif T > A
        diff = T-A;
        for i = 1:diff
            c = [c, 0];
        end
end

% 4 - 1.0486e+03 Hz
R1 = linspace(0,-0.003979,Fs*(0.08998));
R2 = linspace(-0.003979,0.518,Fs*(0.4383-0.08998));
R3 = linspace(0.518,0.1987,Fs*(0.7692-0.4383));
R4 = linspace(0.1987,0.8261,Fs*(1.132-0.7692));
R5 = linspace(0.8261,0.1113,Fs*(1.474-1.132));
R6 = linspace(0.1113,1.31,Fs*(1.759-1.474));
R7 = linspace(1.31,0.04038,Fs*(2.159-1.759));
R8 = linspace(0.04038,1.159,Fs*(2.537-2.159));
R9 = linspace(1.159,0.4815,Fs*(2.984-2.537));
R10 = linspace(0.4815,1.095,Fs*(3.367-2.984));
R11 = linspace(1.095,0.4708,Fs*(3.68-3.367));
R12 = linspace(0.4708,2.255,Fs*(4.02-3.68));
R13 = linspace(2.255,0.4736,Fs*(4.267-4.02));
R14 = linspace(0.4736,1.413,Fs*(4.534-4.267));
R15 = linspace(1.413,0.3956,Fs*(4.85-4.534));
R16 = linspace(0.3956,1.66,Fs*(5.399-4.85));
R17 = linspace(1.66,0.4561,Fs*(6.179-5.399));
R18 = linspace(0.4561,1.402,Fs*(6.594-6.179));
R19 = linspace(1.402,0.6059,Fs*(6.891-6.594));
R20 = linspace(0.6059,2.092,Fs*(7.073-6.891));
R21 = linspace(2.092,0.05784,Fs*(7.25-7.073));
R22 = linspace(0.05784,0.003765,Fs*(7.457-7.25));

d = [R1 R2 R3 R4 R5 R6 R7 R8 R9 R10 R11 R12 R13 R14 R15 R16 R17 R18 R19 R20 R21 R22];
A = length(d);

if T < A
    d = d(1:T);
elseif T > A
        diff = T-A;
        for i = 1:diff
            d = [d, 0];
        end
end


% 5 - 1.3103e+03 Hz
Q1 = linspace(0,0.005106,Fs*(0.1103));
Q2 = linspace(0.005106,0.2001,Fs*(0.1625-0.1103));
Q3 = linspace(0.2001,0.05192,Fs*(0.2496-0.1625));
Q4 = linspace(0.05192,1.167,Fs*(0.5341-0.2496));
Q5 = linspace(1.167,0.06647,Fs*(0.8475-0.5341));
Q6 = linspace(0.06647,1.272,Fs*(1.144-0.8475));
Q7 = linspace(1.272,0.3617,Fs*(1.469-1.144));
Q8 = linspace(0.3617,1.989,Fs*(1.724-1.469));
Q9 = linspace(1.989,0.2921,Fs*(2.11-1.724));
Q10 = linspace(0.2921,1.722,Fs*(2.4-2.11));
Q11 = linspace(1.722,0.3035,Fs*(2.673-2.4));
Q12 = linspace(0.3035,2.465,Fs*(2.943-2.673));
Q13 = linspace(2.465,0.311,Fs*(3.268-2.943));
Q14 = linspace(0.311,2.03,Fs*(3.541-3.268));
Q15 = linspace(2.03,0.2745,Fs*(3.846-3.541));
Q16 = linspace(0.2745,3.813,Fs*(4.093-3.846));
Q17 = linspace(3.813,0.2766,Fs*(4.264-4.093));
Q18 = linspace(0.2766,2.303,Fs*(4.45-4.264));
Q19 = linspace(2.303,0.321,Fs*(4.786-4.45));
Q20 = linspace(0.321,2.138,Fs*(4.989-4.786));
Q21 = linspace(2.138,0.9786,Fs*(5.306-4.989));
Q22 = linspace(0.9786,4.058,Fs*(5.581-5.306));
Q23 = linspace(4.058,0.8235,Fs*(5.82-5.581));
Q24 = linspace(0.8235,2.26,Fs*(6.078-5.82));
Q25 = linspace(2.26,0.1841,Fs*(6.394-6.078));
Q26 = linspace(0.1841,2.563,Fs*(6.716-6.394));
Q27 = linspace(2.563,0.2605,Fs*(6.882-6.716));
Q28 = linspace(0.2605,3.692,Fs*(7.036-6.882));
Q29 = linspace(3.692,0.05091,Fs*(7.245-7.036));
Q30 = linspace(0.05091,-0.006908,Fs*(7.457-7.245));

e = [Q1 Q2 Q3 Q4 Q5 Q6 Q7 Q8 Q9 Q10 Q11 Q12 Q13 Q14 Q15 Q16 Q17 Q18 Q19 Q20 Q21 Q22 Q23 Q24 Q25 Q26 Q27 Q28 Q29 Q30];
A = length(e);

if T < A
    e = e(1:T);
elseif T > A
        diff = T-A;
        for i = 1:diff
            e = [e, 0];
        end
end

% 6 - 1.5735e+03 Hz
Z1 = linspace(0,0.0005605,Fs*(0.04354));
Z2 = linspace(0.0005605,0.372,Fs*(0.2757-0.04354));
Z3 = linspace(0.372,0.08699,Fs*(0.3541-0.2757));
Z4 = linspace(0.08699,0.7444,Fs*(0.6618-0.3541));
Z5 = linspace(0.7444,0.2264,Fs*(1.022-0.6618));
Z6 = linspace(0.2264,0.5084,Fs*(1.12-1.022));
Z7 = linspace(0.5084,0.1059,Fs*(1.509-1.12));
Z8 = linspace(0.1059,1.049,Fs*(1.771-1.509));
Z9 = linspace(1.049,0.1181,Fs*(2.043-1.771));
Z10 = linspace(0.1181,0.8604,Fs*(2.328-2.043));
Z11 = linspace(0.8604,0.1523,Fs*(2.514-2.328));
Z12 = linspace(0.1523,1.508,Fs*(2.746-2.514));
Z13 = linspace(1.508,0.3701,Fs*(2.99-2.746));
Z14 = linspace(0.3701,0.9096,Fs*(3.149-2.99));
Z15 = linspace(0.9096,0.3229,Fs*(3.492-3.149));
Z16 = linspace(0.3229,1.238,Fs*(3.701-3.492));
Z17 = linspace(1.238,0.4187,Fs*(3.93-3.701));
Z18 = linspace(0.4187,2.19,Fs*(4.104-3.93));
Z19 = linspace(2.19,0.2206,Fs*(4.307-4.104));
Z20 = linspace(0.2206,1.506,Fs*(4.496-4.307));
Z21 = linspace(1.506,0.195,Fs*(4.763-4.496));
Z22 = linspace(0.195,1.335,Fs*(5.016-4.763));
Z23 = linspace(1.335,0.3727,Fs*(5.016-4.763));
Z24 = linspace(0.3727,2.052,Fs*(5.468-5.164));
Z25 = linspace(2.052,0.3467,Fs*(6.089-5.468));
Z26 = linspace(0.3467,0.9791,Fs*(6.237-6.089));
Z27 = linspace(0.9791,0.6402,Fs*(6.504-6.237));
Z28 = linspace(0.6402,1.795,Fs*(6.742-6.504));
Z29 = linspace(1.795,0.5138,Fs*(6.922-6.742));
Z30 = linspace(0.5138,1.971,Fs*(7.047-6.922));
Z31 = linspace(1.971,0.04569,Fs*(7.236-7.047));
Z32 = linspace(0.04569,0,Fs*(7.457-7.236));

f = [Z1 Z2 Z3 Z4 Z5 Z6 Z7 Z8 Z9 Z10 Z11 Z12 Z13 Z14 Z15 Z16 Z17 Z18 Z19 Z20 Z21 Z22 Z23 Z24 Z25 Z26 Z27 Z28 Z29 Z30 Z31 Z32];
A = length(f);

if T < A
    f = f(1:T);
elseif T > A
        diff = T-A;
        for i = 1:diff
            f = [f, 0];
        end
end

% 7 - 1.8357e+03 Hz
S1 = linspace(0,-0.001638,Fs*(0.09288));
S2 = linspace(-0.001638,0.2561,Fs*(0.2235-0.9288));
S3 = linspace(0.2561,0.1059,Fs*(0.267-0.2235));
S4 = linspace(0.1059,1.034,Fs*(0.4644-0.267));
S5 = linspace(1.034,0.1326,Fs*(0.6821-0.4644));
S6 = linspace(0.1326,0.9345,Fs*(0.8591-0.6821));
S7 = linspace(0.9345,0.09421,Fs*(1.12-0.8591));
S8 = linspace(0.09421,0.8416,Fs*(1.393-1.12));
S9 = linspace(0.8416,0.0932,Fs*(1.588-1.393));
S10 = linspace(0.0932,1.336,Fs*(1.846-1.588));
S11 = linspace(1.336,0.08272,Fs*(2.058-1.846));
S12 = linspace(0.08272,1.194,Fs*(2.264-2.058));
S13 = linspace(1.194,0.16,Fs*(2.482-2.264));
S14 = linspace(0.16,1.755,Fs*(2.682-2.482));
S15 = linspace(1.755,0.06669,Fs*(2.897-2.682));
S16 = linspace(0.06669,1.734,Fs*(3.085-2.897));
S17 = linspace(1.734,0.2003,Fs*(3.294-3.085));
S18 = linspace(0.2003,1.373,Fs*(3.518-3.294));
S19 = linspace(1.373,0.3731,Fs*(3.692-3.518));
S20 = linspace(0.3731,2.308,Fs*(3.921-3.692));
S21 = linspace(2.308,0.1858,Fs*(4.037-3.921));
S22 = linspace(0.1858,2.798,Fs*(4.165-4.037));
S23 = linspace(2.798,0.1333,Fs*(4.354-4.165));
S24 = linspace(0.1333,1.799,Fs*(4.522-4.354));
S25 = linspace(1.799,0.1057,Fs*(4.751-4.522));
S26 = linspace(0.1057,1.638,Fs*(4.952-4.751));
S27 = linspace(1.638,0.174,Fs*(5.103-4.952));
S28 = linspace(0.174,2.834,Fs*(5.309-5.103));
S29 = linspace(2.834,0.1804,Fs*(5.483-5.309));
S30 = linspace(0.1804,2.739,Fs*(5.645-5.483));
S31 = linspace(2.739,0.3061,Fs*(5.872-5.645));
S32 = linspace(0.3061,1.803,Fs*(6.063-5.872));
S33 = linspace(1.803,0.07176,Fs*(6.249-6.063));
S34 = linspace(0.07176,1.557,Fs*(6.423-6.249));
S35 = linspace(1.557,0.2936,Fs*(6.615-6.423));
S36 = linspace(0.2936,2.246,Fs*(6.789-6.615));
S37 = linspace(2.246,0.3206,Fs*(6.963-6.789));
S38 = linspace(0.3206,2.966,Fs*(7.094-6.963));
S39 = linspace(2.966,0.026,Fs*(7.245-7.094));
S40 = linspace(0.026,0.003136,Fs*(7.457-7.245));

g = [S1 S2 S3 S4 S5 S6 S7 S8 S9 S10 S11 S12 S13 S14 S15 S16 S17 S18 S19 S20 S21 S22 S23 S24 S25 S26 S27 S28 S29 S30 S31 S32 S33 S34 S35 S36 S37 S38 S39 S40];
A = length(g);

if T < A
    g = g(1:T);
elseif T > A
        diff = T-A;
        for i = 1:diff
            g = [g, 0];
        end
end

% 8 - 2.0997e+03 Hz
T1 = linspace(0,0.02105,Fs*(0.1248));
T2 = linspace(0.02105,0.3916,Fs*(0.4992-0.1248));
T3 = linspace(0.3916,0.04588,Fs*(1.135-0.4992));
T4 = linspace(0.04588,0.308,Fs*(1.379-1.135));
T5 = linspace(0.308,0.1464,Fs*(1.512-1.379));
T6 = linspace(0.1464,0.4841,Fs*(1.8-1.512));
T7 = linspace(0.4841,0.2108,Fs*(2.014-1.8));
T8 = linspace(0.2108,0.478,Fs*(2.168-2.014));
T9 = linspace(0.478,0.2054,Fs*(2.397-2.168));
T10 = linspace(0.2054,0.5236,Fs*(2.56-2.397));
T11 = linspace(0.5236,0.253,Fs*(2.792-2.56));
T12 = linspace(0.253,0.591,Fs*(2.905-2.792));
T13 = linspace(0.591,0.2998,Fs*(3.32-2.905));
T14 = linspace(0.2998,0.669,Fs*(3.602-3.32));
T15 = linspace(0.669,0.147,Fs*(3.77-3.602));
T16 = linspace(0.147,0.8996,Fs*(3.959-3.77));
T17 = linspace(0.8996,0.19,Fs*(4.046-3.959));
T18 = linspace(0.19,0.9073,Fs*(4.168-4.046));
T19 = linspace(0.9073,0.1902,Fs*(4.336-4.168));
T20 = linspace(0.1902,0.7021,Fs*(4.476-4.336));
T21 = linspace(0.7021,0.1211,Fs*(4.702-4.476));
T22 = linspace(0.1211,0.6544,Fs*(4.905-4.702));
T23 = linspace(0.6544,0.2409,Fs*(5.021-4.905));
T24 = linspace(0.2409,1.274,Fs*(5.529-5.021));
T25 = linspace(1.274,0.1698,Fs*(6.298-5.529));
T26 = linspace(0.1698,0.6788,Fs*(6.484-6.298));
T27 = linspace(0.6788,0.1796,Fs*(6.696-6.484));
T28 = linspace(0.1796,0.9595,Fs*(6.85-6.696));
T29 = linspace(0.9595,0.2773,Fs*(6.983-6.85));
T30 = linspace(0.2773,0.9938,Fs*(7.097-6.983));
T31 = linspace(0.9938,0.01796,Fs*(7.253-7.097));
T32 = linspace(0.01796,-0.007682,Fs*(7.457-7.253));

h = [T1 T2 T3 T4 T5 T6 T7 T8 T9 T10 T11 T12 T13 T14 T15 T16 T17 T18 T19 T20 T21 T22 T23 T24 T25 T26 T27 T28 T29 T30 T31 T32];
A = length(h);

if T < A
    h = h(1:T);
elseif T > A
        diff = T-A;
        for i = 1:diff
            h = [h, 0];
        end
end

% 9 - 2.3615e+03 Hz
C1 = linspace(0,-0.001662,Fs*(0.01451));
C2 = linspace(-0.001662,0.3565,Fs*(0.4151-0.01451));
C3 = linspace(0.3565,0.1094,Fs*(0.5457-0.4151));
C4 = linspace(0.1094,0.36,Fs*(0.7576-0.5457));
C5 = linspace(0.36,0.07408,Fs*(0.8998-0.7576));
C6 = linspace(0.07408,0.3393,Fs*(1.109-0.8998));
C7 = linspace(0.3393,0.05869,Fs*(1.245-1.109));
C8 = linspace(0.05869,0.383,Fs*(1.469-1.245));
C9 = linspace(0.383,0.06691,Fs*(1.599-1.469));
C10 = linspace(0.06691,0.6067,Fs*(1.837-1.599));
C11 = linspace(0.6067,0.09617,Fs*(1.971-1.837));
C12 = linspace(0.09617,0.358,Fs*(2.157-1.971));
C13 = linspace(0.358,0.1064,Fs*(2.284-2.157));
C14 = linspace(0.1064,0.6224,Fs*(2.514-2.284));
C15 = linspace(0.6224,0.1736,Fs*(2.647-2.514));
C16 = linspace(0.1736,0.8259,Fs*(2.833-2.647));
C17 = linspace(0.8259,0.05101,Fs*(2.958-2.833));
C18 = linspace(0.05101,0.5787,Fs*(3.129-2.958));
C19 = linspace(0.5787,0.1432,Fs*(3.28-3.129));
C20 = linspace(0.1432,0.5019,Fs*(3.463-3.28));
C21 = linspace(0.5019,0.1518,Fs*(3.648-3.463));
C22 = linspace(0.1518,0.7632,Fs*(3.788-3.648));
C23 = linspace(0.7632,0.1064,Fs*(3.889-3.788));
C24 = linspace(0.1064,1.315,Fs*(3.997-3.889));
C25 = linspace(1.315,0.08289,Fs*(4.122-3.997));
C26 = linspace(0.08289,0.9887,Fs*(4.206-4.122));
C27 = linspace(0.9887,0.03493,Fs*(4.383-4.206));
C28 = linspace(0.03493,0.7463,Fs*(4.513-4.383));
C29 = linspace(0.7463,0.02582,Fs*(4.693-4.513));
C30 = linspace(0.02582,0.6349,Fs*(4.804-4.693));
C31 = linspace(0.6349,0.1082,Fs*(4.94-4.804));
C32 = linspace(0.1082,0.651,Fs*(5.213-4.94));
C33 = linspace(0.651,0.1333,Fs*(5.274-5.213));
C34 = linspace(0.1333,1.281,Fs*(5.419-5.274));
C35 = linspace(1.281,0.2207,Fs*(5.555-5.419));
C36 = linspace(0.2207,1.044,Fs*(5.648-5.555));
C37 = linspace(1.044,0.1772,Fs*(5.872-5.648));
C38 = linspace(0.1772,0.7121,Fs*(5.97-5.872));
C39 = linspace(0.7121,0.1361,Fs*(6.145-5.97));
C40 = linspace(0.1361,0.6831,Fs*(6.275-6.145));
C41 = linspace(0.6831,0.1227,Fs*(6.444-6.275));
C42 = linspace(0.1227,0.7502,Fs*(6.594-6.444));
C43 = linspace(0.7502,0.0465,Fs*(6.745-6.594));
C44 = linspace(0.0465,1.084,Fs*(6.83-6.745));
C45 = linspace(1.084,0.07213,Fs*(7.004-6.83));
C46 = linspace(0.07213,1.262,Fs*(7.05-7.004));
C47 = linspace(1.262,0.09192,Fs*(7.201-7.05));
C48 = linspace(0.09192,0.1205,Fs*(7.221-7.201));
C49 = linspace(0.1205,-0.002123,Fs*(7.457-7.221));

i = [C1 C2 C3 C4 C5 C6 C7 C8 C9 C10 C11 C12 C13 C14 C15 C16 C17 C18 C19 C20 C21 C22 C23 C24 C25 C26 C27 C28 C29 C30 C31 C32 C33 C34 C35 C36 C37 C38 C39 C40 C41 C42 C43 C44 C45 C46 C47 C48 C49];
A = length(i);

if T < A
    i = i(1:T);
elseif T > A
        diff = T-A;
        for u = 1:diff
            i = [i, 0];
        end
end


% 10 - 2.6251e+03 Hz
G1 = linspace(0,0.007928,Fs*(0.1567));
G2 = linspace(0.007928,0.2045,Fs*(0.2815-0.1567));
G3 = linspace(0.2045,0.08611,Fs*(0.3802-0.2815));
G4 = linspace(0.08611,0.2429,Fs*(0.5602-0.3802));
G5 = linspace(0.2429,0.05454,Fs*(0.7024-0.5602));
G6 = linspace(0.05454,0.2826,Fs*(0.7808-0.7024));
G7 = linspace(0.2826,0.04493,Fs*(0.9752-0.7808));
G8 = linspace(0.04493,0.1718,Fs*(1.155-0.9752));
G9 = linspace(0.1718,0.07839,Fs*(1.257-1.155));
G10 = linspace(0.07839,0.2457,Fs*(1.44-1.257));
G11 = linspace(0.2457,0.1013,Fs*(1.588-1.44));
G12 = linspace(0.1013,0.3159,Fs*(1.736-1.588));
G13 = linspace(0.3159,0.1337,Fs*(1.927-1.736));
G14 = linspace(0.1337,0.1978,Fs*(1.959-1.927));
G15 = linspace(0.1978,0.09725,Fs*(2.395-1.959));
G16 = linspace(0.09725,0.3006,Fs*(2.508-2.395));
G17 = linspace(0.3006,0.1635,Fs*(2.644-2.508));
G18 = linspace(0.1635,0.4337,Fs*(2.955-2.644));
G19 = linspace(0.4337,0.1121,Fs*(3.082-2.955));
G20 = linspace(0.1121,0.4388,Fs*(3.553-3.082));
G21 = linspace(0.4388,0.1247,Fs*(3.617-3.553));
G22 = linspace(0.1247,0.6957,Fs*(3.994-3.617));
G23 = linspace(0.6957,0.03447,Fs*(4.702-3.994));
G24 = linspace(0.03447,0.3251,Fs*(4.827-4.702));
G25 = linspace(0.3251,0.1071,Fs*(4.986-4.827));
G26 = linspace(0.1071,0.6632,Fs*(5.346-4.986));
G27 = linspace(0.6632,0.2957,Fs*(5.477-5.346));
G28 = linspace(0.2957,0.7933,Fs*(5.64-5.477));
G29 = linspace(0.7933,0.1992,Fs*(5.764-5.64));
G30 = linspace(0.1992,0.4731,Fs*(5.895-5.764));
G31 = linspace(0.4731,0.05136,Fs*(6.499-5.895));
G32 = linspace(0.05136,0.8115,Fs*(7.062-6.499));
G33 = linspace(0.8115,0.01732,Fs*(7.242-7.062));
G34 = linspace(0.01732,0.003228,Fs*(7.457-7.242));


j = [G1 G2 G3 G4 G5 G6 G7 G8 G9 G10 G11 G12 G13 G14 G15 G16 G17 G18 G19 G20 G21 G22 G23 G24 G25 G26 G27 G28 G29 G30 G31 G32 G33 G34];
A = length(j);

if T < A
    j = j(1:T);
elseif T > A
        diff = T-A;
        for u = 1:diff
            j = [j, 0];
        end
end

% 11 - 3.4184e+03 Hz
E1 = linspace(0,0.07607,Fs*(0.3831));
E2 = linspace(0.07607,0.03191,Fs*(0.4818-0.3831));
E3 = linspace(0.03191,0.08284,Fs*(0.6008-0.4818));
E4 = linspace(0.08284,0.05773,Fs*(0.923-0.6008));
E5 = linspace(0.05773,0.2189,Fs*(1.402-0.923));
E6 = linspace(0.2189,0.0962,Fs*(1.469-1.402));
E7 = linspace(0.0962,0.271,Fs*(1.649-1.469));
E8 = linspace(0.271,0.1651,Fs*(1.747-1.649));
E9 = linspace(0.1651,0.347,Fs*(1.846-1.747));
E10 = linspace(0.347,0.1363,Fs*(2.104-1.846));
E11 = linspace(0.1363,0.1864,Fs*(2.206-2.104));
E12 = linspace(0.1864,0.06287,Fs*(2.426-2.206));
E13 = linspace(0.06287,0.3431,Fs*(2.673-2.426));
E14 = linspace(0.3431,0.1562,Fs*(2.81-2.673));
E15 = linspace(0.1562,0.3378,Fs*(2.961-2.81));
E16 = linspace(0.3378,0.06425,Fs*(3.123-2.961));
E17 = linspace(0.06425,0.2602,Fs*(3.608-3.123));
E18 = linspace(0.2602,0.07106,Fs*(3.738-3.608));
E19 = linspace(0.07106,0.4767,Fs*(4.046-3.738));
E20 = linspace(0.4767,0.04115,Fs*(4.452-4.046));
E21 = linspace(0.04115,0.2573,Fs*(4.563-4.452));
E22 = linspace(0.2573,0.04737,Fs*(4.847-4.563));
E23 = linspace(0.04737,0.611,Fs*(5.535-4.847));
E24 = linspace(0.611,0.07362,Fs*(5.872-5.535));
E25 = linspace(0.07362,0.2047,Fs*(6.185-5.872));
E26 = linspace(0.2047,0.02051,Fs*(6.534-6.185));
E27 = linspace(0.02051,0.5201,Fs*(6.949-6.534));
E28 = linspace(0.5201,0.007195,Fs*(7.253-6.949));
E29 = linspace(0.007195,-0.005153,Fs*(7.457-7.253));


k = [E1 E2 E3 E4 E5 E6 E7 E8 E9 E10 E11 E12 E13 E14 E15 E16 E17 E18 E19 E20 E21 E22 E23 E24 E25 E26 E27 E28 E29];
A = length(k);

if T < A
    k = k(1:T);
elseif T > A
        diff = T-A;
        for u = 1:diff
            k = [k, 0];
        end
end

% 12 - 4.4700e+03 Hz
V1 = linspace(0,0.03235,Fs*0.2235);
V2 = linspace(0.03235,-0.0399,Fs*(0.299-0.2235));
V3 = linspace(-0.0399,0.06633,Fs*(0.299-0.2235));
V4 = linspace(0.06633,-0.0901,Fs*(0.3831-0.299));
V5 = linspace(-0.0901,0.08634,Fs*(0.476-0.3831));
V6 = linspace(0.08634,-0.06432,Fs*(0.5515-0.476));
V7 = linspace(-0.06432,0.05874,Fs*(0.6705-0.5515));
V8 = linspace(0.05874,-0.06225,Fs*(0.7372-0.6705));
V9 = linspace(-0.06225,0.06882,Fs*(0.8678-0.7372));
V10 = linspace(0.06882,-0.09065,Fs*(0.9462-0.8678));
V11 = linspace(-0.09065,0.1196,Fs*(1.016-0.9462));
V12 = linspace(0.1196,-0.07541,Fs*(1.059-1.016));
V13 = linspace(-0.07541,0.1156,Fs*(1.152-1.059));
V14 = linspace(0.1156,-0.1183,Fs*(1.245-1.152));
V15 = linspace(-0.1183,0.1734,Fs*(1.463-1.245));
V16 = linspace(0.1734,-0.2184,Fs*(1.887-1.463));
V17 = linspace(-0.2184,0.2203,Fs*(2.212-1.887));
V18 = linspace(0.2203,-0.05417,Fs*(2.534-2.212));
V19 = linspace(-0.05417,0.2978,Fs*(2.63-2.534));
V20 = linspace(0.2978,-0.1123,Fs*(2.723-2.63));
V21 = linspace(-0.1123,0.2109,Fs*(2.937-2.723));
V22 = linspace(0.2109,-0.1453,Fs*(3.152-2.937));
V23 = linspace(-0.1453,0.1877,Fs*(3.326-3.152));
V24 = linspace(0.1877,-0.1743,Fs*(3.509-3.326));
V25 = linspace(-0.1743,0.4403,Fs*(3.712-3.509));
V26 = linspace(0.4403,-0.371,Fs*(3.886-3.712));
V27 = linspace(-0.371,0.4759,Fs*(3.968-3.886));
V28 = linspace(0.4759,-0.5952,Fs*(4.017-3.968));
V29 = linspace(-0.5952,0.3601,Fs*(4.101-4.017));
V30 = linspace(0.3601,-0.3288,Fs*(4.156-4.101));
V31 = linspace(-0.3288,0.2761,Fs*(4.299-4.156));
V32 = linspace(0.2761,-0.2704,Fs*(4.563-4.299));
V33 = linspace(-0.2704,0.2809,Fs*(5.158-4.563));
V34 = linspace(0.2809,-0.5077,Fs*(5.224-5.158));
V35 = linspace(-0.5077,0.4187,Fs*(5.329-5.224));
V36 = linspace(0.4187,-0.5325,Fs*(5.396-5.329));
V37 = linspace(-0.5325,0.5973,Fs*(5.462-5.396));
V38 = linspace(0.5973,-0.464,Fs*(5.506-5.462));
V39 = linspace(-0.464,0.2903,Fs*(5.59-5.506));
V40 = linspace(0.2903,-0.1817,Fs*(5.677-5.59));
V41 = linspace(-0.1817,0.009441,Fs*(5.782-5.677));
V42 = linspace(0.009441,-0.3275,Fs*(5.871-5.782));
V43 = linspace(-0.3275,0.2784,Fs*(5.953-5.871));
V44 = linspace(0.2784,0.02884,Fs*(6.127-5.953));
V45 = linspace(0.02884,0.1772,Fs*(6.2-6.127));
V46 = linspace(0.1772,-0.08465,Fs*(6.284-6.2));
V47 = linspace(-0.08465,0.129,Fs*(6.426-6.284));
V48 = linspace(0.129,-0.03907,Fs*(6.473-6.426));
V49 = linspace(-0.03907,0.2822,Fs*(6.536-6.473));
V50 = linspace(0.2822,-0.3958,Fs*(6.621-6.536));
V51 = linspace(-0.3958,0.2158,Fs*(6.751-6.621));
V52 = linspace(0.2158,-0.446,Fs*(6.803-6.751));
V53 = linspace(-0.446,0.2886,Fs*(6.896-6.803));
V54 = linspace(0.2886,-0.5034,Fs*(6.96-6.896));
V55 = linspace(-0.5034,0.4087,Fs*(6.995-6.96));
V56 = linspace(0.4087,-0.522,Fs*(7.05-6.995));
V57 = linspace(-0.522,0.2112,Fs*(7.117-7.05));
V58 = linspace(0.2112,-0.01045,Fs*(7.16-7.117));
V59 = linspace(-0.01045,-0.001296,Fs*(7.239-7.16));


m = [V1 V2 V3 V4 V5 V6 V7 V8 V9 V10 V11 V12 V13 V14 V15 V16 V17 V18 V19 V20 V21 V22 V23 V24 V25 V26 V27 V28 V29 V30 V31 V32 V33 V34 V35 V36 V37 V38 V39 V40 V41 V42 V43 V44 V45 V46 V47 V48 V49 V50 V51 V52 V53 V54 V55 V56 V57 V58 V59];
A = length(m);

if T < A
    m = m(1:T);
elseif T > A
        diff = T-A;
        for u = 1:diff
            m = [m, 0];
        end
end

vec = zeros(length(f1),T);