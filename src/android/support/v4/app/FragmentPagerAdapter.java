package android.support.v4.app;

import android.os.Parcelable;
import android.support.v4.view.PagerAdapter;
import android.view.View;
import android.view.ViewGroup;

public abstract class FragmentPagerAdapter
  extends PagerAdapter
{
  private static final boolean DEBUG = false;
  private static final String TAG = "FragmentPagerAdapter";
  private FragmentTransaction mCurTransaction = null;
  private Fragment mCurrentPrimaryItem = null;
  private final FragmentManager mFragmentManager;
  
  private FragmentPagerAdapter(FragmentManager paramFragmentManager)
  {
    mFragmentManager = paramFragmentManager;
  }
  
  private static long getItemId(int paramInt)
  {
    return paramInt;
  }
  
  private static String makeFragmentName(int paramInt, long paramLong)
  {
    return "android:switcher:" + paramInt + ":" + paramLong;
  }
  
  public final void destroyItem(ViewGroup paramViewGroup, int paramInt, Object paramObject)
  {
    if (mCurTransaction == null) {
      mCurTransaction = mFragmentManager.beginTransaction();
    }
    mCurTransaction.detach((Fragment)paramObject);
  }
  
  public final void finishUpdate$52bc874c()
  {
    if (mCurTransaction != null)
    {
      mCurTransaction.commitAllowingStateLoss();
      mCurTransaction = null;
      mFragmentManager.executePendingTransactions();
    }
  }
  
  public abstract Fragment getItem$29859790();
  
  public final Object instantiateItem(ViewGroup paramViewGroup, int paramInt)
  {
    if (mCurTransaction == null) {
      mCurTransaction = mFragmentManager.beginTransaction();
    }
    long l = paramInt;
    Object localObject = makeFragmentName(paramViewGroup.getId(), l);
    localObject = mFragmentManager.findFragmentByTag((String)localObject);
    if (localObject != null) {
      mCurTransaction.attach((Fragment)localObject);
    }
    for (paramViewGroup = (ViewGroup)localObject;; paramViewGroup = (ViewGroup)localObject)
    {
      if (paramViewGroup != mCurrentPrimaryItem)
      {
        paramViewGroup.setMenuVisibility(false);
        paramViewGroup.setUserVisibleHint(false);
      }
      return paramViewGroup;
      localObject = getItem$29859790();
      mCurTransaction.add(paramViewGroup.getId(), (Fragment)localObject, makeFragmentName(paramViewGroup.getId(), l));
    }
  }
  
  public final boolean isViewFromObject(View paramView, Object paramObject)
  {
    return ((Fragment)paramObject).getView() == paramView;
  }
  
  public final void restoreState(Parcelable paramParcelable, ClassLoader paramClassLoader) {}
  
  public final Parcelable saveState()
  {
    return null;
  }
  
  public final void setPrimaryItem$30510aeb(Object paramObject)
  {
    paramObject = (Fragment)paramObject;
    if (paramObject != mCurrentPrimaryItem)
    {
      if (mCurrentPrimaryItem != null)
      {
        mCurrentPrimaryItem.setMenuVisibility(false);
        mCurrentPrimaryItem.setUserVisibleHint(false);
      }
      if (paramObject != null)
      {
        ((Fragment)paramObject).setMenuVisibility(true);
        ((Fragment)paramObject).setUserVisibleHint(true);
      }
      mCurrentPrimaryItem = ((Fragment)paramObject);
    }
  }
  
  public final void startUpdate$52bc874c() {}
}

/* Location:
 * Qualified Name:     android.support.v4.app.FragmentPagerAdapter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */