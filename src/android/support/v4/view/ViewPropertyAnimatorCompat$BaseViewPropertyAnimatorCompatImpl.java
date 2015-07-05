package android.support.v4.view;

import android.view.View;
import android.view.animation.Interpolator;
import java.lang.ref.WeakReference;
import java.util.WeakHashMap;

class ViewPropertyAnimatorCompat$BaseViewPropertyAnimatorCompatImpl
  implements ViewPropertyAnimatorCompat.ViewPropertyAnimatorCompatImpl
{
  WeakHashMap<View, Runnable> mStarterMap = null;
  
  private void postStartMessage(ViewPropertyAnimatorCompat paramViewPropertyAnimatorCompat, View paramView)
  {
    Runnable localRunnable = null;
    if (mStarterMap != null) {
      localRunnable = (Runnable)mStarterMap.get(paramView);
    }
    Object localObject = localRunnable;
    if (localRunnable == null)
    {
      localObject = new Starter(paramViewPropertyAnimatorCompat, paramView, (byte)0);
      if (mStarterMap == null) {
        mStarterMap = new WeakHashMap();
      }
      mStarterMap.put(paramView, localObject);
    }
    paramView.removeCallbacks((Runnable)localObject);
    paramView.post((Runnable)localObject);
  }
  
  private void removeStartMessage(View paramView)
  {
    if (mStarterMap != null)
    {
      Runnable localRunnable = (Runnable)mStarterMap.get(paramView);
      if (localRunnable != null) {
        paramView.removeCallbacks(localRunnable);
      }
    }
  }
  
  public void alpha(ViewPropertyAnimatorCompat paramViewPropertyAnimatorCompat, View paramView, float paramFloat)
  {
    postStartMessage(paramViewPropertyAnimatorCompat, paramView);
  }
  
  public void alphaBy(ViewPropertyAnimatorCompat paramViewPropertyAnimatorCompat, View paramView, float paramFloat)
  {
    postStartMessage(paramViewPropertyAnimatorCompat, paramView);
  }
  
  public void cancel(ViewPropertyAnimatorCompat paramViewPropertyAnimatorCompat, View paramView)
  {
    postStartMessage(paramViewPropertyAnimatorCompat, paramView);
  }
  
  public long getDuration$66604b42(View paramView)
  {
    return 0L;
  }
  
  public Interpolator getInterpolator$38b20421(View paramView)
  {
    return null;
  }
  
  public long getStartDelay$66604b42(View paramView)
  {
    return 0L;
  }
  
  public void rotation(ViewPropertyAnimatorCompat paramViewPropertyAnimatorCompat, View paramView, float paramFloat)
  {
    postStartMessage(paramViewPropertyAnimatorCompat, paramView);
  }
  
  public void rotationBy(ViewPropertyAnimatorCompat paramViewPropertyAnimatorCompat, View paramView, float paramFloat)
  {
    postStartMessage(paramViewPropertyAnimatorCompat, paramView);
  }
  
  public void rotationX(ViewPropertyAnimatorCompat paramViewPropertyAnimatorCompat, View paramView, float paramFloat)
  {
    postStartMessage(paramViewPropertyAnimatorCompat, paramView);
  }
  
  public void rotationXBy(ViewPropertyAnimatorCompat paramViewPropertyAnimatorCompat, View paramView, float paramFloat)
  {
    postStartMessage(paramViewPropertyAnimatorCompat, paramView);
  }
  
  public void rotationY(ViewPropertyAnimatorCompat paramViewPropertyAnimatorCompat, View paramView, float paramFloat)
  {
    postStartMessage(paramViewPropertyAnimatorCompat, paramView);
  }
  
  public void rotationYBy(ViewPropertyAnimatorCompat paramViewPropertyAnimatorCompat, View paramView, float paramFloat)
  {
    postStartMessage(paramViewPropertyAnimatorCompat, paramView);
  }
  
  public void scaleX(ViewPropertyAnimatorCompat paramViewPropertyAnimatorCompat, View paramView, float paramFloat)
  {
    postStartMessage(paramViewPropertyAnimatorCompat, paramView);
  }
  
  public void scaleXBy(ViewPropertyAnimatorCompat paramViewPropertyAnimatorCompat, View paramView, float paramFloat)
  {
    postStartMessage(paramViewPropertyAnimatorCompat, paramView);
  }
  
  public void scaleY(ViewPropertyAnimatorCompat paramViewPropertyAnimatorCompat, View paramView, float paramFloat)
  {
    postStartMessage(paramViewPropertyAnimatorCompat, paramView);
  }
  
  public void scaleYBy(ViewPropertyAnimatorCompat paramViewPropertyAnimatorCompat, View paramView, float paramFloat)
  {
    postStartMessage(paramViewPropertyAnimatorCompat, paramView);
  }
  
  public void setDuration$65a8a4c6(View paramView, long paramLong) {}
  
  public void setInterpolator$4b3df29b(View paramView, Interpolator paramInterpolator) {}
  
  public void setListener(ViewPropertyAnimatorCompat paramViewPropertyAnimatorCompat, View paramView, ViewPropertyAnimatorListener paramViewPropertyAnimatorListener)
  {
    paramView.setTag(2113929216, paramViewPropertyAnimatorListener);
  }
  
  public void setStartDelay$65a8a4c6(View paramView, long paramLong) {}
  
  public void setUpdateListener$587f161e(View paramView, ViewPropertyAnimatorUpdateListener paramViewPropertyAnimatorUpdateListener) {}
  
  public void start(ViewPropertyAnimatorCompat paramViewPropertyAnimatorCompat, View paramView)
  {
    if (mStarterMap != null)
    {
      Runnable localRunnable = (Runnable)mStarterMap.get(paramView);
      if (localRunnable != null) {
        paramView.removeCallbacks(localRunnable);
      }
    }
    startAnimation(paramViewPropertyAnimatorCompat, paramView);
  }
  
  final void startAnimation(ViewPropertyAnimatorCompat paramViewPropertyAnimatorCompat, View paramView)
  {
    Object localObject = paramView.getTag(2113929216);
    if ((localObject instanceof ViewPropertyAnimatorListener)) {}
    for (localObject = (ViewPropertyAnimatorListener)localObject;; localObject = null)
    {
      Runnable localRunnable = ViewPropertyAnimatorCompat.access$100(paramViewPropertyAnimatorCompat);
      paramViewPropertyAnimatorCompat = ViewPropertyAnimatorCompat.access$000(paramViewPropertyAnimatorCompat);
      if (localRunnable != null) {
        localRunnable.run();
      }
      if (localObject != null)
      {
        ((ViewPropertyAnimatorListener)localObject).onAnimationStart(paramView);
        ((ViewPropertyAnimatorListener)localObject).onAnimationEnd(paramView);
      }
      if (paramViewPropertyAnimatorCompat != null) {
        paramViewPropertyAnimatorCompat.run();
      }
      if (mStarterMap != null) {
        mStarterMap.remove(paramView);
      }
      return;
    }
  }
  
  public void translationX(ViewPropertyAnimatorCompat paramViewPropertyAnimatorCompat, View paramView, float paramFloat)
  {
    postStartMessage(paramViewPropertyAnimatorCompat, paramView);
  }
  
  public void translationXBy(ViewPropertyAnimatorCompat paramViewPropertyAnimatorCompat, View paramView, float paramFloat)
  {
    postStartMessage(paramViewPropertyAnimatorCompat, paramView);
  }
  
  public void translationY(ViewPropertyAnimatorCompat paramViewPropertyAnimatorCompat, View paramView, float paramFloat)
  {
    postStartMessage(paramViewPropertyAnimatorCompat, paramView);
  }
  
  public void translationYBy(ViewPropertyAnimatorCompat paramViewPropertyAnimatorCompat, View paramView, float paramFloat)
  {
    postStartMessage(paramViewPropertyAnimatorCompat, paramView);
  }
  
  public void withEndAction(ViewPropertyAnimatorCompat paramViewPropertyAnimatorCompat, View paramView, Runnable paramRunnable)
  {
    ViewPropertyAnimatorCompat.access$002(paramViewPropertyAnimatorCompat, paramRunnable);
    postStartMessage(paramViewPropertyAnimatorCompat, paramView);
  }
  
  public void withLayer(ViewPropertyAnimatorCompat paramViewPropertyAnimatorCompat, View paramView) {}
  
  public void withStartAction(ViewPropertyAnimatorCompat paramViewPropertyAnimatorCompat, View paramView, Runnable paramRunnable)
  {
    ViewPropertyAnimatorCompat.access$102(paramViewPropertyAnimatorCompat, paramRunnable);
    postStartMessage(paramViewPropertyAnimatorCompat, paramView);
  }
  
  public void x(ViewPropertyAnimatorCompat paramViewPropertyAnimatorCompat, View paramView, float paramFloat)
  {
    postStartMessage(paramViewPropertyAnimatorCompat, paramView);
  }
  
  public void xBy(ViewPropertyAnimatorCompat paramViewPropertyAnimatorCompat, View paramView, float paramFloat)
  {
    postStartMessage(paramViewPropertyAnimatorCompat, paramView);
  }
  
  public void y(ViewPropertyAnimatorCompat paramViewPropertyAnimatorCompat, View paramView, float paramFloat)
  {
    postStartMessage(paramViewPropertyAnimatorCompat, paramView);
  }
  
  public void yBy(ViewPropertyAnimatorCompat paramViewPropertyAnimatorCompat, View paramView, float paramFloat)
  {
    postStartMessage(paramViewPropertyAnimatorCompat, paramView);
  }
  
  final class Starter
    implements Runnable
  {
    WeakReference<View> mViewRef;
    ViewPropertyAnimatorCompat mVpa;
    
    private Starter(ViewPropertyAnimatorCompat paramViewPropertyAnimatorCompat, View paramView)
    {
      mViewRef = new WeakReference(paramView);
      mVpa = paramViewPropertyAnimatorCompat;
    }
    
    public final void run()
    {
      startAnimation(mVpa, (View)mViewRef.get());
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v4.view.ViewPropertyAnimatorCompat.BaseViewPropertyAnimatorCompatImpl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */