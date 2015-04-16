module case1(){
    translate([0,0,6.5]){
        cube([43,43,14],true);
    }
}
module case2(){
    translate([0,0,5.8]){
        cube([41,41,11.5],true);
    }
    translate([0,0,7.5]){
        cube([39.96,39.6,13],true);
    }
}
module battery() {
    translate([5,0,2.5]){
        cube([29,36,4.75],true);
    }
}
module vibrator() {
    translate([-15,15,1.4]){
        cylinder(2.7,d1=10,d2=10,true,$fn=100);
    }
}
module buzzer() {
    translate([4,6,-20]){
        //     Y,Z,X
        cylinder(2.7,d1=11.9,d2=11.9,true,$fn=100);
    }
}
module haptic() {
    cube([18,17,2],true);
}
module boostWCharge() {
    cube([37,22,2],true);
}
module microduino() {
    cube([25.4,27.94,3],true);
}
module ble() {
    cube([29,28,.8],true);
}
module axelMagn() {
    cube([24,24,.8],true);
}
module chargePort() {
    translate([20,-9,5.5]) {
        cube([6.9,5,1.9],true);
    }
}
module caseNCharge() {
    difference() {
        color([.1,.1,.1]) case1();
        color([1,1,1]) case2();
    }
}
module case() {
    difference() {
       caseNCharge();
       color([.8,.8,.8]) chargePort();
    }
} 





case();
color([.1,.3,.1]) battery();
vibrator();
rotate([90,0,90]) buzzer();
translate([-8,11,5.75]) color([.2,.2,.8]) haptic();
translate([2,-9,5.75]) color([.2,.2,.8]) boostWCharge();
translate([7,5,8.5]) microduino();
translate([-5,-8,11]) color([.2,.1,.75]) axelMagn();
translate([0,0,12]) color([.2,.1,.75]) ble();