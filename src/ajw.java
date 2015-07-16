import android.content.res.Resources;
import com.snapchat.android.SnapchatApplication;

public final class ajw
  extends ajy
{
  private static ajw sInstance;
  
  private ajw()
  {
    super("my_story_ads79sdf", SnapchatApplication.b().getResources().getString(2131493240));
  }
  
  public static ajw a()
  {
    try
    {
      if (sInstance == null) {
        sInstance = new ajw();
      }
      ajw localajw = sInstance;
      return localajw;
    }
    finally {}
  }
  
  public final boolean b()
  {
    return false;
  }
}

/* Location:
 * Qualified Name:     ajw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */