import com.snapchat.android.camera.transcoding.TranscodingPreferencesWrapper;
import com.snapchat.android.camera.transcoding.TranscodingPreferencesWrapper.TranscodingEnabled;

public final class wy
{
  private static final wy b = new wy();
  TranscodingPreferencesWrapper a;
  
  private wy()
  {
    this(TranscodingPreferencesWrapper.a());
  }
  
  private wy(TranscodingPreferencesWrapper paramTranscodingPreferencesWrapper)
  {
    a = paramTranscodingPreferencesWrapper;
  }
  
  public static wy a()
  {
    return b;
  }
  
  public static boolean b()
  {
    boolean bool = ajx.bM();
    if (TranscodingPreferencesWrapper.b() == TranscodingPreferencesWrapper.TranscodingEnabled.ENABLED) {}
    for (int i = 1; (bool) && (i != 0); i = 0) {
      return true;
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     wy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */