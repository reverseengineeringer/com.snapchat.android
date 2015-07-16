import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
import android.preference.PreferenceManager;
import com.snapchat.android.database.SharedPreferenceKey;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.StringTokenizer;

public final class xv
{
  private static final xv d = new xv();
  private static final Map<String, List<avc>> e;
  public final Set<avc> a = new HashSet();
  @chd
  public SharedPreferences b;
  public final ban c;
  
  static
  {
    HashMap localHashMap = new HashMap();
    int i = 0;
    while (i < 8)
    {
      String str = new String[] { "XT1080", "XT1056", "XT1058", "XT1052", "XT1053", "XT1055", "XT1050", "XT1060" }[i];
      localHashMap.put(str, Arrays.asList(new avc[] { new avc(852, 480) }));
      localHashMap.put(str, Arrays.asList(new avc[] { new avc(788, 480) }));
      i += 1;
    }
    e = Collections.unmodifiableMap(localHashMap);
  }
  
  private xv()
  {
    this(new ban());
  }
  
  private xv(ban paramban)
  {
    c = paramban;
  }
  
  @chd
  private static avc a(@chc String paramString)
  {
    paramString = paramString.split("x");
    if (paramString.length != 2) {
      return null;
    }
    try
    {
      paramString = new avc(Integer.parseInt(paramString[0]), Integer.parseInt(paramString[1]));
      return paramString;
    }
    catch (NumberFormatException paramString) {}
    return null;
  }
  
  public static xv a()
  {
    return d;
  }
  
  public static void a(Set<avc> paramSet)
  {
    List localList = (List)e.get(Build.MODEL);
    if (localList != null) {
      paramSet.removeAll(localList);
    }
  }
  
  public static String b(Set<avc> paramSet)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    paramSet = paramSet.iterator();
    while (paramSet.hasNext())
    {
      avc localavc = (avc)paramSet.next();
      if (localavc != null) {
        localStringBuilder.append(localavc.a()).append("x").append(localavc.b()).append(",");
      }
    }
    return localStringBuilder.toString();
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
      a(a);
    }
  }
}

/* Location:
 * Qualified Name:     xv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */