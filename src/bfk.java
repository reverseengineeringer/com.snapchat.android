import com.snapchat.android.util.TitleBarManager.LockedState;
import com.snapchat.android.util.TitleBarManager.Visibility;

public final class bfk
{
  @chd
  public TitleBarManager.LockedState mLockedState;
  @chd
  public TitleBarManager.Visibility mUnlockedVisibility;
  @chd
  public TitleBarManager.Visibility mVisibility;
  
  public bfk(TitleBarManager.LockedState paramLockedState)
  {
    mVisibility = null;
    mUnlockedVisibility = null;
    mLockedState = paramLockedState;
  }
  
  public bfk(TitleBarManager.Visibility paramVisibility)
  {
    mVisibility = paramVisibility;
    mUnlockedVisibility = paramVisibility;
    mLockedState = null;
  }
  
  public bfk(TitleBarManager.Visibility paramVisibility, TitleBarManager.LockedState paramLockedState)
  {
    mVisibility = paramVisibility;
    mUnlockedVisibility = null;
    mLockedState = paramLockedState;
  }
}

/* Location:
 * Qualified Name:     bfk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */