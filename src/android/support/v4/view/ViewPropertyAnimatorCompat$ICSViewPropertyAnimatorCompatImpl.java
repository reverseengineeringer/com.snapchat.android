package android.support.v4.view;

import android.view.View;
import android.view.animation.Interpolator;
import java.util.WeakHashMap;

class ViewPropertyAnimatorCompat$ICSViewPropertyAnimatorCompatImpl
  extends ViewPropertyAnimatorCompat.BaseViewPropertyAnimatorCompatImpl
{
  WeakHashMap<View, Integer> mLayerMap = null;
  
  public final void alpha(ViewPropertyAnimatorCompat paramViewPropertyAnimatorCompat, View paramView, float paramFloat)
  {
    ViewPropertyAnimatorCompatICS.alpha(paramView, paramFloat);
  }
  
  public final void alphaBy(ViewPropertyAnimatorCompat paramViewPropertyAnimatorCompat, View paramView, float paramFloat)
  {
    ViewPropertyAnimatorCompatICS.alphaBy(paramView, paramFloat);
  }
  
  public final void cancel(ViewPropertyAnimatorCompat paramViewPropertyAnimatorCompat, View paramView)
  {
    ViewPropertyAnimatorCompatICS.cancel(paramView);
  }
  
  public final long getDuration$66604b42(View paramView)
  {
    return ViewPropertyAnimatorCompatICS.getDuration(paramView);
  }
  
  public final long getStartDelay$66604b42(View paramView)
  {
    return ViewPropertyAnimatorCompatICS.getStartDelay(paramView);
  }
  
  public final void rotation(ViewPropertyAnimatorCompat paramViewPropertyAnimatorCompat, View paramView, float paramFloat)
  {
    ViewPropertyAnimatorCompatICS.rotation(paramView, paramFloat);
  }
  
  public final void rotationBy(ViewPropertyAnimatorCompat paramViewPropertyAnimatorCompat, View paramView, float paramFloat)
  {
    ViewPropertyAnimatorCompatICS.rotationBy(paramView, paramFloat);
  }
  
  public final void rotationX(ViewPropertyAnimatorCompat paramViewPropertyAnimatorCompat, View paramView, float paramFloat)
  {
    ViewPropertyAnimatorCompatICS.rotationX(paramView, paramFloat);
  }
  
  public final void rotationXBy(ViewPropertyAnimatorCompat paramViewPropertyAnimatorCompat, View paramView, float paramFloat)
  {
    ViewPropertyAnimatorCompatICS.rotationXBy(paramView, paramFloat);
  }
  
  public final void rotationY(ViewPropertyAnimatorCompat paramViewPropertyAnimatorCompat, View paramView, float paramFloat)
  {
    ViewPropertyAnimatorCompatICS.rotationY(paramView, paramFloat);
  }
  
  public final void rotationYBy(ViewPropertyAnimatorCompat paramViewPropertyAnimatorCompat, View paramView, float paramFloat)
  {
    ViewPropertyAnimatorCompatICS.rotationYBy(paramView, paramFloat);
  }
  
  public final void scaleX(ViewPropertyAnimatorCompat paramViewPropertyAnimatorCompat, View paramView, float paramFloat)
  {
    ViewPropertyAnimatorCompatICS.scaleX(paramView, paramFloat);
  }
  
  public final void scaleXBy(ViewPropertyAnimatorCompat paramViewPropertyAnimatorCompat, View paramView, float paramFloat)
  {
    ViewPropertyAnimatorCompatICS.scaleXBy(paramView, paramFloat);
  }
  
  public final void scaleY(ViewPropertyAnimatorCompat paramViewPropertyAnimatorCompat, View paramView, float paramFloat)
  {
    ViewPropertyAnimatorCompatICS.scaleY(paramView, paramFloat);
  }
  
  public final void scaleYBy(ViewPropertyAnimatorCompat paramViewPropertyAnimatorCompat, View paramView, float paramFloat)
  {
    ViewPropertyAnimatorCompatICS.scaleYBy(paramView, paramFloat);
  }
  
  public final void setDuration$65a8a4c6(View paramView, long paramLong)
  {
    ViewPropertyAnimatorCompatICS.setDuration(paramView, paramLong);
  }
  
  public final void setInterpolator$4b3df29b(View paramView, Interpolator paramInterpolator)
  {
    ViewPropertyAnimatorCompatICS.setInterpolator(paramView, paramInterpolator);
  }
  
  public void setListener(ViewPropertyAnimatorCompat paramViewPropertyAnimatorCompat, View paramView, ViewPropertyAnimatorListener paramViewPropertyAnimatorListener)
  {
    paramView.setTag(2113929216, paramViewPropertyAnimatorListener);
    ViewPropertyAnimatorCompatICS.setListener(paramView, new MyVpaListener(paramViewPropertyAnimatorCompat));
  }
  
  public final void setStartDelay$65a8a4c6(View paramView, long paramLong)
  {
    ViewPropertyAnimatorCompatICS.setStartDelay(paramView, paramLong);
  }
  
  public final void start(ViewPropertyAnimatorCompat paramViewPropertyAnimatorCompat, View paramView)
  {
    ViewPropertyAnimatorCompatICS.start(paramView);
  }
  
  public final void translationX(ViewPropertyAnimatorCompat paramViewPropertyAnimatorCompat, View paramView, float paramFloat)
  {
    ViewPropertyAnimatorCompatICS.translationX(paramView, paramFloat);
  }
  
  public final void translationXBy(ViewPropertyAnimatorCompat paramViewPropertyAnimatorCompat, View paramView, float paramFloat)
  {
    ViewPropertyAnimatorCompatICS.translationXBy(paramView, paramFloat);
  }
  
  public final void translationY(ViewPropertyAnimatorCompat paramViewPropertyAnimatorCompat, View paramView, float paramFloat)
  {
    ViewPropertyAnimatorCompatICS.translationY(paramView, paramFloat);
  }
  
  public final void translationYBy(ViewPropertyAnimatorCompat paramViewPropertyAnimatorCompat, View paramView, float paramFloat)
  {
    ViewPropertyAnimatorCompatICS.translationYBy(paramView, paramFloat);
  }
  
  public void withEndAction(ViewPropertyAnimatorCompat paramViewPropertyAnimatorCompat, View paramView, Runnable paramRunnable)
  {
    ViewPropertyAnimatorCompatICS.setListener(paramView, new MyVpaListener(paramViewPropertyAnimatorCompat));
    ViewPropertyAnimatorCompat.access$002(paramViewPropertyAnimatorCompat, paramRunnable);
  }
  
  public void withLayer(ViewPropertyAnimatorCompat paramViewPropertyAnimatorCompat, View paramView)
  {
    ViewPropertyAnimatorCompat.access$402(paramViewPropertyAnimatorCompat, ViewCompat.getLayerType(paramView));
    ViewPropertyAnimatorCompatICS.setListener(paramView, new MyVpaListener(paramViewPropertyAnimatorCompat));
  }
  
  public void withStartAction(ViewPropertyAnimatorCompat paramViewPropertyAnimatorCompat, View paramView, Runnable paramRunnable)
  {
    ViewPropertyAnimatorCompatICS.setListener(paramView, new MyVpaListener(paramViewPropertyAnimatorCompat));
    ViewPropertyAnimatorCompat.access$102(paramViewPropertyAnimatorCompat, paramRunnable);
  }
  
  public final void x(ViewPropertyAnimatorCompat paramViewPropertyAnimatorCompat, View paramView, float paramFloat)
  {
    ViewPropertyAnimatorCompatICS.x(paramView, paramFloat);
  }
  
  public final void xBy(ViewPropertyAnimatorCompat paramViewPropertyAnimatorCompat, View paramView, float paramFloat)
  {
    ViewPropertyAnimatorCompatICS.xBy(paramView, paramFloat);
  }
  
  public final void y(ViewPropertyAnimatorCompat paramViewPropertyAnimatorCompat, View paramView, float paramFloat)
  {
    ViewPropertyAnimatorCompatICS.y(paramView, paramFloat);
  }
  
  public final void yBy(ViewPropertyAnimatorCompat paramViewPropertyAnimatorCompat, View paramView, float paramFloat)
  {
    ViewPropertyAnimatorCompatICS.yBy(paramView, paramFloat);
  }
  
  static final class MyVpaListener
    implements ViewPropertyAnimatorListener
  {
    ViewPropertyAnimatorCompat mVpa;
    
    MyVpaListener(ViewPropertyAnimatorCompat paramViewPropertyAnimatorCompat)
    {
      mVpa = paramViewPropertyAnimatorCompat;
    }
    
    public final void onAnimationCancel(View paramView)
    {
      Object localObject = paramView.getTag(2113929216);
      if ((localObject instanceof ViewPropertyAnimatorListener)) {}
      for (localObject = (ViewPropertyAnimatorListener)localObject;; localObject = null)
      {
        if (localObject != null) {
          ((ViewPropertyAnimatorListener)localObject).onAnimationCancel(paramView);
        }
        return;
      }
    }
    
    public final void onAnimationEnd(View paramView)
    {
      if (ViewPropertyAnimatorCompat.access$400(mVpa) >= 0)
      {
        ViewCompat.setLayerType(paramView, ViewPropertyAnimatorCompat.access$400(mVpa), null);
        ViewPropertyAnimatorCompat.access$402(mVpa, -1);
      }
      if (ViewPropertyAnimatorCompat.access$000(mVpa) != null) {
        ViewPropertyAnimatorCompat.access$000(mVpa).run();
      }
      Object localObject = paramView.getTag(2113929216);
      if ((localObject instanceof ViewPropertyAnimatorListener)) {}
      for (localObject = (ViewPropertyAnimatorListener)localObject;; localObject = null)
      {
        if (localObject != null) {
          ((ViewPropertyAnimatorListener)localObject).onAnimationEnd(paramView);
        }
        return;
      }
    }
    
    public final void onAnimationStart(View paramView)
    {
      if (ViewPropertyAnimatorCompat.access$400(mVpa) >= 0) {
        ViewCompat.setLayerType(paramView, 2, null);
      }
      if (ViewPropertyAnimatorCompat.access$100(mVpa) != null) {
        ViewPropertyAnimatorCompat.access$100(mVpa).run();
      }
      Object localObject = paramView.getTag(2113929216);
      if ((localObject instanceof ViewPropertyAnimatorListener)) {}
      for (localObject = (ViewPropertyAnimatorListener)localObject;; localObject = null)
      {
        if (localObject != null) {
          ((ViewPropertyAnimatorListener)localObject).onAnimationStart(paramView);
        }
        return;
      }
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v4.view.ViewPropertyAnimatorCompat.ICSViewPropertyAnimatorCompatImpl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */