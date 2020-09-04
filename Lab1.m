% Exercise: 1

syms s;

p = s^2 +2*s +1;
q = s+1;
pq = p*q;
p_coffes = double(coeffs(p))
q_coffes = double(coeffs(q))
roots_p = roots(p_coffes)
roots_q = roots(q_coffes)
p1 = polyval(p_coffes,-1)
q1 = polyval(q_coffes,6)



% Exercise: 2

B = [2,5,3,6];
A = [1,6,11,6];
[r,p,k] = residue(B,A)






