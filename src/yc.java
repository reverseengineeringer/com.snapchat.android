import android.os.Build;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

public final class yc
{
  private static yc a;
  private static final Map<String, Collection<avc>> b = new HashMap() {};
  
  public static yc a()
  {
    try
    {
      if (a == null) {
        a = new yc();
      }
      yc localyc = a;
      return localyc;
    }
    finally {}
  }
  
  public static Collection<avc> b()
  {
    Collection localCollection = (Collection)b.get(Build.MODEL);
    if (localCollection != null) {
      return localCollection;
    }
    return Collections.emptySet();
  }
  
  public static int c()
  {
    if ((Build.MODEL.equals("HTCEVOV4G")) || (Build.MODEL.equals("ADR6400L")) || (Build.MODEL.equals("HTC PH39100")) || (Build.MODEL.equals("HTC Sensation 4G")) || (Build.MODEL.equals("ADR6350"))) {
      return 180;
    }
    return 0;
  }
}

/* Location:
 * Qualified Name:     yc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */