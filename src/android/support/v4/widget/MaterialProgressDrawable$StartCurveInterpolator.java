package android.support.v4.widget;

import android.view.animation.AccelerateDecelerateInterpolator;

final class MaterialProgressDrawable$StartCurveInterpolator
  extends AccelerateDecelerateInterpolator
{
  public final float getInterpolation(float paramFloat)
  {
    return super.getInterpolation(Math.min(1.0F, 2.0F * paramFloat));
  }
}

/* Location:
 * Qualified Name:     android.support.v4.widget.MaterialProgressDrawable.StartCurveInterpolator
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */