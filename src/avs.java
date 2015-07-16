import android.os.Parcelable;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.support.v4.view.PagerAdapter;
import android.view.View;
import android.view.ViewGroup;
import com.snapchat.android.util.fragment.SnapchatFragment;

public abstract class avs
  extends PagerAdapter
{
  private static final String TAG = "SnapchatPagerAdapter";
  private FragmentTransaction mCurTransaction = null;
  private Fragment mCurrentPrimaryItem = null;
  public final FragmentManager mFragmentManager;
  
  public avs(FragmentManager paramFragmentManager)
  {
    mFragmentManager = paramFragmentManager;
  }
  
  public static String a(int paramInt1, int paramInt2)
  {
    return "android:switcher:" + paramInt1 + ":" + paramInt2;
  }
  
  public abstract SnapchatFragment a(ViewGroup paramViewGroup, int paramInt);
  
  public final void destroyItem(ViewGroup paramViewGroup, int paramInt, Object paramObject)
  {
    if (mCurTransaction == null) {
      mCurTransaction = mFragmentManager.beginTransaction();
    }
    new StringBuilder("Detaching item #").append(paramInt).append(": f=").append(paramObject).append(" v=").append(((Fragment)paramObject).getView());
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
  
  public final Object instantiateItem(ViewGroup paramViewGroup, int paramInt)
  {
    if (mCurTransaction == null) {
      mCurTransaction = mFragmentManager.beginTransaction();
    }
    Object localObject = a(paramViewGroup.getId(), paramInt);
    localObject = mFragmentManager.findFragmentByTag((String)localObject);
    if (localObject != null)
    {
      new StringBuilder("Attaching item #").append(paramInt).append(": f=").append(localObject);
      paramViewGroup = (ViewGroup)localObject;
      if (((Fragment)localObject).isDetached()) {
        mCurTransaction.attach((Fragment)localObject);
      }
    }
    for (paramViewGroup = (ViewGroup)localObject;; paramViewGroup = (ViewGroup)localObject)
    {
      if (paramViewGroup != mCurrentPrimaryItem)
      {
        paramViewGroup.setMenuVisibility(false);
        paramViewGroup.setUserVisibleHint(false);
      }
      return paramViewGroup;
      localObject = a(paramViewGroup, paramInt);
      new StringBuilder("Adding item #").append(paramInt).append(": f=").append(localObject);
      mCurTransaction.add(paramViewGroup.getId(), (Fragment)localObject, a(paramViewGroup.getId(), paramInt));
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
 * Qualified Name:     avs
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */