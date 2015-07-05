import com.google.android.gms.ads.AdRequest;

@Deprecated
public final class bt
{
  public static final String a = AdRequest.DEVICE_ID_EMULATOR;
  
  public static enum a
  {
    private final String e;
    
    private a(String paramString)
    {
      e = paramString;
    }
    
    public final String toString()
    {
      return e;
    }
  }
  
  public static enum b
  {
    public static int[] a()
    {
      return (int[])d.clone();
    }
  }
}

/* Location:
 * Qualified Name:     bt
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */