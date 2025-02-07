/*
original_author: Patricio Gonzalez Vivo
description: create orthographic matrix 
use: <mat4> orthographic(<float> left, <float> right, <float> bottom, <float> top, <float> near, <float> far)
*/

#ifndef FNC_ORTHOGRAPHIC
#define FNC_ORTHOGRAPHIC
mat4 orthographic(float l, float r, float b, float t, float n, float f) {
    return mat4(
        vec4(2.0/(r-l),     0.0,          0.0,         0.0),
        vec4(0.0,           2.0/(t-b),    0.0,         0.0),
        vec4(0.0,           0.0,         -2.0/(f-n),   0.0),
        vec4(-(r+l)/(r-l), -(t+b)/(t-b), -(f+n)/(f-n), 1.0)
    );
}
#endif