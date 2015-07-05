import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.TimeZone;

public final class btj
{
  public static final btj a = new btj();
  private btk b = new btj.a((byte)0);
  private SimpleDateFormat c = null;
  
  private btj()
  {
    try
    {
      c = b();
      return;
    }
    catch (Exception localException) {}
  }
  
  private static SimpleDateFormat b()
  {
    SimpleDateFormat localSimpleDateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSSZ", Locale.US);
    localSimpleDateFormat.setTimeZone(TimeZone.getTimeZone("GMT"));
    return localSimpleDateFormat;
  }
  
  public final String a()
  {
    return a(b.a());
  }
  
  public final String a(Date paramDate)
  {
    if (c != null) {
      return c.format(paramDate);
    }
    b();
    return "";
  }
  
  final class a
    implements btk
  {
    private a() {}
    
    public final Date a()
    {
      return new Date();
    }
  }
}

/* Location:
 * Qualified Name:     btj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */