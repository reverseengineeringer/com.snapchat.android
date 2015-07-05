import android.view.View;
import android.view.ViewStub;

public final class bgr<T extends View>
{
  private bgr.a mCallback;
  private View mLayout;
  private int mResourceId;
  private int mStubId;
  private T mView;
  
  public bgr(View paramView, int paramInt1, int paramInt2)
  {
    this(paramView, paramInt1, paramInt2, null);
  }
  
  public bgr(View paramView, int paramInt1, int paramInt2, bgr.a parama)
  {
    mLayout = paramView;
    mStubId = paramInt1;
    mResourceId = paramInt2;
    mCallback = parama;
  }
  
  public final T a()
  {
    if (mView == null)
    {
      ViewStub localViewStub = (ViewStub)mLayout.findViewById(mStubId);
      if (localViewStub != null) {
        localViewStub.inflate();
      }
      mView = mLayout.findViewById(mResourceId);
      if (mCallback != null) {
        mCallback.a(mView);
      }
    }
    return mView;
  }
  
  public final void a(int paramInt)
  {
    if ((mView == null) && (paramInt != 0)) {
      return;
    }
    a().setVisibility(paramInt);
  }
  
  public final void a(bgr.a parama)
  {
    mCallback = parama;
    if (b()) {
      mCallback.a(mView);
    }
  }
  
  public final boolean b()
  {
    return mView != null;
  }
  
  public final boolean c()
  {
    return (mView != null) && (mView.getVisibility() == 0);
  }
  
  public static abstract interface a
  {
    public abstract void a(View paramView);
  }
}

/* Location:
 * Qualified Name:     bgr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */