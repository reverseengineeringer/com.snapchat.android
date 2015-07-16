package com.snapchat.android.util.fragment;

import alv;
import alw;
import amt;
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
import avv;
import bbo;
import bdb;
import bga;
import com.snapchat.android.LandingPageActivity;
import com.snapchat.android.SnapkidzHomeActivity;
import com.snapchat.android.analytics.CameraEventAnalytics;
import com.snapchat.android.analytics.framework.EasyMetric;
import com.snapchat.android.analytics.framework.EasyMetricManager;
import com.snapchat.android.ui.window.WindowConfiguration;
import com.snapchat.android.ui.window.WindowConfiguration.StatusBarDrawMode;
import com.snapchat.android.util.StartupPath;
import com.squareup.otto.Bus;
import nw;

public abstract class SnapchatFragment
  extends Fragment
  implements bga
{
  public static final String ARG_KEY_HIDE_ACTION_BAR = "hide_action_bar";
  public static final String ARG_KEY_PAGE_INDEX = "page_index";
  private static final String TAG = "SnapchatFragment";
  public boolean mAreLargeUiUpdatesEnabled = false;
  private final alw mDownloadManager;
  public a mFragmentInterface;
  public View mFragmentLayout;
  public boolean mIsVisible;
  private final nw mLifecycleAnalytics;
  protected int mPageIndex = -1;
  private final Handler mSetFragmentVisibleHandler;
  public final WindowConfiguration mWindowConfiguration;
  
  public SnapchatFragment()
  {
    this(new Handler(Looper.getMainLooper()), alw.a(), nw.a(), new WindowConfiguration());
  }
  
  SnapchatFragment(Handler paramHandler, alw paramalw, nw paramnw, WindowConfiguration paramWindowConfiguration)
  {
    mSetFragmentVisibleHandler = paramHandler;
    mDownloadManager = paramalw;
    mLifecycleAnalytics = paramnw;
    mWindowConfiguration = paramWindowConfiguration;
  }
  
  public SnapchatFragment(WindowConfiguration paramWindowConfiguration)
  {
    this(new Handler(Looper.getMainLooper()), alw.a(), nw.a(), paramWindowConfiguration);
  }
  
  public final boolean I()
  {
    return mIsVisible;
  }
  
  public final Window J()
  {
    FragmentActivity localFragmentActivity = getActivity();
    if (localFragmentActivity == null) {
      return null;
    }
    return localFragmentActivity.getWindow();
  }
  
  public final void K()
  {
    J().clearFlags(512);
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
      bbo.a().a(new bdb());
    }
  }
  
  public void e(boolean paramBoolean) {}
  
  public void e_()
  {
    f(false);
  }
  
  public void f() {}
  
  public final void f(boolean paramBoolean)
  {
    if (h_()) {
      setUserVisibleHint(paramBoolean);
    }
    if (!paramBoolean) {
      mSetFragmentVisibleHandler.removeCallbacksAndMessages(null);
    }
    if ((mIsVisible == paramBoolean) || ((!super.isResumed()) && (paramBoolean))) {
      return;
    }
    mIsVisible = paramBoolean;
    if (paramBoolean)
    {
      mDownloadManager.a(h());
      c();
      e();
      return;
    }
    f();
  }
  
  public boolean f_()
  {
    return false;
  }
  
  public boolean g()
  {
    return false;
  }
  
  public alv h()
  {
    return new alv(new String[] { "DEFAULT" });
  }
  
  public boolean h_()
  {
    return super.isAdded();
  }
  
  public boolean j_()
  {
    return false;
  }
  
  public amt k()
  {
    return null;
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
    bbo.a().b(this);
  }
  
  public void onResume()
  {
    super.onResume();
    bbo.a().c(this);
    Object localObject = mWindowConfiguration;
    Window localWindow = J();
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
      if (bool) {
        mSetFragmentVisibleHandler.post(new Runnable()
        {
          public final void run()
          {
            f(true);
            nw localnw = SnapchatFragment.a(SnapchatFragment.this);
            if (mStartupMetric != null)
            {
              StartupPath localStartupPath2 = avv.b();
              StartupPath localStartupPath1 = localStartupPath2;
              if (localStartupPath2 == StartupPath.FROM_DESTROYED_STATE) {
                localStartupPath1 = StartupPath.FROM_KILLED_STATE;
              }
              mStartupMetric.a("type", localStartupPath1);
              mStartupMetric.a(false);
              mStartupMetric = null;
            }
            if (mPageIndex != 2) {
              amEasyMetricManager.b("CAMERA_READY", "");
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
  
  public long y_()
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