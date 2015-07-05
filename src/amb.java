import android.content.Context;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class amb
{
  protected File[] a;
  protected List<po> b;
  private final Context c;
  private final String d;
  private final String e = "^_^";
  
  public amb(Context paramContext, String paramString)
  {
    c = paramContext;
    d = paramString;
  }
  
  public final void a()
  {
    try
    {
      a = azk.a(c, false);
      return;
    }
    catch (IOException localIOException)
    {
      localIOException.printStackTrace();
    }
  }
  
  public final void b()
  {
    String str = d.split(java.util.regex.Pattern.quote("^_^"))[1];
    str = "&taskId=" + str;
    b = new ArrayList(a.length);
    File[] arrayOfFile = a;
    int j = arrayOfFile.length;
    int i = 0;
    while (i < j)
    {
      File localFile = arrayOfFile[i];
      b.add(new po(str, localFile));
      i += 1;
    }
  }
  
  public final void c()
  {
    Iterator localIterator = b.iterator();
    while (localIterator.hasNext()) {
      ((po)localIterator.next()).f();
    }
  }
}

/* Location:
 * Qualified Name:     amb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */