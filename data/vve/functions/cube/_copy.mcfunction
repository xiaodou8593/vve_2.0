#vve:cube/_copy
data modify storage math:io rec prepend value {temp:{pos:[0.0d,0.0d,0.0d],xyzw:[0.0f,0.0f,0.0f,0.0f],mass_center:[0.0d,0.0d,0.0d]}}
function vve:set/copy_cube
data modify storage math:io result set from storage math:io rec[0].temp
data remove storage math:io rec[0]