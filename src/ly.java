import android.os.Bundle;
import android.support.v4.app.FragmentManager;
import android.support.v4.view.ViewPager;
import android.view.ViewGroup;
import com.snapchat.android.Timber;
import com.snapchat.android.camera.CameraFragment;
import com.snapchat.android.discover.ui.fragment.DiscoverFragment;
import com.snapchat.android.fragments.chat.ChatFragment;
import com.snapchat.android.fragments.stories.StoriesFragment;
import com.snapchat.android.util.fragment.SnapchatFragment;

public final class ly
  extends auu
{
  public ly(FragmentManager paramFragmentManager)
  {
    super(paramFragmentManager);
  }
  
  public final SnapchatFragment a(ViewGroup paramViewGroup, int paramInt)
  {
    boolean bool2 = false;
    Timber.c("HomePagerAdapter", "Creating pager fragments", new Object[0]);
    Object localObject;
    switch (paramInt)
    {
    default: 
      return null;
    case 0: 
      localObject = new ChatFragment();
      boolean bool1 = bool2;
      if ((paramViewGroup instanceof ViewPager))
      {
        bool1 = bool2;
        if (paramInt == ((ViewPager)paramViewGroup).getCurrentItem()) {
          bool1 = true;
        }
      }
      k = bool1;
      paramViewGroup = (ViewGroup)localObject;
    }
    for (;;)
    {
      localObject = new Bundle();
      ((Bundle)localObject).putInt("page_index", paramInt);
      paramViewGroup.setArguments((Bundle)localObject);
      return paramViewGroup;
      if (azm.e())
      {
        paramViewGroup = new com.snapchat.android.app.feature.messaging.feed.ui.fragment.FeedFragment();
      }
      else
      {
        paramViewGroup = new com.snapchat.android.fragments.feed.FeedFragment();
        continue;
        paramViewGroup = new CameraFragment();
        continue;
        paramViewGroup = new StoriesFragment();
        continue;
        paramViewGroup = new DiscoverFragment();
      }
    }
  }
  
  public final int getCount()
  {
    return 5;
  }
}

/* Location:
 * Qualified Name:     ly
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */