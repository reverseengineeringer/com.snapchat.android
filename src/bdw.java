import com.snapchat.android.fragments.addfriends.LeftSwipeContainerFragment;
import com.snapchat.android.fragments.addfriends.LeftSwipeContentFragment;
import com.snapchat.android.util.fragment.SnapchatFragment;

public final class bdw
{
  @cgc
  public String mBaseFragmentTag;
  public SnapchatFragment mFragmentToStart;
  @cgc
  public boolean mHideOldFragmentFlag;
  @cgc
  public String mTag;
  
  public bdw(LeftSwipeContentFragment paramLeftSwipeContentFragment)
  {
    this(LeftSwipeContainerFragment.a(paramLeftSwipeContentFragment), paramLeftSwipeContentFragment.tag(), null, false);
  }
  
  public bdw(SnapchatFragment paramSnapchatFragment)
  {
    this(paramSnapchatFragment, (byte)0);
  }
  
  private bdw(SnapchatFragment paramSnapchatFragment, byte paramByte)
  {
    this(paramSnapchatFragment, null, null, true);
  }
  
  public bdw(SnapchatFragment paramSnapchatFragment, String paramString1, String paramString2)
  {
    this(paramSnapchatFragment, paramString1, paramString2, true);
  }
  
  private bdw(SnapchatFragment paramSnapchatFragment, String paramString1, String paramString2, boolean paramBoolean)
  {
    mFragmentToStart = paramSnapchatFragment;
    mTag = paramString1;
    mBaseFragmentTag = paramString2;
    mHideOldFragmentFlag = paramBoolean;
  }
}

/* Location:
 * Qualified Name:     bdw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */