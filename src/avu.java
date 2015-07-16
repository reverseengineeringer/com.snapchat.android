import android.annotation.TargetApi;
import android.view.View;
import android.view.Window;
import com.snapchat.android.SnapchatApplication;

@TargetApi(19)
public final class avu
{
  private static final avu INSTANCE = new avu();
  private static final String TAG = "SoftNavigationBarManager";
  public View mDecorView;
  public int mDefaultBottomPadding;
  public int mDefaultFlags;
  public int mDefaultRightPadding;
  private boolean mIsImmersiveModeEnabled = true;
  public boolean mIsImmersiveModeOn = false;
  public final boolean mIsImmersiveModeSupported;
  private final avt mUtils;
  public Window mWindow;
  
  private avu() {}
  
  private avu(boolean paramBoolean, avt paramavt)
  {
    mIsImmersiveModeSupported = paramBoolean;
    mUtils = paramavt;
  }
  
  public static avu a()
  {
    return INSTANCE;
  }
  
  public final void a(boolean paramBoolean1, boolean paramBoolean2)
  {
    int k;
    if (paramBoolean1)
    {
      k = mDefaultRightPadding;
      if (paramBoolean2)
      {
        i = 0;
        j = i;
        i = k;
      }
    }
    for (;;)
    {
      mDecorView.setPadding(mDecorView.getPaddingLeft(), mDecorView.getPaddingTop(), i, j);
      return;
      i = mDefaultBottomPadding + mUtils.b();
      break;
      if (mUtils.mIsDockedBottomInLandscape)
      {
        k = mDefaultRightPadding;
        if (paramBoolean2)
        {
          i = 0;
          j = i;
          i = k;
        }
        else
        {
          j = mDefaultBottomPadding;
          localavt = mUtils;
          if (!localavt.a()) {}
          for (i = 0;; i = mLandscapeNavHeight)
          {
            i += j;
            break;
          }
        }
      }
      else
      {
        if (!paramBoolean2) {
          break label148;
        }
        i = 0;
        j = mDefaultBottomPadding;
      }
    }
    label148:
    int j = mDefaultRightPadding;
    avt localavt = mUtils;
    if (!localavt.a()) {}
    for (int i = 0;; i = mNavWidth)
    {
      i += j;
      break;
    }
  }
  
  @awj
  public final void b()
  {
    if ((!mIsImmersiveModeSupported) || (mDecorView == null)) {
      return;
    }
    if (mIsImmersiveModeEnabled)
    {
      mWindow.clearFlags(134217728);
      int i = mDecorView.getSystemUiVisibility();
      mDecorView.setSystemUiVisibility(i & 0xFBFF);
      mDecorView.setPadding(mDecorView.getPaddingLeft(), mDecorView.getPaddingTop(), mDefaultRightPadding, mDefaultBottomPadding);
    }
    mIsImmersiveModeEnabled = false;
  }
  
  @awj
  public final void c()
  {
    if ((!mIsImmersiveModeSupported) || (mDecorView == null)) {
      return;
    }
    if (!mIsImmersiveModeEnabled)
    {
      mWindow.addFlags(134217728);
      mDecorView.setSystemUiVisibility(mDefaultFlags);
      a(awf.e(SnapchatApplication.b()), mIsImmersiveModeOn);
    }
    mIsImmersiveModeEnabled = true;
  }
}

/* Location:
 * Qualified Name:     avu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */