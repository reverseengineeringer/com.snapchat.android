package com.snapchat.android.fragments.addfriends;

import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.support.v4.view.ViewPager.OnPageChangeListener;
import awf;
import mu;

final class LeftSwipeContainerFragment$1
  implements ViewPager.OnPageChangeListener
{
  LeftSwipeContainerFragment$1(LeftSwipeContainerFragment paramLeftSwipeContainerFragment) {}
  
  public final void onPageScrollStateChanged(int paramInt) {}
  
  public final void onPageScrolled(int paramInt1, float paramFloat, int paramInt2)
  {
    Fragment localFragment = aa).a;
    if ((paramInt1 == 0) && (paramFloat <= 0.05F))
    {
      awf.a(a.getActivity(), LeftSwipeContainerFragment.b(a));
      a.getActivity().onBackPressed();
      if ((localFragment instanceof LeftSwipeContainerFragment.a)) {
        ((LeftSwipeContainerFragment.a)localFragment).H();
      }
    }
  }
  
  public final void onPageSelected(int paramInt) {}
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.addfriends.LeftSwipeContainerFragment.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */