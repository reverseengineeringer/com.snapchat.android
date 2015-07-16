import android.view.animation.AccelerateDecelerateInterpolator;

final class bvx$d
  extends AccelerateDecelerateInterpolator
{
  public final float getInterpolation(float paramFloat)
  {
    return super.getInterpolation(Math.min(1.0F, 2.0F * paramFloat));
  }
}

/* Location:
 * Qualified Name:     bvx.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */