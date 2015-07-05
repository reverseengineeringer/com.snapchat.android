import android.content.Context;
import android.content.res.Resources;
import android.util.DisplayMetrics;
import android.util.FloatMath;
import android.view.ViewConfiguration;
import android.view.animation.AnimationUtils;
import android.view.animation.Interpolator;

public final class bwt
{
  private static float B;
  private static float C = 1.0F / a(1.0F);
  private static float u = (float)(Math.log(0.75D) / Math.log(0.9D));
  private static float v = 800.0F;
  private static float w = 0.4F;
  private static float x = 1.0F - w;
  private static final float[] y = new float[101];
  private final float A;
  public int a;
  public int b;
  public int c;
  public boolean d = true;
  private int e;
  private int f;
  private int g;
  private int h;
  private int i;
  private int j;
  private int k;
  private int l;
  private long m;
  private int n;
  private float o;
  private float p;
  private float q;
  private Interpolator r;
  private boolean s;
  private float t;
  private float z;
  
  static
  {
    float f1 = 0.0F;
    int i1 = 0;
    while (i1 <= 100)
    {
      float f4 = i1 / 100.0F;
      float f2 = 1.0F;
      float f3;
      float f5;
      for (;;)
      {
        f3 = (f2 - f1) / 2.0F + f1;
        f5 = 3.0F * f3 * (1.0F - f3);
        float f6 = ((1.0F - f3) * w + x * f3) * f5 + f3 * f3 * f3;
        if (Math.abs(f6 - f4) < 1.0E-5D) {
          break;
        }
        if (f6 > f4) {
          f2 = f3;
        } else {
          f1 = f3;
        }
      }
      y[i1] = (f3 * f3 * f3 + f5);
      i1 += 1;
    }
    y[100] = 1.0F;
    B = 8.0F;
    C = 1.0F;
  }
  
  public bwt(Context paramContext, Interpolator paramInterpolator)
  {
    this(paramContext, paramInterpolator, (byte)0);
  }
  
  public bwt(Context paramContext, Interpolator paramInterpolator, byte paramByte)
  {
    r = paramInterpolator;
    A = (getResourcesgetDisplayMetricsdensity * 160.0F);
    z = (ViewConfiguration.getScrollFriction() * (386.0878F * A));
    s = true;
  }
  
  private static float a(float paramFloat)
  {
    paramFloat = B * paramFloat;
    if (paramFloat < 1.0F) {}
    for (paramFloat -= 1.0F - (float)Math.exp(-paramFloat);; paramFloat = (1.0F - (float)Math.exp(1.0F - paramFloat)) * 0.63212055F + 0.36787945F) {
      return paramFloat * C;
    }
  }
  
  public final void a(int paramInt1, int paramInt2)
  {
    e = 0;
    d = false;
    n = paramInt2;
    m = AnimationUtils.currentAnimationTimeMillis();
    f = 0;
    a = 0;
    g = 0;
    b = (paramInt1 + 0);
    p = 0.0F;
    q = paramInt1;
    o = (1.0F / n);
  }
  
  public final void a(int paramInt1, int paramInt2, int paramInt3)
  {
    int i2 = paramInt2;
    int i1 = paramInt3;
    float f1;
    if (s)
    {
      i2 = paramInt2;
      i1 = paramInt3;
      if (!d)
      {
        f1 = t - z * (int)(AnimationUtils.currentAnimationTimeMillis() - m) / 2000.0F;
        float f4 = g - f;
        f2 = b - a;
        float f3 = FloatMath.sqrt(f4 * f4 + f2 * f2);
        f4 /= f3;
        f2 /= f3;
        f3 = f4 * f1;
        f1 *= f2;
        i2 = paramInt2;
        i1 = paramInt3;
        if (Math.signum(0.0F) == Math.signum(f3))
        {
          i2 = paramInt2;
          i1 = paramInt3;
          if (Math.signum(paramInt3) == Math.signum(f1))
          {
            i2 = (int)(f3 + 0.0F);
            i1 = (int)(f1 + paramInt3);
          }
        }
      }
    }
    e = 1;
    d = false;
    float f2 = FloatMath.sqrt(i2 * i2 + i1 * i1);
    t = f2;
    double d1 = Math.log(w * f2 / v);
    n = ((int)(1000.0D * Math.exp(d1 / (u - 1.0D))));
    m = AnimationUtils.currentAnimationTimeMillis();
    f = 0;
    a = paramInt1;
    if (f2 == 0.0F)
    {
      f1 = 1.0F;
      if (f2 != 0.0F) {
        break label425;
      }
    }
    label425:
    for (f2 = 1.0F;; f2 = i1 / f2)
    {
      paramInt2 = (int)(v * Math.exp(d1 * (u / (u - 1.0D))));
      h = 0;
      i = 0;
      j = 0;
      k = Integer.MAX_VALUE;
      g = (Math.round(f1 * paramInt2) + 0);
      g = Math.min(g, i);
      g = Math.max(g, h);
      b = (Math.round(f2 * paramInt2) + paramInt1);
      b = Math.min(b, k);
      b = Math.max(b, j);
      return;
      f1 = i2 / f2;
      break;
    }
  }
  
  public final boolean a()
  {
    if (d) {
      return false;
    }
    int i1 = (int)(AnimationUtils.currentAnimationTimeMillis() - m);
    if (i1 < n) {
      switch (e)
      {
      }
    }
    for (;;)
    {
      return true;
      float f1 = i1 * o;
      if (r == null) {}
      for (f1 = a(f1);; f1 = r.getInterpolation(f1))
      {
        l = (f + Math.round(p * f1));
        i1 = a;
        c = (Math.round(f1 * q) + i1);
        break;
      }
      f1 = i1 / n;
      i1 = (int)(100.0F * f1);
      float f2 = i1 / 100.0F;
      float f3 = (i1 + 1) / 100.0F;
      float f4 = y[i1];
      float f5 = y[(i1 + 1)];
      f1 = (f1 - f2) / (f3 - f2) * (f5 - f4) + f4;
      l = (f + Math.round((g - f) * f1));
      l = Math.min(l, i);
      l = Math.max(l, h);
      i1 = a;
      c = (Math.round(f1 * (b - a)) + i1);
      c = Math.min(c, k);
      c = Math.max(c, j);
      if ((l == g) && (c == b))
      {
        d = true;
        continue;
        l = g;
        c = b;
        d = true;
      }
    }
  }
}

/* Location:
 * Qualified Name:     bwt
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */