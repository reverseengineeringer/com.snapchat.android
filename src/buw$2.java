import android.view.animation.Animation;
import android.view.animation.Transformation;

final class buw$2
  extends Animation
{
  buw$2(buw parambuw, buw.c paramc) {}
  
  public final void applyTransformation(float paramFloat, Transformation paramTransformation)
  {
    float f1 = (float)(Math.floor(a.n / 0.8F) + 1.0D);
    float f2 = a.l;
    float f3 = a.m;
    float f4 = a.l;
    a.a(f2 + (f3 - f4) * paramFloat);
    f2 = a.n;
    f3 = a.n;
    a.c((f1 - f3) * paramFloat + f2);
    a.d(1.0F - paramFloat);
  }
}

/* Location:
 * Qualified Name:     buw.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */