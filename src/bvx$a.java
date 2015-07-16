import android.view.animation.AccelerateDecelerateInterpolator;

final class bvx$a
  extends AccelerateDecelerateInterpolator
{
  public final float getInterpolation(float paramFloat)
  {
    return super.getInterpolation(Math.max(0.0F, (paramFloat - 0.5F) * 2.0F));
  }
}

/* Location:
 * Qualified Name:     bvx.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */