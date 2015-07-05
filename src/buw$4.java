import android.view.animation.Animation;
import android.view.animation.Interpolator;
import android.view.animation.Transformation;

final class buw$4
  extends Animation
{
  buw$4(buw parambuw, buw.c paramc) {}
  
  public final void applyTransformation(float paramFloat, Transformation paramTransformation)
  {
    float f3 = (float)Math.toRadians(a.h / (6.283185307179586D * a.r));
    float f4 = a.m;
    float f1 = a.l;
    float f2 = a.n;
    float f5 = buw.a().getInterpolation(paramFloat);
    a.b((0.8F - f3) * f5 + f4);
    f3 = buw.b().getInterpolation(paramFloat);
    a.a(f3 * 0.8F + f1);
    a.c(0.25F * paramFloat + f2);
    f1 = buw.c(b) / 5.0F;
    b.a(144.0F * paramFloat + 720.0F * f1);
  }
}

/* Location:
 * Qualified Name:     buw.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */