package android.support.v4.view;

import android.os.Build.VERSION;
import android.view.View;
import android.view.animation.Interpolator;
import java.lang.ref.WeakReference;
import java.util.WeakHashMap;

public final class ViewPropertyAnimatorCompat
{
  static final ViewPropertyAnimatorCompatImpl IMPL = new BaseViewPropertyAnimatorCompatImpl();
  static final int LISTENER_TAG_ID = 2113929216;
  private static final String TAG = "ViewAnimatorCompat";
  private Runnable mEndAction = null;
  private int mOldLayerType = -1;
  private Runnable mStartAction = null;
  private WeakReference<View> mView;
  
  static
  {
    int i = Build.VERSION.SDK_INT;
    if (i >= 19)
    {
      IMPL = new KitKatViewPropertyAnimatorCompatImpl();
      return;
    }
    if (i >= 18)
    {
      IMPL = new JBMr2ViewPropertyAnimatorCompatImpl();
      return;
    }
    if (i >= 16)
    {
      IMPL = new JBViewPropertyAnimatorCompatImpl();
      return;
    }
    if (i >= 14)
    {
      IMPL = new ICSViewPropertyAnimatorCompatImpl();
      return;
    }
  }
  
  ViewPropertyAnimatorCompat(View paramView)
  {
    mView = new WeakReference(paramView);
  }
  
  private ViewPropertyAnimatorCompat alphaBy(float paramFloat)
  {
    View localView = (View)mView.get();
    if (localView != null) {
      IMPL.alphaBy(this, localView, paramFloat);
    }
    return this;
  }
  
  private long getDuration()
  {
    View localView = (View)mView.get();
    if (localView != null) {
      return IMPL.getDuration$66604b42(localView);
    }
    return 0L;
  }
  
  private Interpolator getInterpolator()
  {
    View localView = (View)mView.get();
    if (localView != null) {
      return IMPL.getInterpolator$38b20421(localView);
    }
    return null;
  }
  
  private long getStartDelay()
  {
    View localView = (View)mView.get();
    if (localView != null) {
      return IMPL.getStartDelay$66604b42(localView);
    }
    return 0L;
  }
  
  private ViewPropertyAnimatorCompat rotation(float paramFloat)
  {
    View localView = (View)mView.get();
    if (localView != null) {
      IMPL.rotation(this, localView, paramFloat);
    }
    return this;
  }
  
  private ViewPropertyAnimatorCompat rotationBy(float paramFloat)
  {
    View localView = (View)mView.get();
    if (localView != null) {
      IMPL.rotationBy(this, localView, paramFloat);
    }
    return this;
  }
  
  private ViewPropertyAnimatorCompat rotationX(float paramFloat)
  {
    View localView = (View)mView.get();
    if (localView != null) {
      IMPL.rotationX(this, localView, paramFloat);
    }
    return this;
  }
  
  private ViewPropertyAnimatorCompat rotationXBy(float paramFloat)
  {
    View localView = (View)mView.get();
    if (localView != null) {
      IMPL.rotationXBy(this, localView, paramFloat);
    }
    return this;
  }
  
  private ViewPropertyAnimatorCompat rotationY(float paramFloat)
  {
    View localView = (View)mView.get();
    if (localView != null) {
      IMPL.rotationY(this, localView, paramFloat);
    }
    return this;
  }
  
  private ViewPropertyAnimatorCompat rotationYBy(float paramFloat)
  {
    View localView = (View)mView.get();
    if (localView != null) {
      IMPL.rotationYBy(this, localView, paramFloat);
    }
    return this;
  }
  
  private ViewPropertyAnimatorCompat scaleX(float paramFloat)
  {
    View localView = (View)mView.get();
    if (localView != null) {
      IMPL.scaleX(this, localView, paramFloat);
    }
    return this;
  }
  
  private ViewPropertyAnimatorCompat scaleXBy(float paramFloat)
  {
    View localView = (View)mView.get();
    if (localView != null) {
      IMPL.scaleXBy(this, localView, paramFloat);
    }
    return this;
  }
  
  private ViewPropertyAnimatorCompat scaleY(float paramFloat)
  {
    View localView = (View)mView.get();
    if (localView != null) {
      IMPL.scaleY(this, localView, paramFloat);
    }
    return this;
  }
  
  private ViewPropertyAnimatorCompat scaleYBy(float paramFloat)
  {
    View localView = (View)mView.get();
    if (localView != null) {
      IMPL.scaleYBy(this, localView, paramFloat);
    }
    return this;
  }
  
  private ViewPropertyAnimatorCompat setInterpolator(Interpolator paramInterpolator)
  {
    View localView = (View)mView.get();
    if (localView != null) {
      IMPL.setInterpolator$4b3df29b(localView, paramInterpolator);
    }
    return this;
  }
  
  private ViewPropertyAnimatorCompat setStartDelay(long paramLong)
  {
    View localView = (View)mView.get();
    if (localView != null) {
      IMPL.setStartDelay$65a8a4c6(localView, paramLong);
    }
    return this;
  }
  
  private ViewPropertyAnimatorCompat setUpdateListener(ViewPropertyAnimatorUpdateListener paramViewPropertyAnimatorUpdateListener)
  {
    View localView = (View)mView.get();
    if (localView != null) {
      IMPL.setUpdateListener$587f161e(localView, paramViewPropertyAnimatorUpdateListener);
    }
    return this;
  }
  
  private ViewPropertyAnimatorCompat translationXBy(float paramFloat)
  {
    View localView = (View)mView.get();
    if (localView != null) {
      IMPL.translationXBy(this, localView, paramFloat);
    }
    return this;
  }
  
  private ViewPropertyAnimatorCompat translationYBy(float paramFloat)
  {
    View localView = (View)mView.get();
    if (localView != null) {
      IMPL.translationYBy(this, localView, paramFloat);
    }
    return this;
  }
  
  private ViewPropertyAnimatorCompat withEndAction(Runnable paramRunnable)
  {
    View localView = (View)mView.get();
    if (localView != null) {
      IMPL.withEndAction(this, localView, paramRunnable);
    }
    return this;
  }
  
  private ViewPropertyAnimatorCompat withLayer()
  {
    View localView = (View)mView.get();
    if (localView != null) {
      IMPL.withLayer(this, localView);
    }
    return this;
  }
  
  private ViewPropertyAnimatorCompat withStartAction(Runnable paramRunnable)
  {
    View localView = (View)mView.get();
    if (localView != null) {
      IMPL.withStartAction(this, localView, paramRunnable);
    }
    return this;
  }
  
  private ViewPropertyAnimatorCompat x(float paramFloat)
  {
    View localView = (View)mView.get();
    if (localView != null) {
      IMPL.x(this, localView, paramFloat);
    }
    return this;
  }
  
  private ViewPropertyAnimatorCompat xBy(float paramFloat)
  {
    View localView = (View)mView.get();
    if (localView != null) {
      IMPL.xBy(this, localView, paramFloat);
    }
    return this;
  }
  
  private ViewPropertyAnimatorCompat y(float paramFloat)
  {
    View localView = (View)mView.get();
    if (localView != null) {
      IMPL.y(this, localView, paramFloat);
    }
    return this;
  }
  
  private ViewPropertyAnimatorCompat yBy(float paramFloat)
  {
    View localView = (View)mView.get();
    if (localView != null) {
      IMPL.yBy(this, localView, paramFloat);
    }
    return this;
  }
  
  public final ViewPropertyAnimatorCompat alpha(float paramFloat)
  {
    View localView = (View)mView.get();
    if (localView != null) {
      IMPL.alpha(this, localView, paramFloat);
    }
    return this;
  }
  
  public final void cancel()
  {
    View localView = (View)mView.get();
    if (localView != null) {
      IMPL.cancel(this, localView);
    }
  }
  
  public final ViewPropertyAnimatorCompat setDuration(long paramLong)
  {
    View localView = (View)mView.get();
    if (localView != null) {
      IMPL.setDuration$65a8a4c6(localView, paramLong);
    }
    return this;
  }
  
  public final ViewPropertyAnimatorCompat setListener(ViewPropertyAnimatorListener paramViewPropertyAnimatorListener)
  {
    View localView = (View)mView.get();
    if (localView != null) {
      IMPL.setListener(this, localView, paramViewPropertyAnimatorListener);
    }
    return this;
  }
  
  public final void start()
  {
    View localView = (View)mView.get();
    if (localView != null) {
      IMPL.start(this, localView);
    }
  }
  
  public final ViewPropertyAnimatorCompat translationX(float paramFloat)
  {
    View localView = (View)mView.get();
    if (localView != null) {
      IMPL.translationX(this, localView, paramFloat);
    }
    return this;
  }
  
  public final ViewPropertyAnimatorCompat translationY(float paramFloat)
  {
    View localView = (View)mView.get();
    if (localView != null) {
      IMPL.translationY(this, localView, paramFloat);
    }
    return this;
  }
  
  static class BaseViewPropertyAnimatorCompatImpl
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
        Runnable localRunnable = mStartAction;
        paramViewPropertyAnimatorCompat = mEndAction;
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
  
  static class ICSViewPropertyAnimatorCompatImpl
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
        if (mVpa.mOldLayerType >= 0)
        {
          ViewCompat.setLayerType(paramView, mVpa.mOldLayerType, null);
          ViewPropertyAnimatorCompat.access$402(mVpa, -1);
        }
        if (mVpa.mEndAction != null) {
          mVpa.mEndAction.run();
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
        if (mVpa.mOldLayerType >= 0) {
          ViewCompat.setLayerType(paramView, 2, null);
        }
        if (mVpa.mStartAction != null) {
          mVpa.mStartAction.run();
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
  
  static class JBMr2ViewPropertyAnimatorCompatImpl
    extends ViewPropertyAnimatorCompat.JBViewPropertyAnimatorCompatImpl
  {
    public final Interpolator getInterpolator$38b20421(View paramView)
    {
      return ViewPropertyAnimatorCompatJellybeanMr2.getInterpolator(paramView);
    }
  }
  
  static class JBViewPropertyAnimatorCompatImpl
    extends ViewPropertyAnimatorCompat.ICSViewPropertyAnimatorCompatImpl
  {
    public final void setListener(ViewPropertyAnimatorCompat paramViewPropertyAnimatorCompat, View paramView, ViewPropertyAnimatorListener paramViewPropertyAnimatorListener)
    {
      ViewPropertyAnimatorCompatJB.setListener(paramView, paramViewPropertyAnimatorListener);
    }
    
    public final void withEndAction(ViewPropertyAnimatorCompat paramViewPropertyAnimatorCompat, View paramView, Runnable paramRunnable)
    {
      ViewPropertyAnimatorCompatJB.withEndAction(paramView, paramRunnable);
    }
    
    public final void withLayer(ViewPropertyAnimatorCompat paramViewPropertyAnimatorCompat, View paramView)
    {
      ViewPropertyAnimatorCompatJB.withLayer(paramView);
    }
    
    public final void withStartAction(ViewPropertyAnimatorCompat paramViewPropertyAnimatorCompat, View paramView, Runnable paramRunnable)
    {
      ViewPropertyAnimatorCompatJB.withStartAction(paramView, paramRunnable);
    }
  }
  
  static final class KitKatViewPropertyAnimatorCompatImpl
    extends ViewPropertyAnimatorCompat.JBMr2ViewPropertyAnimatorCompatImpl
  {
    public final void setUpdateListener$587f161e(View paramView, ViewPropertyAnimatorUpdateListener paramViewPropertyAnimatorUpdateListener)
    {
      ViewPropertyAnimatorCompatKK.setUpdateListener(paramView, paramViewPropertyAnimatorUpdateListener);
    }
  }
  
  static abstract interface ViewPropertyAnimatorCompatImpl
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
}

/* Location:
 * Qualified Name:     android.support.v4.view.ViewPropertyAnimatorCompat
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */