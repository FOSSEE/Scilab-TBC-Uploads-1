//Find second moment of inertia
ybar=28.47  //mm
xbar=39.21  //mm
Ixx=((80*20^3)/36)+(80*(20/2)*(60-(2*20/3)-28.47)^2)+((80*40^3)/12)+(80*40*(28.47-20)^2)-((0.0068598*20^4)+(20^2)*(%pi/2)*(28.47-((4*20)/(3*%pi)))^2)  //mm^4
Iyy=((20*30^3)/36)+((20/2)*30*(39.21-(2*30/3))^2)+((20*50^3)/36)+(20/2)*50*(39.21-(30+50/3))^2+((40*80^3)/12)+(40*80*(39.21-40)^2)-(%pi*40^4)/(2*64)-((%pi)*(40^2)*(40-39.21)^2)/(4*2)  //mm^4
printf("\nIxx=%.2d mm^4\nIyy=%.2d mm^4",Ixx,Iyy)

