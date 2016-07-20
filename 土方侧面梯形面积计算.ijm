a = parseFloat(getUserInputValue("请输入土方下底面的长度", 100));
b = parseFloat(getUserInputValue("请输入土方下底面的宽度", 100));
x = parseFloat(getUserInputValue("请输入土方上底面的长度", 100));
y = parseFloat(getUserInputValue("请输入土方上底面的宽度", 100));
h = parseFloat(getUserInputValue("请输入土方的高度", 10));
totalArea = eachArea(a,b,x,y,h)+eachArea(b,a,y,x,h);
print("短梯形的高是: "+sqrt((square((b-y)/2)) + square(h)));
print("长梯形的高是: "+sqrt((square((a-x)/2)) + square(h)));
print("每个短梯形的面积是: "+(eachArea(a,b,x,y,h))/2);
print("每个长梯形的面积是: "+(eachArea(b,a,y,x,h))/2);
print("四个侧面梯形的面积总和是: "+totalArea);

function square(x){
	return x*x;
}

function eachArea(a,b,x,y,h){
	return (a+x)*sqrt((square((b-y)/2)) + square(h));
}

function getUserInputValue(dialogueTitle, defaultValue){
 Dialog.create(dialogueTitle);
 Dialog.addNumber(dialogueTitle+": ", defaultValue, 2, 8, "米"); //对话框标题，默认值，小数位数，输入框宽度，输入框右侧单位
 Dialog.show();
 return	Dialog.getNumber(); //将输入的数值赋给变量
}