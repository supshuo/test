function x=secant_method(func, area)
y = inf;
x1 = area(1); x2=area(2);
while (abs(y)>1e-6)
	y1 = feval(func, x1);
	y2 = feval(func, x2);
	mid = (x1*y2-x2*y1)/(y2-y1);
	y = feval(func, mid);
	if y*y1<0
		x2 = mid;
	else
		x1 = mid;
	end
end
end



