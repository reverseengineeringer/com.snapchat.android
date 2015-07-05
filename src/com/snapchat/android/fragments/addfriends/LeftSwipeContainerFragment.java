package com.snapchat.android.fragments.addfriends;

import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.support.v4.view.ViewPager.OnPageChangeListener;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import avh;
import cgb;
import cgc;
import com.snapchat.android.LeftSwipeViewPager;
import com.snapchat.android.ui.window.WindowConfiguration.StatusBarDrawMode;
import com.snapchat.android.util.debug.ReleaseManager;
import com.snapchat.android.util.fragment.SnapchatFragment;
import mc;

public class LeftSwipeContainerFragment
  extends SnapchatFragment
{
  public LeftSwipeViewPager a;
  private LeftSwipeContentFragment b;
  private Bundle c;
  private mc d;
  
  public static LeftSwipeContainerFragment a(@cgb LeftSwipeContentFragment paramLeftSwipeContentFragment)
  {
    LeftSwipeContainerFragment localLeftSwipeContainerFragment = new LeftSwipeContainerFragment();
    Bundle localBundle = new Bundle();
    localBundle.putSerializable("content_fragment", paramLeftSwipeContentFragment);
    localLeftSwipeContainerFragment.setArguments(localBundle);
    return localLeftSwipeContainerFragment;
  }
  
  @cgc
  public final SnapchatFragment a()
  {
    return (SnapchatFragment)d.a;
  }
  
  protected final WindowConfiguration.StatusBarDrawMode b()
  {
    return WindowConfiguration.StatusBarDrawMode.DRAW_BEHIND;
  }
  
  protected final void e()
  {
    super.e();
    f(false);
    SnapchatFragment localSnapchatFragment = a();
    if (localSnapchatFragment != null) {
      localSnapchatFragment.f(true);
    }
    a.setLeftSwipeEnable(true);
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    paramBundle = getArguments();
    if (paramBundle != null)
    {
      b = ((LeftSwipeContentFragment)paramBundle.getSerializable("content_fragment"));
      c = paramBundle.getBundle("content_fragment_arguments");
    }
    if ((ReleaseManager.f()) && (b == null)) {
      throw new IllegalArgumentException("Cannot create LeftSwipeContainerFragment with null ContentFragment!");
    }
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    mFragmentLayout = paramLayoutInflater.inflate(2130968690, paramViewGroup, false);
    a = ((LeftSwipeViewPager)c(2131362407));
    d = new mc(getChildFragmentManager(), b, c);
    a.setAdapter(d);
    a.setCurrentItem(1);
    a.setOnPageChangeListener(new ViewPager.OnPageChangeListener()
    {
      public final void onPageScrollStateChanged(int paramAnonymousInt) {}
      
      public final void onPageScrolled(int paramAnonymousInt1, float paramAnonymousFloat, int paramAnonymousInt2)
      {
        if ((paramAnonymousInt1 == 0) && (paramAnonymousFloat <= 0.05F))
        {
          avh.a(getActivity(), LeftSwipeContainerFragment.a(LeftSwipeContainerFragment.this));
          getActivity().onBackPressed();
        }
      }
      
      public final void onPageSelected(int paramAnonymousInt) {}
    });
    return mFragmentLayout;
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.addfriends.LeftSwipeContainerFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */