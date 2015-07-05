package com.snapchat.android.util.fragment;

import ala;
import alb;
import alw;
import android.app.Activity;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentManager;
import android.text.TextUtils;
import android.view.View;
import android.view.Window;
import aux;
import ban;
import bcb;
import com.snapchat.android.LandingPageActivity;
import com.snapchat.android.SnapkidzHomeActivity;
import com.snapchat.android.Timber;
import com.snapchat.android.analytics.CameraEventAnalytics;
import com.snapchat.android.analytics.framework.DictionaryEasyMetric;
import com.snapchat.android.analytics.framework.EasyMetric;
import com.snapchat.android.ui.window.WindowConfiguration;
import com.snapchat.android.ui.window.WindowConfiguration.StatusBarDrawMode;
import com.snapchat.android.util.StartupPath;
import com.squareup.otto.Bus;
import nf;

public abstract class SnapchatFragment
  extends Fragment
{
  public static final String ARG_KEY_HIDE_ACTION_BAR = "hide_action_bar";
  public static final String ARG_KEY_PAGE_INDEX = "page_index";
  private static final String TAG = "SnapchatFragment";
  public boolean mAreLargeUiUpdatesEnabled = false;
  private final alb mDownloadManager;
  public a mFragmentInterface;
  public View mFragmentLayout;
  public boolean mIsVisible;
  private final nf mLifecycleAnalytics;
  protected int mPageIndex = -1;
  private final Handler mSetFragmentVisibleHandler;
  public final WindowConfiguration mWindowConfiguration;
  
  public SnapchatFragment()
  {
    this(new Handler(Looper.getMainLooper()), alb.a(), nf.a(), new WindowConfiguration());
  }
  
  SnapchatFragment(Handler paramHandler, alb paramalb, nf paramnf, WindowConfiguration paramWindowConfiguration)
  {
    mSetFragmentVisibleHandler = paramHandler;
    mDownloadManager = paramalb;
    mLifecycleAnalytics = paramnf;
    mWindowConfiguration = paramWindowConfiguration;
  }
  
  public SnapchatFragment(WindowConfiguration paramWindowConfiguration)
  {
    this(new Handler(Looper.getMainLooper()), alb.a(), nf.a(), paramWindowConfiguration);
  }
  
  public final Window H()
  {
    FragmentActivity localFragmentActivity = getActivity();
    if (localFragmentActivity == null) {
      return null;
    }
    return localFragmentActivity.getWindow();
  }
  
  public final void I()
  {
    H().clearFlags(512);
  }
  
  public final void a(WindowConfiguration.StatusBarDrawMode paramStatusBarDrawMode)
  {
    mWindowConfiguration.a(paramStatusBarDrawMode);
  }
  
  public WindowConfiguration.StatusBarDrawMode b()
  {
    return WindowConfiguration.StatusBarDrawMode.DRAW_BACKGROUND_BEHIND;
  }
  
  public final View c(int paramInt)
  {
    return mFragmentLayout.findViewById(paramInt);
  }
  
  public final Object c(String paramString)
  {
    return getActivity().getSystemService(paramString);
  }
  
  public void c()
  {
    mAreLargeUiUpdatesEnabled = true;
  }
  
  public final boolean d(String paramString)
  {
    if (!TextUtils.isEmpty(paramString))
    {
      FragmentManager localFragmentManager = getFragmentManager();
      Fragment localFragment = localFragmentManager.findFragmentByTag(paramString);
      if ((localFragment instanceof SnapchatFragment))
      {
        ((SnapchatFragment)localFragment).f(true);
        if (localFragmentManager.popBackStackImmediate(paramString, 0)) {
          return true;
        }
      }
    }
    return false;
  }
  
  public void e()
  {
    mWindowConfiguration.a(b());
    if (k() != null) {
      ban.a().a(new bcb());
    }
  }
  
  public void e(boolean paramBoolean) {}
  
  public void f() {}
  
  public final void f(boolean paramBoolean)
  {
    Timber.a(getClass(), "markVisibilityChanged - isVisible " + paramBoolean, new Object[0]);
    if (j_()) {
      setUserVisibleHint(paramBoolean);
    }
    if (!paramBoolean) {
      mSetFragmentVisibleHandler.removeCallbacksAndMessages(null);
    }
    if (mIsVisible != paramBoolean)
    {
      if ((!super.isResumed()) && (paramBoolean)) {
        Timber.g("SnapchatFragment", "Fragment is not yet resumed. Scheduling onVisible for later", new Object[0]);
      }
    }
    else {
      return;
    }
    mIsVisible = paramBoolean;
    if (paramBoolean)
    {
      mDownloadManager.a(h());
      Timber.a(getClass(), "markVisibility -> onVisible()", new Object[0]);
      c();
      e();
      return;
    }
    Timber.a(getClass(), "markVisibility -> onHidden()", new Object[0]);
    f();
  }
  
  public void f_()
  {
    f(false);
  }
  
  public boolean g()
  {
    return false;
  }
  
  public boolean g_()
  {
    return false;
  }
  
  public ala h()
  {
    return new ala(new String[] { "DEFAULT" });
  }
  
  public boolean h_()
  {
    return mIsVisible;
  }
  
  public boolean j_()
  {
    return super.isAdded();
  }
  
  public alw k()
  {
    return null;
  }
  
  public boolean l_()
  {
    return false;
  }
  
  public void onAttach(Activity paramActivity)
  {
    super.onAttach(paramActivity);
    if ((paramActivity instanceof a)) {
      mFragmentInterface = ((a)paramActivity);
    }
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    paramBundle = getArguments();
    if (paramBundle != null) {
      mPageIndex = paramBundle.getInt("page_index", -1);
    }
  }
  
  public void onDetach()
  {
    super.onDetach();
    mFragmentInterface = null;
  }
  
  public void onPause()
  {
    super.onPause();
    ban.a().b(this);
  }
  
  public void onResume()
  {
    super.onResume();
    ban.a().c(this);
    Object localObject = mWindowConfiguration;
    Window localWindow = H();
    View localView = mFragmentLayout;
    if (!((WindowConfiguration)localObject).a())
    {
      a = localWindow;
      b = localView;
    }
    mWindowConfiguration.a(b());
    localObject = getActivity();
    boolean bool;
    if ((localObject instanceof LandingPageActivity)) {
      bool = ((LandingPageActivity)localObject).a(mPageIndex, this);
    }
    for (;;)
    {
      Timber.a(getClass(), "scheduleTaskForOnVisible() - shouldFragmentBecomeVisible " + bool, new Object[0]);
      if (bool) {
        mSetFragmentVisibleHandler.post(new Runnable()
        {
          public final void run()
          {
            f(true);
            nf localnf = SnapchatFragment.a(SnapchatFragment.this);
            if (mStartupMetric != null)
            {
              StartupPath localStartupPath2 = aux.b();
              StartupPath localStartupPath1 = localStartupPath2;
              if (localStartupPath2 == StartupPath.FROM_DESTROYED_STATE) {
                localStartupPath1 = StartupPath.FROM_KILLED_STATE;
              }
              mStartupMetric.a("type", localStartupPath1);
              mStartupMetric.a(false);
              mStartupMetric = null;
            }
            if (mPageIndex != 2) {
              amDictionaryEasyMetric.a("CAMERA_READY");
            }
          }
        });
      }
      return;
      if ((localObject instanceof SnapkidzHomeActivity)) {
        bool = true;
      } else {
        bool = false;
      }
    }
  }
  
  public long z_()
  {
    return -1L;
  }
  
  public static abstract interface a
  {
    public abstract void a(boolean paramBoolean);
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.util.fragment.SnapchatFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */