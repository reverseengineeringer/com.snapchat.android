import android.annotation.TargetApi;
import android.view.View;
import android.view.Window;
import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.Timber;

@TargetApi(19)
public final class auw
{
  private static final auw INSTANCE = new auw();
  private static final String TAG = "SoftNavigationBarManager";
  public View mDecorView;
  public int mDefaultBottomPadding;
  public int mDefaultFlags;
  public int mDefaultRightPadding;
  private boolean mIsImmersiveModeEnabled = true;
  public boolean mIsImmersiveModeOn = false;
  public final boolean mIsImmersiveModeSupported;
  private final auv mUtils;
  public Window mWindow;
  
  private auw() {}
  
  private auw(boolean paramBoolean, auv paramauv)
  {
    mIsImmersiveModeSupported = paramBoolean;
    mUtils = paramauv;
  }
  
  public static auw a()
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
      Timber.a("SoftNavigationBarManager", "Setting padding bottom %d right %d", new Object[] { Integer.valueOf(j), Integer.valueOf(i) });
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
          localauv = mUtils;
          if (!localauv.a()) {}
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
          break label174;
        }
        i = 0;
        j = mDefaultBottomPadding;
      }
    }
    label174:
    int j = mDefaultRightPadding;
    auv localauv = mUtils;
    if (!localauv.a()) {}
    for (int i = 0;; i = mNavWidth)
    {
      i += j;
      break;
    }
  }
  
  @avl
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
  
  @avl
  public final void c()
  {
    if ((!mIsImmersiveModeSupported) || (mDecorView == null)) {
      return;
    }
    if (!mIsImmersiveModeEnabled)
    {
      mWindow.addFlags(134217728);
      mDecorView.setSystemUiVisibility(mDefaultFlags);
      a(avh.e(SnapchatApplication.b()), mIsImmersiveModeOn);
    }
    mIsImmersiveModeEnabled = true;
  }
}

/* Location:
 * Qualified Name:     auw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */