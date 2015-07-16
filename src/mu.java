import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentStatePagerAdapter;
import android.view.ViewGroup;
import com.snapchat.android.fragments.addfriends.LeftSwipeContentFragment;
import com.snapchat.android.util.fragment.SnapchatFragment;

public final class mu
  extends FragmentStatePagerAdapter
{
  public Fragment a;
  private final LeftSwipeContentFragment b;
  private final Bundle c;
  
  public mu(FragmentManager paramFragmentManager, @chc LeftSwipeContentFragment paramLeftSwipeContentFragment, @chd Bundle paramBundle)
  {
    super(paramFragmentManager);
    b = paramLeftSwipeContentFragment;
    c = paramBundle;
  }
  
  public final void destroyItem(ViewGroup paramViewGroup, int paramInt, Object paramObject)
  {
    super.destroyItem(paramViewGroup, paramInt, paramObject);
    if (paramInt == 1) {
      a = null;
    }
  }
  
  public final int getCount()
  {
    return 2;
  }
  
  public final Fragment getItem(int paramInt)
  {
    Object localObject;
    switch (paramInt)
    {
    default: 
      localObject = null;
    }
    SnapchatFragment localSnapchatFragment;
    do
    {
      return (Fragment)localObject;
      return new Fragment();
      localSnapchatFragment = b.newInstance();
      localObject = localSnapchatFragment;
    } while (c == null);
    localSnapchatFragment.setArguments(c);
    return localSnapchatFragment;
  }
  
  public final Object instantiateItem(ViewGroup paramViewGroup, int paramInt)
  {
    paramViewGroup = super.instantiateItem(paramViewGroup, paramInt);
    if (paramInt == 1) {
      a = ((Fragment)paramViewGroup);
    }
    return paramViewGroup;
  }
}

/* Location:
 * Qualified Name:     mu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */