//
// Volume rendering example
//
#version 3.8;
global_settings { assumed_gamma 1 }

camera { perspective
         angle 35
         location <8.50, 4.40, -8.50> * 2.0
         right x * image_width / image_height
         look_at <0.00, -0.20, -0.00>
         rotate<90,0,0>}

light_source{<5.0, 5.0, 3.0> rgb <0.80, 0.80, 0.80>}
#declare vol_interior = interior {
    media {
        intervals 8
        ratio 0.5
        samples  3,3
        method 1
        emission <0.1, 0.1, 0.10>
        absorption <0.10, 0.10, 0.100>
        scattering { 1, <0,0,0> }
        confidence 0.999
        variance 0.001
            density {
                density_file df3 "data/volume/head.df3"
                interpolate 1
                color_map {
                    [0.0000 rgb <0.00,0.00,0.52>]
                    [0.0000 rgb <0.00,0.00,0.53>]
                    [0.0000 rgb <0.00,0.00,0.55>]
                    [0.0001 rgb <0.00,0.00,0.56>]
                    [0.0001 rgb <0.00,0.00,0.58>]
                    [0.0001 rgb <0.00,0.00,0.59>]
                    [0.0001 rgb <0.00,0.00,0.61>]
                    [0.0002 rgb <0.00,0.00,0.63>]
                    [0.0002 rgb <0.00,0.00,0.64>]
                    [0.0002 rgb <0.00,0.00,0.66>]
                    [0.0002 rgb <0.00,0.00,0.67>]
                    [0.0002 rgb <0.00,0.00,0.69>]
                    [0.0003 rgb <0.00,0.00,0.70>]
                    [0.0003 rgb <0.00,0.00,0.72>]
                    [0.0003 rgb <0.00,0.00,0.73>]
                    [0.0003 rgb <0.00,0.00,0.75>]
                    [0.0003 rgb <0.00,0.00,0.77>]
                    [0.0004 rgb <0.00,0.00,0.78>]
                    [0.0004 rgb <0.00,0.00,0.80>]
                    [0.0004 rgb <0.00,0.00,0.81>]
                    [0.0004 rgb <0.00,0.00,0.83>]
                    [0.0005 rgb <0.00,0.00,0.84>]
                    [0.0005 rgb <0.00,0.00,0.86>]
                    [0.0005 rgb <0.00,0.00,0.88>]
                    [0.0005 rgb <0.00,0.00,0.89>]
                    [0.0005 rgb <0.00,0.00,0.91>]
                    [0.0006 rgb <0.00,0.00,0.92>]
                    [0.0006 rgb <0.00,0.00,0.94>]
                    [0.0006 rgb <0.00,0.00,0.95>]
                    [0.0006 rgb <0.00,0.00,0.97>]
                    [0.0006 rgb <0.00,0.00,0.98>]
                    [0.0007 rgb <0.00,0.00,1.00>]
                    [0.0007 rgb <0.00,0.02,1.00>]
                    [0.0007 rgb <0.00,0.03,1.00>]
                    [0.0007 rgb <0.00,0.05,1.00>]
                    [0.0008 rgb <0.00,0.06,1.00>]
                    [0.0008 rgb <0.00,0.08,1.00>]
                    [0.0008 rgb <0.00,0.09,1.00>]
                    [0.0008 rgb <0.00,0.11,1.00>]
                    [0.0008 rgb <0.00,0.13,1.00>]
                    [0.0009 rgb <0.00,0.14,1.00>]
                    [0.0009 rgb <0.00,0.16,1.00>]
                    [0.0009 rgb <0.00,0.17,1.00>]
                    [0.0009 rgb <0.00,0.19,1.00>]
                    [0.0009 rgb <0.00,0.20,1.00>]
                    [0.0010 rgb <0.00,0.22,1.00>]
                    [0.0010 rgb <0.00,0.23,1.00>]
                    [0.0010 rgb <0.00,0.25,1.00>]
                    [0.0010 rgb <0.00,0.27,1.00>]
                    [0.0011 rgb <0.00,0.28,1.00>]
                    [0.0011 rgb <0.00,0.30,1.00>]
                    [0.0011 rgb <0.00,0.31,1.00>]
                    [0.0011 rgb <0.00,0.33,1.00>]
                    [0.0011 rgb <0.00,0.34,1.00>]
                    [0.0012 rgb <0.00,0.36,1.00>]
                    [0.0012 rgb <0.00,0.38,1.00>]
                    [0.0012 rgb <0.00,0.39,1.00>]
                    [0.0012 rgb <0.00,0.41,1.00>]
                    [0.0013 rgb <0.00,0.42,1.00>]
                    [0.0013 rgb <0.00,0.44,1.00>]
                    [0.0013 rgb <0.00,0.45,1.00>]
                    [0.0013 rgb <0.00,0.47,1.00>]
                    [0.0013 rgb <0.00,0.48,1.00>]
                    [0.0014 rgb <0.00,0.50,1.00>]
                    [0.0014 rgb <0.00,0.52,1.00>]
                    [0.0014 rgb <0.00,0.53,1.00>]
                    [0.0014 rgb <0.00,0.55,1.00>]
                    [0.0014 rgb <0.00,0.56,1.00>]
                    [0.0015 rgb <0.00,0.58,1.00>]
                    [0.0015 rgb <0.00,0.59,1.00>]
                    [0.0015 rgb <0.00,0.61,1.00>]
                    [0.0015 rgb <0.00,0.63,1.00>]
                    [0.0016 rgb <0.00,0.64,1.00>]
                    [0.0016 rgb <0.00,0.66,1.00>]
                    [0.0016 rgb <0.00,0.67,1.00>]
                    [0.0016 rgb <0.00,0.69,1.00>]
                    [0.0016 rgb <0.00,0.70,1.00>]
                    [0.0017 rgb <0.00,0.72,1.00>]
                    [0.0017 rgb <0.00,0.73,1.00>]
                    [0.0017 rgb <0.00,0.75,1.00>]
                    [0.0017 rgb <0.00,0.77,1.00>]
                    [0.0017 rgb <0.00,0.78,1.00>]
                    [0.0018 rgb <0.00,0.80,1.00>]
                    [0.0018 rgb <0.00,0.81,1.00>]
                    [0.0018 rgb <0.00,0.83,1.00>]
                    [0.0018 rgb <0.00,0.84,1.00>]
                    [0.0019 rgb <0.00,0.86,1.00>]
                    [0.0019 rgb <0.00,0.88,1.00>]
                    [0.0019 rgb <0.00,0.89,1.00>]
                    [0.0019 rgb <0.00,0.91,1.00>]
                    [0.0019 rgb <0.00,0.92,1.00>]
                    [0.0020 rgb <0.00,0.94,1.00>]
                    [0.0020 rgb <0.00,0.95,1.00>]
                    [0.0020 rgb <0.00,0.97,1.00>]
                    [0.0020 rgb <0.00,0.98,1.00>]
                    [0.0020 rgb <0.00,1.00,1.00>]
                    [0.0021 rgb <0.02,1.00,0.98>]
                    [0.0021 rgb <0.03,1.00,0.97>]
                    [0.0021 rgb <0.05,1.00,0.95>]
                    [0.0021 rgb <0.06,1.00,0.94>]
                    [0.0022 rgb <0.08,1.00,0.92>]
                    [0.0022 rgb <0.09,1.00,0.91>]
                    [0.0022 rgb <0.11,1.00,0.89>]
                    [0.0022 rgb <0.13,1.00,0.88>]
                    [0.0022 rgb <0.14,1.00,0.86>]
                    [0.0023 rgb <0.16,1.00,0.84>]
                    [0.0023 rgb <0.17,1.00,0.83>]
                    [0.0023 rgb <0.19,1.00,0.81>]
                    [0.0023 rgb <0.20,1.00,0.80>]
                    [0.0024 rgb <0.22,1.00,0.78>]
                    [0.0024 rgb <0.23,1.00,0.77>]
                    [0.0024 rgb <0.25,1.00,0.75>]
                    [0.0024 rgb <0.27,1.00,0.73>]
                    [0.0024 rgb <0.28,1.00,0.72>]
                    [0.0025 rgb <0.30,1.00,0.70>]
                    [0.0025 rgb <0.31,1.00,0.69>]
                    [0.0025 rgb <0.33,1.00,0.67>]
                    [0.0025 rgb <0.34,1.00,0.66>]
                    [0.0025 rgb <0.36,1.00,0.64>]
                    [0.0026 rgb <0.38,1.00,0.63>]
                    [0.0026 rgb <0.39,1.00,0.61>]
                    [0.0026 rgb <0.41,1.00,0.59>]
                    [0.0026 rgb <0.42,1.00,0.58>]
                    [0.0027 rgb <0.44,1.00,0.56>]
                    [0.0027 rgb <0.45,1.00,0.55>]
                    [0.0027 rgb <0.47,1.00,0.53>]
                    [0.0027 rgb <0.48,1.00,0.52>]
                    [0.0027 rgb <0.50,1.00,0.50>]
                    [0.0028 rgb <0.52,1.00,0.48>]
                    [0.0028 rgb <0.53,1.00,0.47>]
                    [0.0028 rgb <0.55,1.00,0.45>]
                    [0.0028 rgb <0.56,1.00,0.44>]
                    [0.0028 rgb <0.58,1.00,0.42>]
                    [0.0029 rgb <0.59,1.00,0.41>]
                    [0.0029 rgb <0.61,1.00,0.39>]
                    [0.0029 rgb <0.63,1.00,0.38>]
                    [0.0029 rgb <0.64,1.00,0.36>]
                    [0.0030 rgb <0.66,1.00,0.34>]
                    [0.0030 rgb <0.67,1.00,0.33>]
                    [0.0030 rgb <0.69,1.00,0.31>]
                    [0.0030 rgb <0.70,1.00,0.30>]
                    [0.0030 rgb <0.72,1.00,0.28>]
                    [0.0031 rgb <0.73,1.00,0.27>]
                    [0.0031 rgb <0.75,1.00,0.25>]
                    [0.0031 rgb <0.77,1.00,0.23>]
                    [0.0031 rgb <0.78,1.00,0.22>]
                    [0.0031 rgb <0.80,1.00,0.20>]
                    [0.0032 rgb <0.81,1.00,0.19>]
                    [0.0032 rgb <0.83,1.00,0.17>]
                    [0.0032 rgb <0.84,1.00,0.16>]
                    [0.0032 rgb <0.86,1.00,0.14>]
                    [0.0033 rgb <0.88,1.00,0.13>]
                    [0.0033 rgb <0.89,1.00,0.11>]
                    [0.0033 rgb <0.91,1.00,0.09>]
                    [0.0033 rgb <0.92,1.00,0.08>]
                    [0.0033 rgb <0.94,1.00,0.06>]
                    [0.0034 rgb <0.95,1.00,0.05>]
                    [0.0034 rgb <0.97,1.00,0.03>]
                    [0.0034 rgb <0.98,1.00,0.02>]
                    [0.0034 rgb <1.00,1.00,0.00>]
                    [0.0035 rgb <1.00,0.98,0.00>]
                    [0.0035 rgb <1.00,0.97,0.00>]
                    [0.0035 rgb <1.00,0.95,0.00>]
                    [0.0035 rgb <1.00,0.94,0.00>]
                    [0.0035 rgb <1.00,0.92,0.00>]
                    [0.0036 rgb <1.00,0.91,0.00>]
                    [0.0036 rgb <1.00,0.89,0.00>]
                    [0.0036 rgb <1.00,0.88,0.00>]
                    [0.0036 rgb <1.00,0.86,0.00>]
                    [0.0036 rgb <1.00,0.84,0.00>]
                    [0.0037 rgb <1.00,0.83,0.00>]
                    [0.0037 rgb <1.00,0.81,0.00>]
                    [0.0037 rgb <1.00,0.80,0.00>]
                    [0.0037 rgb <1.00,0.78,0.00>]
                    [0.0038 rgb <1.00,0.77,0.00>]
                    [0.0038 rgb <1.00,0.75,0.00>]
                    [0.0038 rgb <1.00,0.73,0.00>]
                    [0.0038 rgb <1.00,0.72,0.00>]
                    [0.0038 rgb <1.00,0.70,0.00>]
                    [0.0039 rgb <1.00,0.69,0.00>]
                    [0.0039 rgb <1.00,0.67,0.00>]
                    [0.0039 rgb <1.00,0.66,0.00>]
                    [0.0039 rgb <1.00,0.64,0.00>]
                    [0.0039 rgb <1.00,0.63,0.00>]
                    [0.0040 rgb <1.00,0.61,0.00>]
                    [0.0040 rgb <1.00,0.59,0.00>]
                    [0.0040 rgb <1.00,0.58,0.00>]
                    [0.0040 rgb <1.00,0.56,0.00>]
                    [0.0041 rgb <1.00,0.55,0.00>]
                    [0.0041 rgb <1.00,0.53,0.00>]
                    [0.0041 rgb <1.00,0.52,0.00>]
                    [0.0041 rgb <1.00,0.50,0.00>]
                    [0.0041 rgb <1.00,0.48,0.00>]
                    [0.0042 rgb <1.00,0.47,0.00>]
                    [0.0042 rgb <1.00,0.45,0.00>]
                    [0.0042 rgb <1.00,0.44,0.00>]
                    [0.0042 rgb <1.00,0.42,0.00>]
                    [0.0042 rgb <1.00,0.41,0.00>]
                    [0.0043 rgb <1.00,0.39,0.00>]
                    [0.0043 rgb <1.00,0.38,0.00>]
                    [0.0043 rgb <1.00,0.36,0.00>]
                    [0.0043 rgb <1.00,0.34,0.00>]
                    [0.0044 rgb <1.00,0.33,0.00>]
                    [0.0044 rgb <1.00,0.31,0.00>]
                    [0.0044 rgb <1.00,0.30,0.00>]
                    [0.0044 rgb <1.00,0.28,0.00>]
                    [0.0044 rgb <1.00,0.27,0.00>]
                    [0.0045 rgb <1.00,0.25,0.00>]
                    [0.0045 rgb <1.00,0.23,0.00>]
                    [0.0045 rgb <1.00,0.22,0.00>]
                    [0.0045 rgb <1.00,0.20,0.00>]
                    [0.0046 rgb <1.00,0.19,0.00>]
                    [0.0046 rgb <1.00,0.17,0.00>]
                    [0.0046 rgb <1.00,0.16,0.00>]
                    [0.0046 rgb <1.00,0.14,0.00>]
                    [0.0046 rgb <1.00,0.13,0.00>]
                    [0.0047 rgb <1.00,0.11,0.00>]
                    [0.0047 rgb <1.00,0.09,0.00>]
                    [0.0047 rgb <1.00,0.08,0.00>]
                    [0.0047 rgb <1.00,0.06,0.00>]
                    [0.0047 rgb <1.00,0.05,0.00>]
                    [0.0048 rgb <1.00,0.03,0.00>]
                    [0.0048 rgb <1.00,0.02,0.00>]
                    [0.0048 rgb <1.00,0.00,0.00>]
                    [0.0048 rgb <0.98,0.00,0.00>]
                    [0.0049 rgb <0.97,0.00,0.00>]
                    [0.0049 rgb <0.95,0.00,0.00>]
                    [0.0049 rgb <0.94,0.00,0.00>]
                    [0.0049 rgb <0.92,0.00,0.00>]
                    [0.0049 rgb <0.91,0.00,0.00>]
                    [0.0050 rgb <0.89,0.00,0.00>]
                    [0.0050 rgb <0.88,0.00,0.00>]
                    [0.0050 rgb <0.86,0.00,0.00>]
                    [0.0050 rgb <0.84,0.00,0.00>]
                    [0.0050 rgb <0.83,0.00,0.00>]
                    [0.0051 rgb <0.81,0.00,0.00>]
                    [0.0051 rgb <0.80,0.00,0.00>]
                    [0.0051 rgb <0.78,0.00,0.00>]
                    [0.0051 rgb <0.77,0.00,0.00>]
                    [0.0052 rgb <0.75,0.00,0.00>]
                    [0.0052 rgb <0.73,0.00,0.00>]
                    [0.0052 rgb <0.72,0.00,0.00>]
                    [0.0052 rgb <0.70,0.00,0.00>]
                    [0.0052 rgb <0.69,0.00,0.00>]
                    [0.0053 rgb <0.67,0.00,0.00>]
                    [0.0053 rgb <0.66,0.00,0.00>]
                    [0.0053 rgb <0.64,0.00,0.00>]
                    [0.0053 rgb <0.63,0.00,0.00>]
                    [0.0053 rgb <0.61,0.00,0.00>]
                    [0.0054 rgb <0.59,0.00,0.00>]
                    [0.0054 rgb <0.58,0.00,0.00>]
                    [0.0054 rgb <0.56,0.00,0.00>]
                    [0.0054 rgb <0.55,0.00,0.00>]
                    [0.0055 rgb <0.53,0.00,0.00>]
                    [0.0055 rgb <0.52,0.00,0.00>]
                    [0.0055 rgb <0.50,0.00,0.00>]
}}}}

background { color <0, 0, 0> }

box { <0, 0, 0>, <1, 1, 1>
  pigment { rgbf 1 }
  interior { vol_interior }
  hollow

  scale <4.00, 4.00, 2.00> rotate<0,0,0> translate <0,0,0>
}
