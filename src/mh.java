import android.os.SystemClock;
import com.snapchat.android.Timber.LogType;
import java.util.ArrayList;

public final class mh
{
  public String a;
  public String b;
  public ArrayList<Long> c;
  public ArrayList<String> d;
  
  public mh(String paramString1, String paramString2)
  {
    a = paramString1;
    b = paramString2;
    if (c == null)
    {
      c = new ArrayList();
      d = new ArrayList();
    }
    for (;;)
    {
      a(null);
      return;
      c.clear();
      d.clear();
    }
  }
  
  public static void a(String paramString1, String paramString2)
  {
    azk.a(Timber.LogType.DEBUG.name(), paramString1, paramString2);
  }
  
  public final void a(String paramString)
  {
    long l = SystemClock.elapsedRealtime();
    c.add(Long.valueOf(l));
    d.add(paramString);
  }
}

/* Location:
 * Qualified Name:     mh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */