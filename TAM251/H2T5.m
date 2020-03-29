a = 466; % mm
b = 425; % mm
db = 1; % mm
dd = 1; % mm
vpa((normest([a-db,b-dd]) - normest([a,b]))/normest([a,b])*1000)