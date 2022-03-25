model Adv1

parameter Real N=1040;// максимальное количество людей, которых может заинтересовать товар
parameter Real n0=9; // количество людей, знающих о товаре в начальный момент времени
parameter Real alpha1=0.94;  
parameter Real alpha2=0.000094;  

Real n(start=n0);

equation

//der(n)=(alpha1+alpha2*n)*(N-n);  //случай1
//der(n)=(alpha2+alpha1*n)*(N-n); //случай2
der(n)=(alpha1*sin(time)+alpha1*sin(time)*n)*(N-n); //случай3

end Adv1;
