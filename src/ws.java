import android.content.Context;
import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import com.snapchat.android.database.SharedPreferenceKey;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import java.util.StringTokenizer;

public final class ws
{
  private static final ws d = new ws();
  public final Set<aue> a = new HashSet();
  @cgc
  public SharedPreferences b;
  public final azo c;
  
  private ws()
  {
    this(new azo());
  }
  
  private ws(azo paramazo)
  {
    c = paramazo;
  }
  
  @cgc
  private static aue a(@cgb String paramString)
  {
    paramString = paramString.split("x");
    if (paramString.length != 2) {
      return null;
    }
    try
    {
      paramString = new aue(Integer.parseInt(paramString[0]), Integer.parseInt(paramString[1]));
      return paramString;
    }
    catch (NumberFormatException paramString) {}
    return null;
  }
  
  public static String a(Set<aue> paramSet)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    paramSet = paramSet.iterator();
    while (paramSet.hasNext())
    {
      aue localaue = (aue)paramSet.next();
      if (localaue != null) {
        localStringBuilder.append(localaue.a()).append("x").append(localaue.b()).append(",");
      }
    }
    return localStringBuilder.toString();
  }
  
  public static ws a()
  {
    return d;
  }
  
  public final void a(Context paramContext)
  {
    paramContext = PreferenceManager.getDefaultSharedPreferences(paramContext);
    b = paramContext;
    if (paramContext != null)
    {
      Object localObject1 = paramContext.getString(SharedPreferenceKey.VIDEO_ENCODING_RESOLUTIONS.getKey(), "");
      paramContext = new ArrayList();
      localObject1 = new StringTokenizer((String)localObject1, ",");
      while (((StringTokenizer)localObject1).hasMoreTokens())
      {
        Object localObject2 = ((StringTokenizer)localObject1).nextToken();
        if (!((String)localObject2).isEmpty())
        {
          localObject2 = a((String)localObject2);
          if (localObject2 != null) {
            paramContext.add(localObject2);
          }
        }
      }
      a.addAll(paramContext);
    }
  }
}

/* Location:
 * Qualified Name:     ws
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */