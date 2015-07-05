package android.support.v4.app;

import android.os.Bundle;
import android.os.Parcelable;
import android.support.v4.view.PagerAdapter;
import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;
import java.util.Iterator;

public abstract class FragmentStatePagerAdapter
  extends PagerAdapter
{
  private static final boolean DEBUG = false;
  private static final String TAG = "FragmentStatePagerAdapter";
  private FragmentTransaction mCurTransaction = null;
  private Fragment mCurrentPrimaryItem = null;
  private final FragmentManager mFragmentManager;
  private ArrayList<Fragment> mFragments = new ArrayList();
  private ArrayList<Fragment.SavedState> mSavedState = new ArrayList();
  
  public FragmentStatePagerAdapter(FragmentManager paramFragmentManager)
  {
    mFragmentManager = paramFragmentManager;
  }
  
  public void destroyItem(ViewGroup paramViewGroup, int paramInt, Object paramObject)
  {
    paramViewGroup = (Fragment)paramObject;
    if (mCurTransaction == null) {
      mCurTransaction = mFragmentManager.beginTransaction();
    }
    while (mSavedState.size() <= paramInt) {
      mSavedState.add(null);
    }
    mSavedState.set(paramInt, mFragmentManager.saveFragmentInstanceState(paramViewGroup));
    mFragments.set(paramInt, null);
    mCurTransaction.remove(paramViewGroup);
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
  
  public abstract Fragment getItem(int paramInt);
  
  public Object instantiateItem(ViewGroup paramViewGroup, int paramInt)
  {
    if (mFragments.size() > paramInt)
    {
      localFragment = (Fragment)mFragments.get(paramInt);
      if (localFragment != null) {
        return localFragment;
      }
    }
    if (mCurTransaction == null) {
      mCurTransaction = mFragmentManager.beginTransaction();
    }
    Fragment localFragment = getItem(paramInt);
    if (mSavedState.size() > paramInt)
    {
      Fragment.SavedState localSavedState = (Fragment.SavedState)mSavedState.get(paramInt);
      if (localSavedState != null) {
        localFragment.setInitialSavedState(localSavedState);
      }
    }
    while (mFragments.size() <= paramInt) {
      mFragments.add(null);
    }
    localFragment.setMenuVisibility(false);
    localFragment.setUserVisibleHint(false);
    mFragments.set(paramInt, localFragment);
    mCurTransaction.add(paramViewGroup.getId(), localFragment);
    return localFragment;
  }
  
  public final boolean isViewFromObject(View paramView, Object paramObject)
  {
    return ((Fragment)paramObject).getView() == paramView;
  }
  
  public final void restoreState(Parcelable paramParcelable, ClassLoader paramClassLoader)
  {
    if (paramParcelable != null)
    {
      paramParcelable = (Bundle)paramParcelable;
      paramParcelable.setClassLoader(paramClassLoader);
      paramClassLoader = paramParcelable.getParcelableArray("states");
      mSavedState.clear();
      mFragments.clear();
      int i;
      if (paramClassLoader != null)
      {
        i = 0;
        while (i < paramClassLoader.length)
        {
          mSavedState.add((Fragment.SavedState)paramClassLoader[i]);
          i += 1;
        }
      }
      paramClassLoader = paramParcelable.keySet().iterator();
      while (paramClassLoader.hasNext())
      {
        Object localObject = (String)paramClassLoader.next();
        if (((String)localObject).startsWith("f"))
        {
          i = Integer.parseInt(((String)localObject).substring(1));
          localObject = mFragmentManager.getFragment(paramParcelable, (String)localObject);
          if (localObject != null)
          {
            while (mFragments.size() <= i) {
              mFragments.add(null);
            }
            ((Fragment)localObject).setMenuVisibility(false);
            mFragments.set(i, localObject);
          }
        }
      }
    }
  }
  
  public final Parcelable saveState()
  {
    Object localObject1 = null;
    Object localObject2;
    if (mSavedState.size() > 0)
    {
      localObject1 = new Bundle();
      localObject2 = new Fragment.SavedState[mSavedState.size()];
      mSavedState.toArray((Object[])localObject2);
      ((Bundle)localObject1).putParcelableArray("states", (Parcelable[])localObject2);
    }
    int i = 0;
    while (i < mFragments.size())
    {
      Fragment localFragment = (Fragment)mFragments.get(i);
      localObject2 = localObject1;
      if (localFragment != null)
      {
        localObject2 = localObject1;
        if (localObject1 == null) {
          localObject2 = new Bundle();
        }
        localObject1 = "f" + i;
        mFragmentManager.putFragment((Bundle)localObject2, (String)localObject1, localFragment);
      }
      i += 1;
      localObject1 = localObject2;
    }
    return (Parcelable)localObject1;
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
 * Qualified Name:     android.support.v4.app.FragmentStatePagerAdapter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */