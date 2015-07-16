import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentStatePagerAdapter;
import android.text.TextUtils;
import com.snapchat.android.fragments.addfriends.AddressBookFragment;
import com.snapchat.android.fragments.addfriends.MyFriendsFragment;
import com.snapchat.android.ui.window.WindowConfiguration;

public final class agj
  extends FragmentStatePagerAdapter
{
  private final String a;
  private final String b;
  private final String c;
  private final WindowConfiguration d;
  private final agj.a e;
  
  public agj(FragmentManager paramFragmentManager, String paramString1, String paramString2, String paramString3, WindowConfiguration paramWindowConfiguration, agj.a parama)
  {
    super(paramFragmentManager);
    a = paramString1;
    b = paramString2;
    c = paramString3;
    d = paramWindowConfiguration;
    e = parama;
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
      e.a(paramInt, (Fragment)localObject);
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
  
  public static abstract interface a
  {
    public abstract void a(int paramInt, Fragment paramFragment);
  }
}

/* Location:
 * Qualified Name:     agj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */