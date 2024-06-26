//
// Volume rendering from density file (df3)
//
#version 3.8;
global_settings { 
  ambient_light <1,1,1> 
  assumed_gamma 1
}

camera {
  // perspective 
  // orthographic
  stereo
  distance (clock <0 ? -0:0 )
  parallaxe atan2 (13*clock,300)

  angle 60
  location <0,-200,100>
  look_at <10,-55,0>
  right x * image_width / image_height
}

/* Default colormap */
#declare cm = color_map {
        [0.00 rgb <0,0,0>]
        [0.01 rgb <0 0 1>]
        [0.30 rgb <0,1,0>]
        [0.50 rgb <1,0,0>]
        [1.00 rgb <1,0,0>] }

/* Alternate colormap
#declare cm = color_map {
        [0.00 rgb <0,0,0>]
        [0.01 rgb <0 0.1 0>]
        [0.20 rgb <0,0.7,0.2>]
        [0.30 rgb <0,1,0>]
        [0.40 rgb <0.7,0.5,0>]
        [0.50 rgb <1,0,1,0>]
        [1.00 rgb <1,1,0>] }
*/

/* Standard colormaps
 #include "scenes/samples/common/colormaps.inc"
 #declare cm = make_colormap (ext_kindlmann,    0.8, 0);
 #declare cm = make_colormap (kindlmann,        0.8, 0);
 #declare cm = make_colormap (hot,              0.8, 0);
 #declare cm = make_colormap (jet,              0.8, 0);
*/

#declare theinterior = interior {
  media {
    intervals 8
    ratio 0.5
    samples 2,2
    method 2
    emission <1,1,1> / 20
    absorption <1,1,1> / 1000
    scattering { 0, <1,1,1> * -.3}
    confidence 0.999
    variance 1/1000
    density {
      density_file df3 "data/volume/mri.df3" 
      interpolate 1
      color_map { cm }
    }
  }
}

background { color <0, 0, 0> }

difference {
  box {
    <0,0,0>, <1,1,1>
    pigment { rgbf 1 }
    interior { theinterior }
    hollow
    translate <-0.5,-0.5,-0.5>
    scale <200,160,160>
  }

  box {
    <0,0,0>, <1,1,1>
    hollow
    pigment { rgbf 0.5 }

    translate <-0.5,-0.38,-0.5>
    scale <400,160,260>
    rotate <0, 0, 0>
  }
}
