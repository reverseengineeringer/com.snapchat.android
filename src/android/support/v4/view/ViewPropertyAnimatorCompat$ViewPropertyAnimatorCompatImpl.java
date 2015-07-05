package android.support.v4.view;

import android.view.View;
import android.view.animation.Interpolator;

abstract interface ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl
{
  public abstract void alpha(ViewPropertyAnimatorCompat paramViewPropertyAnimatorCompat, View paramView, float paramFloat);
  
  public abstract void alphaBy(ViewPropertyAnimatorCompat paramViewPropertyAnimatorCompat, View paramView, float paramFloat);
  
  public abstract void cancel(ViewPropertyAnimatorCompat paramViewPropertyAnimatorCompat, View paramView);
  
  public abstract long getDuration$66604b42(View paramView);
  
  public abstract Interpolator getInterpolator$38b20421(View paramView);
  
  public abstract long getStartDelay$66604b42(View paramView);
  
  public abstract void rotation(ViewPropertyAnimatorCompat paramViewPropertyAnimatorCompat, View paramView, float paramFloat);
  
  public abstract void rotationBy(ViewPropertyAnimatorCompat paramViewPropertyAnimatorCompat, View paramView, float paramFloat);
  
  public abstract void rotationX(ViewPropertyAnimatorCompat paramViewPropertyAnimatorCompat, View paramView, float paramFloat);
  
  public abstract void rotationXBy(ViewPropertyAnimatorCompat paramViewPropertyAnimatorCompat, View paramView, float paramFloat);
  
  public abstract void rotationY(ViewPropertyAnimatorCompat paramViewPropertyAnimatorCompat, View paramView, float paramFloat);
  
  public abstract void rotationYBy(ViewPropertyAnimatorCompat paramViewPropertyAnimatorCompat, View paramView, float paramFloat);
  
  public abstract void scaleX(ViewPropertyAnimatorCompat paramViewPropertyAnimatorCompat, View paramView, float paramFloat);
  
  public abstract void scaleXBy(ViewPropertyAnimatorCompat paramViewPropertyAnimatorCompat, View paramView, float paramFloat);
  
  public abstract void scaleY(ViewPropertyAnimatorCompat paramViewPropertyAnimatorCompat, View paramView, float paramFloat);
  
  public abstract void scaleYBy(ViewPropertyAnimatorCompat paramViewPropertyAnimatorCompat, View paramView, float paramFloat);
  
  public abstract void setDuration$65a8a4c6(View paramView, long paramLong);
  
  public abstract void setInterpolator$4b3df29b(View paramView, Interpolator paramInterpolator);
  
  public abstract void setListener(ViewPropertyAnimatorCompat paramViewPropertyAnimatorCompat, View paramView, ViewPropertyAnimatorListener paramViewPropertyAnimatorListener);
  
  public abstract void setStartDelay$65a8a4c6(View paramView, long paramLong);
  
  public abstract void setUpdateListener$587f161e(View paramView, ViewPropertyAnimatorUpdateListener paramViewPropertyAnimatorUpdateListener);
  
  public abstract void start(ViewPropertyAnimatorCompat paramViewPropertyAnimatorCompat, View paramView);
  
  public abstract void translationX(ViewPropertyAnimatorCompat paramViewPropertyAnimatorCompat, View paramView, float paramFloat);
  
  public abstract void translationXBy(ViewPropertyAnimatorCompat paramViewPropertyAnimatorCompat, View paramView, float paramFloat);
  
  public abstract void translationY(ViewPropertyAnimatorCompat paramViewPropertyAnimatorCompat, View paramView, float paramFloat);
  
  public abstract void translationYBy(ViewPropertyAnimatorCompat paramViewPropertyAnimatorCompat, View paramView, float paramFloat);
  
  public abstract void withEndAction(ViewPropertyAnimatorCompat paramViewPropertyAnimatorCompat, View paramView, Runnable paramRunnable);
  
  public abstract void withLayer(ViewPropertyAnimatorCompat paramViewPropertyAnimatorCompat, View paramView);
  
  public abstract void withStartAction(ViewPropertyAnimatorCompat paramViewPropertyAnimatorCompat, View paramView, Runnable paramRunnable);
  
  public abstract void x(ViewPropertyAnimatorCompat paramViewPropertyAnimatorCompat, View paramView, float paramFloat);
  
  public abstract void xBy(ViewPropertyAnimatorCompat paramViewPropertyAnimatorCompat, View paramView, float paramFloat);
  
  public abstract void y(ViewPropertyAnimatorCompat paramViewPropertyAnimatorCompat, View paramView, float paramFloat);
  
  public abstract void yBy(ViewPropertyAnimatorCompat paramViewPropertyAnimatorCompat, View paramView, float paramFloat);
}

/* Location:
 * Qualified Name:     android.support.v4.view.ViewPropertyAnimatorCompat.ViewPropertyAnimatorCompatImpl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */