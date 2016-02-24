mat4.multiply = function (out, a, b) {
    if (SIMD) {
      mat4.multiply = function (out, a, b) {
        // https://www.youtube.com/watch?v=DXPfE2jGqg0
        // http://drrobsjournal.blogspot.com/2012/10/fast-simd-4x4-matrix-multiplication.html

        var _a = SIMD.Float32x4(b[0], b[1], b[2], b[3]);
        var _b = SIMD.Float32x4(b[4], b[5], b[6], b[7]);
        var _c = SIMD.Float32x4(b[8], b[9], b[10], b[11]);
        var _d = SIMD.Float32x4(b[12], b[13], b[14], b[15]);

        var t1 = SIMD.Float32x4.splat(0);
        var t2 = SIMD.Float32x4.splat(0);


        // _mm_set1_ps is equivalent to splat
        // _mm_mul_ps is equivalent to mul
        // _mm_add_ps is equivalent to add
        t1 = SIMD.Float32x4.splat(a[0]);
        t2 = SIMD.Float32x4.mul(_a, t1);
        t1 = SIMD.Float32x4.splat(a[1]);
        t2 = SIMD.Float32x4.add(SIMD.Float32x4.mul(_b, t1), t2);
        t1 = SIMD.Float32x4.splat(a[2]);
        t2 = SIMD.Float32x4.add(SIMD.Float32x4.mul(_c, t1), t2);
        t1 = SIMD.Float32x4.splat(a[3]);
        t2 = SIMD.Float32x4.add(SIMD.Float32x4.mul(_d, t1), t2);

        // _mm_store_ps :(
        out[0] = t2.x_;
        out[1] = t2.y_;
        out[2] = t2.z_;
        out[3] = t2.w_;

        t1 = SIMD.Float32x4.splat(a[4]);
        t2 = SIMD.Float32x4.mul(_a, t1);
        t1 = SIMD.Float32x4.splat(a[5]);
        t2 = SIMD.Float32x4.add(SIMD.Float32x4.mul(_b, t1), t2);
        t1 = SIMD.Float32x4.splat(a[6]);
        t2 = SIMD.Float32x4.add(SIMD.Float32x4.mul(_c, t1), t2);
        t1 = SIMD.Float32x4.splat(a[7]);
        t2 = SIMD.Float32x4.add(SIMD.Float32x4.mul(_d, t1), t2);

        out[4] = t2.x_;
        out[5] = t2.y_;
        out[6] = t2.z_;
        out[7] = t2.w_;

        t1 = SIMD.Float32x4.splat(a[8]);
        t2 = SIMD.Float32x4.mul(_a, t1);
        t1 = SIMD.Float32x4.splat(a[9]);
        t2 = SIMD.Float32x4.add(SIMD.Float32x4.mul(_b, t1), t2);
        t1 = SIMD.Float32x4.splat(a[10]);
        t2 = SIMD.Float32x4.add(SIMD.Float32x4.mul(_c, t1), t2);
        t1 = SIMD.Float32x4.splat(a[11]);
        t2 = SIMD.Float32x4.add(SIMD.Float32x4.mul(_d, t1), t2);

        out[8] = t2.x_;
        out[9] = t2.y_;
        out[10] = t2.z_;
        out[11] = t2.w_;

        t1 = SIMD.Float32x4.splat(a[12]);
        t2 = SIMD.Float32x4.mul(_a, t1);
        t1 = SIMD.Float32x4.splat(a[13]);
        t2 = SIMD.Float32x4.add(SIMD.Float32x4.mul(_b, t1), t2);
        t1 = SIMD.Float32x4.splat(a[14]);
        t2 = SIMD.Float32x4.add(SIMD.Float32x4.mul(_c, t1), t2);
        t1 = SIMD.Float32x4.splat(a[15]);
        t2 = SIMD.Float32x4.add(SIMD.Float32x4.mul(_d, t1), t2);

        out[12] = t2.x_;
        out[13] = t2.y_;
        out[14] = t2.z_;
        out[15] = t2.w_;

        return out;
      };
    } else {
      mat4.multiply = function (out, a, b) {
        var a00 = a[0], a01 = a[1], a02 = a[2], a03 = a[3],
          a10 = a[4], a11 = a[5], a12 = a[6], a13 = a[7],
          a20 = a[8], a21 = a[9], a22 = a[10], a23 = a[11],
          a30 = a[12], a31 = a[13], a32 = a[14], a33 = a[15];

        // Cache only the current line of the second matrix
        var b0  = b[0], b1 = b[1], b2 = b[2], b3 = b[3];
        out[0] = b0*a00 + b1*a10 + b2*a20 + b3*a30;
        out[1] = b0*a01 + b1*a11 + b2*a21 + b3*a31;
        out[2] = b0*a02 + b1*a12 + b2*a22 + b3*a32;
        out[3] = b0*a03 + b1*a13 + b2*a23 + b3*a33;

        b0 = b[4]; b1 = b[5]; b2 = b[6]; b3 = b[7];
        out[4] = b0*a00 + b1*a10 + b2*a20 + b3*a30;
        out[5] = b0*a01 + b1*a11 + b2*a21 + b3*a31;
        out[6] = b0*a02 + b1*a12 + b2*a22 + b3*a32;
        out[7] = b0*a03 + b1*a13 + b2*a23 + b3*a33;

        b0 = b[8]; b1 = b[9]; b2 = b[10]; b3 = b[11];
        out[8] = b0*a00 + b1*a10 + b2*a20 + b3*a30;
        out[9] = b0*a01 + b1*a11 + b2*a21 + b3*a31;
        out[10] = b0*a02 + b1*a12 + b2*a22 + b3*a32;
        out[11] = b0*a03 + b1*a13 + b2*a23 + b3*a33;

        b0 = b[12]; b1 = b[13]; b2 = b[14]; b3 = b[15];
        out[12] = b0*a00 + b1*a10 + b2*a20 + b3*a30;
        out[13] = b0*a01 + b1*a11 + b2*a21 + b3*a31;
        out[14] = b0*a02 + b1*a12 + b2*a22 + b3*a32;
        out[15] = b0*a03 + b1*a13 + b2*a23 + b3*a33;
        return out;

      };
    }
    mat4.multiply(out, a, b);
};
