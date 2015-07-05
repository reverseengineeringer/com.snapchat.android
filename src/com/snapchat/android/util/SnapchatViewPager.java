package com.snapchat.android.util;

import ajx;
import android.animation.ValueAnimator;
import android.content.Context;
import android.os.Parcelable;
import android.support.v4.app.FragmentManager;
import android.support.v4.view.ViewPager;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import aum;
import aum.1;
import auu;
import bam;
import ban;
import bel;
import beq;
import bes;
import boh;
import cgc;
import com.snapchat.android.Timber;
import com.snapchat.android.Timber.LogType;
import com.snapchat.android.analytics.NetworkAnalytics;
import com.snapchat.android.util.debug.ReleaseManager;
import com.snapchat.android.util.fragment.SnapchatFragment;
import com.squareup.otto.Bus;

public class SnapchatViewPager
  extends ViewPager
{
  private static final int OFFSCREEN_PAGE_LIMIT = 2;
  public static final int PAGER_WINDOW_OFFSET = 1;
  private static final String TAG = "SnapchatViewPager";
  private auu mAdapter;
  public boolean mIsAnimating = false;
  private boolean mIsChatFragmentAccessible = false;
  public boolean mIsPagingEnabled = true;
  public boolean mIsScrolling;
  private int mLastOnScrollPage = -1;
  private int mLastOnScrollPagePixelOffset = -1;
  private float mLastRawX = -1.0F;
  private NetworkAnalytics mNetworkAnalytics = NetworkAnalytics.a();
  public bes mUserSwipedIntoChatEvent;
  
  public SnapchatViewPager(Context paramContext)
  {
    super(paramContext);
    setOffscreenPageLimit(2);
  }
  
  public SnapchatViewPager(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    setOffscreenPageLimit(2);
  }
  
  public static String a(Integer paramInteger)
  {
    if (paramInteger == null) {
      return "Background";
    }
    switch (paramInteger.intValue())
    {
    default: 
      return "Unknown";
    case 0: 
      return "Chat";
    case 1: 
      return "Feed";
    case 2: 
      return "Camera";
    case 3: 
      return "Stories";
    }
    return "Discover";
  }
  
  private boolean a()
  {
    return mUserSwipedIntoChatEvent != null;
  }
  
  private boolean a(MotionEvent paramMotionEvent)
  {
    try
    {
      boolean bool = super.onTouchEvent(paramMotionEvent);
      return bool;
    }
    catch (IllegalArgumentException paramMotionEvent) {}
    return true;
  }
  
  @cgc
  public final SnapchatFragment a(int paramInt)
  {
    if (mAdapter == null) {
      return null;
    }
    auu localauu = mAdapter;
    String str = auu.a(getId(), paramInt);
    return (SnapchatFragment)mFragmentManager.findFragmentByTag(str);
  }
  
  public final void a(int paramInt1, int paramInt2)
  {
    int i = 0;
    if (i < paramInt2)
    {
      SnapchatFragment localSnapchatFragment = a(i);
      if (localSnapchatFragment != null)
      {
        if (Math.abs(paramInt1 - i) > 1) {
          break label49;
        }
        if (!mAreLargeUiUpdatesEnabled) {
          localSnapchatFragment.c();
        }
      }
      for (;;)
      {
        i += 1;
        break;
        label49:
        if (mAreLargeUiUpdatesEnabled) {
          mAreLargeUiUpdatesEnabled = false;
        }
      }
    }
  }
  
  public final boolean executeKeyEvent(KeyEvent paramKeyEvent)
  {
    return false;
  }
  
  public String getLastScrolledPage()
  {
    return a(Integer.valueOf(mLastOnScrollPage));
  }
  
  @boh
  public void onAllowAccessToChatFragmentEvent(bam parambam)
  {
    mIsChatFragmentAccessible = allow;
  }
  
  public boolean onInterceptTouchEvent(MotionEvent paramMotionEvent)
  {
    if (paramMotionEvent.getPointerCount() > 1)
    {
      i = 1;
      if ((mIsPagingEnabled) && (i == 0)) {
        break label28;
      }
    }
    label28:
    do
    {
      return false;
      i = 0;
      break;
      if (!a()) {
        break label56;
      }
    } while (paramMotionEvent.getAction() != 2);
    paramMotionEvent.setAction(0);
    a(paramMotionEvent);
    return true;
    label56:
    switch (paramMotionEvent.getAction())
    {
    case 1: 
    default: 
      label88:
      mLastRawX = paramMotionEvent.getRawX();
    }
    for (int i = 0; i == 0; i = 1)
    {
      try
      {
        boolean bool = super.onInterceptTouchEvent(paramMotionEvent);
        return bool;
      }
      catch (IllegalArgumentException paramMotionEvent) {}
      mLastRawX = paramMotionEvent.getRawX();
      break label88;
      if ((paramMotionEvent.getRawX() <= mLastRawX) || (((mLastOnScrollPage != 1) || (mLastOnScrollPagePixelOffset != 0)) && ((mLastOnScrollPage != 0) || (mLastOnScrollPagePixelOffset != 0)))) {
        break label88;
      }
    }
    return true;
  }
  
  protected final void onPageScrolled(int paramInt1, float paramFloat, int paramInt2)
  {
    super.onPageScrolled(paramInt1, paramFloat, paramInt2);
    boolean bool;
    if (paramFloat != 0.0F) {
      bool = true;
    }
    for (;;)
    {
      mIsScrolling = bool;
      if (mLastOnScrollPage == -1) {
        mLastOnScrollPage = paramInt1;
      }
      if (mLastOnScrollPagePixelOffset == -1) {
        mLastOnScrollPagePixelOffset = paramInt2;
      }
      if (((mLastOnScrollPage == 3) && (paramInt1 == 2)) || ((mLastOnScrollPage == 1) && (mLastOnScrollPagePixelOffset == 0) && (paramInt2 != 0) && (paramInt1 == 1)) || ((mLastOnScrollPage == 0) && (paramInt1 == 2))) {
        ban.a().a(new bel(TitleBarManager.Visibility.HIDDEN));
      }
      if (((paramInt1 == 1) && (paramFloat == 0.0F)) || ((mLastOnScrollPage == 2) && (paramInt1 > 2)) || ((mLastOnScrollPage == 1) && (paramInt1 <= 0))) {
        ban.a().a(new bel(TitleBarManager.Visibility.VISIBLE));
      }
      if ((paramInt1 == 0) && (!mIsChatFragmentAccessible)) {}
      try
      {
        setCurrentItem(2, false);
        setCurrentItem(1, false);
        if (paramInt2 == 0)
        {
          a(paramInt1, getChildCount());
          if (paramInt1 == 1) {
            mNetworkAnalytics.b();
          }
        }
        else
        {
          mLastOnScrollPage = paramInt1;
          mLastOnScrollPagePixelOffset = paramInt2;
          paramInt1 = mLastOnScrollPage;
          paramInt2 = mLastOnScrollPagePixelOffset;
          if (ReleaseManager.f()) {
            Timber.a(Timber.LogType.INFO, "SnapchatViewPager", true, false, null, "onPageScrolled position [%d] offset [%d]", new Object[] { Integer.valueOf(paramInt1), Integer.valueOf(paramInt2) });
          }
          return;
          bool = false;
        }
      }
      catch (IllegalStateException localIllegalStateException)
      {
        for (;;)
        {
          Timber.a("SnapchatViewPager", localIllegalStateException);
          continue;
          if (paramInt1 == 3) {
            mNetworkAnalytics.b();
          } else if (paramInt1 == 4) {
            ajx.aR();
          } else if (paramInt1 == 0) {
            mUserSwipedIntoChatEvent = null;
          }
        }
      }
    }
  }
  
  public void onRestoreInstanceState(Parcelable paramParcelable)
  {
    int i = getCurrentItem();
    super.onRestoreInstanceState(paramParcelable);
    setCurrentItem(i);
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    if (!mIsPagingEnabled) {}
    do
    {
      return false;
      if (!a()) {
        break;
      }
    } while (paramMotionEvent.getPointerCount() > 1);
    if (paramMotionEvent.getAction() == 1)
    {
      if (mUserSwipedIntoChatEvent.mFeedListItem != null)
      {
        Object localObject = mUserSwipedIntoChatEvent.mFeedListItem.findViewById(2131362346);
        if (localObject != null)
        {
          localObject = new aum((View)localObject, (int)((View)localObject).getTranslationX());
          mPreviousXPositionForShutAnimator = mStartOffset;
          ValueAnimator localValueAnimator = ValueAnimator.ofInt(new int[] { mStartOffset, mEndOffset }).setDuration(mDuration);
          localValueAnimator.addUpdateListener(new aum.1((aum)localObject));
          localValueAnimator.start();
        }
      }
      if (mUserSwipedIntoChatEvent.mIsFlinging) {
        setCurrentItem(0, true);
      }
      mUserSwipedIntoChatEvent = null;
    }
    return a(paramMotionEvent);
    return a(paramMotionEvent);
  }
  
  @boh
  public void onUserFlingedIntoChatEvent(beq parambeq)
  {
    mIsChatFragmentAccessible = true;
    setCurrentItem(0, true);
  }
  
  @boh
  public void onUserSwipedIntoChatEvent(bes parambes)
  {
    mUserSwipedIntoChatEvent = parambes;
  }
  
  public void setAdapter(auu paramauu)
  {
    super.setAdapter(paramauu);
    mAdapter = paramauu;
  }
  
  public void setAnimating(boolean paramBoolean)
  {
    mIsAnimating = paramBoolean;
  }
  
  public void setChatFragmentAccessible(boolean paramBoolean)
  {
    mIsChatFragmentAccessible = paramBoolean;
  }
  
  public void setPagingEnabled(boolean paramBoolean)
  {
    mIsPagingEnabled = paramBoolean;
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.util.SnapchatViewPager
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */