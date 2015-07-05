import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentStatePagerAdapter;
import android.text.TextUtils;
import com.snapchat.android.fragments.addfriends.AddressBookFragment;
import com.snapchat.android.fragments.addfriends.MyFriendsFragment;
import com.snapchat.android.ui.window.WindowConfiguration;

public final class afj
  extends FragmentStatePagerAdapter
{
  private final String a;
  private final String b;
  private final String c;
  private final WindowConfiguration d;
  
  public afj(FragmentManager paramFragmentManager, String paramString1, String paramString2, String paramString3, WindowConfiguration paramWindowConfiguration)
  {
    super(paramFragmentManager);
    a = paramString1;
    b = paramString2;
    c = paramString3;
    d = paramWindowConfiguration;
  }
  
  public final int getCount()
  {
    return 2;
  }
  
  public final Fragment getItem(int paramInt)
  {
    Bundle localBundle = new Bundle();
    Object localObject;
    switch (paramInt)
    {
    default: 
      localObject = null;
    }
    for (;;)
    {
      if (localObject != null)
      {
        localBundle.putBoolean("hide_action_bar", true);
        ((Fragment)localObject).setArguments(localBundle);
      }
      return (Fragment)localObject;
      MyFriendsFragment localMyFriendsFragment = new MyFriendsFragment(d);
      localObject = localMyFriendsFragment;
      if (!TextUtils.isEmpty(c))
      {
        localBundle.putString("selected_friend_username", c);
        localMyFriendsFragment.setArguments(localBundle);
        localObject = localMyFriendsFragment;
        continue;
        localObject = new AddressBookFragment(d);
      }
    }
  }
  
  public final CharSequence getPageTitle(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      return null;
    case 0: 
      return a;
    }
    return b;
  }
}

/* Location:
 * Qualified Name:     afj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */