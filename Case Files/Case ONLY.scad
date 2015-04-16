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
difference(){
    case1();
    case2();
}