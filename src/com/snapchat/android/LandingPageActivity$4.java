package com.snapchat.android;

import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentManager;
import android.support.v4.view.ViewPager.SimpleOnPageChangeListener;
import awj;
import bbb;
import co;
import com.snapchat.android.analytics.AnalyticsEvents;
import com.snapchat.android.analytics.CameraEventAnalytics;
import com.snapchat.android.analytics.CameraEventAnalytics.CameraContext;
import com.snapchat.android.analytics.framework.EasyMetric;
import com.snapchat.android.analytics.framework.EasyMetricManager;
import com.snapchat.android.util.SnapchatViewPager;
import com.snapchat.android.util.fragment.SnapchatFragment;
import java.util.Iterator;
import java.util.List;

final class LandingPageActivity$4
  extends ViewPager.SimpleOnPageChangeListener
{
  private int b = a.a.getCurrentItem();
  private int c = a.a.getCurrentItem();
  private int d = 0;
  private boolean e = false;
  
  LandingPageActivity$4(LandingPageActivity paramLandingPageActivity) {}
  
  @awj
  private void a(int paramInt)
  {
    Object localObject2 = a.mFragments;
    if (((FragmentManager)localObject2).getBackStackEntryCount() != 0) {}
    for (int i = 1; i != 0; i = 0) {
      return;
    }
    if ((paramInt == c) && ((c == 1) || (c == 3))) {
      ba).mEasyMetricManager.b("CAMERA_DELAY", "");
    }
    Object localObject1 = a.a.a(paramInt);
    if (localObject1 != null)
    {
      ((SnapchatFragment)localObject1).f(true);
      localObject2 = ((FragmentManager)localObject2).getFragments().iterator();
      while (((Iterator)localObject2).hasNext())
      {
        Fragment localFragment = (Fragment)((Iterator)localObject2).next();
        if (((localFragment instanceof SnapchatFragment)) && (!((SnapchatFragment)localObject1).equals(localFragment))) {
          ((SnapchatFragment)localFragment).f(false);
        }
      }
    }
    new StringBuilder("markFragmentVisibilityChanged to: ").append(paramInt).append(" from: ").append(c);
    c = paramInt;
    if (c == 4) {
      LandingPageActivity.d(a);
    }
    localObject1 = a.a;
    ((SnapchatViewPager)localObject1).a(((SnapchatViewPager)localObject1).getCurrentItem(), ((SnapchatViewPager)localObject1).getChildCount());
  }
  
  public final void onPageScrollStateChanged(int paramInt)
  {
    CameraEventAnalytics localCameraEventAnalytics;
    int i;
    int j;
    if (paramInt == 0)
    {
      e = false;
      if (ca).mDeferPause) {
        LandingPageActivity.c(a).b(new String[] { SnapchatViewPager.a(Integer.valueOf(b)), "HORIZONTAL" });
      }
      a.e();
      a(b);
      AnalyticsEvents.a(c, b);
      localCameraEventAnalytics = LandingPageActivity.b(a);
      i = c;
      j = b;
      if (j != 1) {
        break label163;
      }
      if (i == 2)
      {
        co.a(mEasyMetricManager.c("EXIT_CAMERA_VIEW", ""), "CameraEventAnalytics::onFeedPageSelected: EXIT_CAMERA_VIEW has not been created.");
        mEasyMetricManager.a("EXIT_CAMERA_VIEW", "").a("context", "feed");
        mEasyMetricManager.c("EXIT_CAMERA_VIEW");
      }
    }
    for (;;)
    {
      d = paramInt;
      return;
      label163:
      if ((j == 3) && (i == 2))
      {
        co.a(mEasyMetricManager.c("EXIT_CAMERA_VIEW", ""), "CameraEventAnalytics::onStoryPageSelected: EXIT_CAMERA_VIEW has not been created.");
        mEasyMetricManager.a("EXIT_CAMERA_VIEW", "").a("context", "story");
        mEasyMetricManager.c("EXIT_CAMERA_VIEW");
      }
    }
  }
  
  public final void onPageScrolled(int paramInt1, float paramFloat, int paramInt2)
  {
    boolean bool = false;
    SnapchatFragment localSnapchatFragment;
    if (paramInt2 == 0)
    {
      if ((b == c) && (e))
      {
        localSnapchatFragment = a.a.a(b);
        if (a.f()) {
          break label74;
        }
        paramInt1 = 1;
        if ((localSnapchatFragment != null) && (paramInt1 == 0)) {
          localSnapchatFragment.f(true);
        }
      }
      e = false;
    }
    label74:
    do
    {
      do
      {
        return;
        paramInt1 = 0;
        break;
      } while (e);
      if ((c != 2) && ((paramInt1 == 1) || (paramInt1 == 2))) {
        LandingPageActivity.b(a).a(CameraEventAnalytics.CameraContext.SWIPE);
      }
      if (paramInt2 < a.a.getWidth() / 2) {
        bool = true;
      }
      e = true;
      localSnapchatFragment = a.a.a(b);
      new StringBuilder("onScrollStart from: ").append(b);
    } while (localSnapchatFragment == null);
    localSnapchatFragment.e(bool);
    LandingPageActivity.a(a, localSnapchatFragment, bool);
  }
  
  public final void onPageSelected(int paramInt)
  {
    b = paramInt;
    if (d == 0) {
      a(b);
    }
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.LandingPageActivity.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */