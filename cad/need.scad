// NEED — Kambiz Sharif, 2020
// Vancouver Biennale public bronze
// Published envelope: 5180 x 3040 x 2430 mm. Units: mm.
// Interpretive reconstruction from published envelope + orbit video.

envelope_h = 5180;
envelope_w = 3040;
envelope_d = 2430;

sphere_d      = 1900;
sphere_r      = sphere_d / 2;
plinth_xy     = 1400;
plinth_h      = 120;
collar_w      = 520;
collar_h      = 280;
collar_d      = 420;

beam_section  = [140, 90];
beam_A_len    = 3100;
beam_B_len    = 2700;
beam_C_len    = 2300;

beam_A_tilt   = 18;  beam_A_yaw = -28;
beam_B_tilt   = 35;  beam_B_yaw =   8;
beam_C_tilt   = 48;  beam_C_yaw =  42;

module plinth() {
    color("#9a9a94")
    translate([0, 0, plinth_h/2])
        cube([plinth_xy, plinth_xy, plinth_h], center=true);
}

module sphere_body() {
    color("#c9a36a")
    translate([0, 0, plinth_h + sphere_r])
        sphere(r=sphere_r, $fn=96);
}

module collar() {
    color("#b8925a")
    translate([-220, 80, plinth_h + sphere_d * 0.78])
        rotate([18, -12, 25])
            cube([collar_w, collar_d, collar_h], center=true);
}

module beam(len, tilt, yaw) {
    color("#d4b07a")
    translate([-180, 60, plinth_h + sphere_d * 0.82])
        rotate([0, 0, yaw])
            rotate([0, tilt, 0])
                translate([0, 0, len/2])
                    cube([beam_section[0], beam_section[1], len], center=true);
}

module need() {
    plinth();
    sphere_body();
    collar();
    beam(beam_A_len, beam_A_tilt, beam_A_yaw);
    beam(beam_B_len, beam_B_tilt, beam_B_yaw);
    beam(beam_C_len, beam_C_tilt, beam_C_yaw);
}

need();
