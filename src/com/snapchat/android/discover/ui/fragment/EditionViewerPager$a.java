package com.snapchat.android.discover.ui.fragment;

import android.support.v4.view.ViewPager.SimpleOnPageChangeListener;

final class EditionViewerPager$a
  extends ViewPager.SimpleOnPageChangeListener
{
  private EditionViewerPager$a(EditionViewerPager paramEditionViewerPager) {}
  
  public final void onPageScrollStateChanged(int paramInt)
  {
    EditionViewerPager.a(a, paramInt);
    if ((paramInt == 2) && (a.getCurrentItem() != EditionViewerPager.a(a))) {
      a.a(EditionViewerPager.a(a));
    }
    do
    {
      return;
      if ((paramInt == 0) && (a.getCurrentItem() != EditionViewerPager.a(a)))
      {
        a.a(EditionViewerPager.a(a));
        return;
      }
    } while (paramInt != 1);
    EditionViewerPager.b(a, a.getCurrentItem());
  }
  
  public final void onPageSelected(int paramInt)
  {
    a.a(paramInt, -1);
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.discover.ui.fragment.EditionViewerPager.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */