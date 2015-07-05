import android.view.View;
import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnPreDrawListener;

public final class bgt
{
  protected int mCount = 0;
  protected final ViewTreeObserver.OnPreDrawListener mOnPreDrawListener = new ViewTreeObserver.OnPreDrawListener()
  {
    public final boolean onPreDraw()
    {
      return false;
    }
  };
  protected final ViewTreeObserver.OnPreDrawListener mOnPreDrawSkipListener = new ViewTreeObserver.OnPreDrawListener()
  {
    public final boolean onPreDraw()
    {
      if (d()) {
        mViewTreeObserver.removeOnPreDrawListener(this);
      }
      return false;
    }
  };
  public View mView;
  ViewTreeObserver mViewTreeObserver;
  
  public final void a()
  {
    if ((mCount == 0) && (d())) {
      mViewTreeObserver.addOnPreDrawListener(mOnPreDrawListener);
    }
    mCount += 1;
  }
  
  public final void b()
  {
    if (mCount > 0)
    {
      mCount -= 1;
      if ((mCount == 0) && (d())) {
        mViewTreeObserver.removeOnPreDrawListener(mOnPreDrawListener);
      }
    }
  }
  
  public final void c()
  {
    if (d()) {
      mViewTreeObserver.addOnPreDrawListener(mOnPreDrawSkipListener);
    }
  }
  
  final boolean d()
  {
    mViewTreeObserver = mView.getViewTreeObserver();
    return mViewTreeObserver.isAlive();
  }
}

/* Location:
 * Qualified Name:     bgt
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */