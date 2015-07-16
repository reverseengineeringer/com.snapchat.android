import android.os.Bundle;
import com.snapchat.android.fragments.addfriends.LeftSwipeContainerFragment;
import com.snapchat.android.fragments.addfriends.LeftSwipeContentFragment;
import com.snapchat.android.util.fragment.SnapchatFragment;

public final class bev
{
  @chd
  public String mBaseFragmentTag;
  public SnapchatFragment mFragmentToStart;
  @chd
  public boolean mHideOldFragmentFlag;
  @chd
  public String mTag;
  
  public bev(LeftSwipeContentFragment paramLeftSwipeContentFragment)
  {
    this(paramLeftSwipeContentFragment, null);
  }
  
  public bev(LeftSwipeContentFragment paramLeftSwipeContentFragment, Bundle paramBundle)
  {
    this(LeftSwipeContainerFragment.a(paramLeftSwipeContentFragment, paramBundle), paramLeftSwipeContentFragment.tag(), null, false);
  }
  
  public bev(SnapchatFragment paramSnapchatFragment)
  {
    this(paramSnapchatFragment, (byte)0);
  }
  
  private bev(SnapchatFragment paramSnapchatFragment, byte paramByte)
  {
    this(paramSnapchatFragment, null, null, true);
  }
  
  public bev(SnapchatFragment paramSnapchatFragment, String paramString1, String paramString2)
  {
    this(paramSnapchatFragment, paramString1, paramString2, true);
  }
  
  private bev(SnapchatFragment paramSnapchatFragment, String paramString1, String paramString2, boolean paramBoolean)
  {
    mFragmentToStart = paramSnapchatFragment;
    mTag = paramString1;
    mBaseFragmentTag = paramString2;
    mHideOldFragmentFlag = paramBoolean;
  }
}

/* Location:
 * Qualified Name:     bev
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */