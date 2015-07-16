import com.snapchat.android.camera.transcoding.TranscodingPreferencesWrapper;

public final class xt
{
  private static final xt b = new xt();
  TranscodingPreferencesWrapper a;
  
  private xt()
  {
    this(TranscodingPreferencesWrapper.a());
  }
  
  private xt(TranscodingPreferencesWrapper paramTranscodingPreferencesWrapper)
  {
    a = paramTranscodingPreferencesWrapper;
  }
  
  public static xt a()
  {
    return b;
  }
  
  public static boolean b()
  {
    boolean bool1 = akr.bH();
    boolean bool2 = TranscodingPreferencesWrapper.c();
    return (bool1) && (bool2);
  }
}

/* Location:
 * Qualified Name:     xt
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */