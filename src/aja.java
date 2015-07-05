import android.content.res.Resources;
import com.snapchat.android.SnapchatApplication;

public final class aja
  extends ajc
{
  private static aja sInstance;
  
  private aja()
  {
    super("my_story_ads79sdf", SnapchatApplication.b().getResources().getString(2131493240));
  }
  
  public static aja a()
  {
    try
    {
      if (sInstance == null) {
        sInstance = new aja();
      }
      aja localaja = sInstance;
      return localaja;
    }
    finally {}
  }
  
  public final boolean b()
  {
    return false;
  }
}

/* Location:
 * Qualified Name:     aja
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */