function []=SimpleFixedPointIteration_Method(func,Xo,n)

syms x ;

New_Func=diff(func,x,1);

if(subs(New_Func,(x),Xo)<1)
    c=Xo;
    for i=1:n
        q=subs(func,(x),c);
        c=q;
    end
    fprintf("Xr = %4f. \n",c);
else
    disp('No roots.')
end


end