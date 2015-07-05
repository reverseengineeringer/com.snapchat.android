import com.snapchat.android.util.TitleBarManager.LockedState;
import com.snapchat.android.util.TitleBarManager.Visibility;

public final class bel
{
  @cgc
  public TitleBarManager.LockedState mLockedState;
  @cgc
  public TitleBarManager.Visibility mUnlockedVisibility;
  @cgc
  public TitleBarManager.Visibility mVisibility;
  
  public bel(TitleBarManager.LockedState paramLockedState)
  {
    mVisibility = null;
    mUnlockedVisibility = null;
    mLockedState = paramLockedState;
  }
  
  public bel(TitleBarManager.Visibility paramVisibility)
  {
    mVisibility = paramVisibility;
    mUnlockedVisibility = paramVisibility;
    mLockedState = null;
  }
  
  public bel(TitleBarManager.Visibility paramVisibility, TitleBarManager.LockedState paramLockedState)
  {
    mVisibility = paramVisibility;
    mUnlockedVisibility = null;
    mLockedState = paramLockedState;
  }
}

/* Location:
 * Qualified Name:     bel
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */