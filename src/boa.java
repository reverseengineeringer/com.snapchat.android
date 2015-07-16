import java.net.Proxy;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.TreeMap;
import java.util.TreeSet;

public final class boa
{
  static final String a = bno.b();
  public static final String b = a + "-Sent-Millis";
  public static final String c = a + "-Received-Millis";
  public static final String d = a + "-Selected-Protocol";
  private static final Comparator<String> e = new Comparator() {};
  
  static
  {
    bno.a();
  }
  
  public static long a(bmv parambmv)
  {
    return b(parambmv.a("Content-Length"));
  }
  
  public static long a(bnb parambnb)
  {
    return a(c);
  }
  
  public static long a(bnd parambnd)
  {
    return a(f);
  }
  
  public static bnb a(bmi parambmi, bnd parambnd, Proxy paramProxy)
  {
    if (c == 407) {
      return parambmi.b(paramProxy, parambnd);
    }
    return parambmi.a(paramProxy, parambnd);
  }
  
  public static List<bmn> a(bmv parambmv, String paramString)
  {
    ArrayList localArrayList = new ArrayList();
    int k = a.length / 2;
    int i = 0;
    while (i < k)
    {
      if (paramString.equalsIgnoreCase(parambmv.a(i)))
      {
        String str1 = parambmv.b(i);
        int j = 0;
        while (j < str1.length())
        {
          int m = bnu.a(str1, j, " ");
          String str2 = str1.substring(j, m).trim();
          j = bnu.a(str1, m);
          if (!str1.regionMatches(true, j, "realm=\"", 0, 7)) {
            break;
          }
          j += 7;
          m = bnu.a(str1, j, "\"");
          String str3 = str1.substring(j, m);
          j = bnu.a(str1, bnu.a(str1, m + 1, ",") + 1);
          localArrayList.add(new bmn(str2, str3));
        }
      }
      i += 1;
    }
    return localArrayList;
  }
  
  public static void a(bnb.a parama, Map<String, List<String>> paramMap)
  {
    Iterator localIterator = paramMap.entrySet().iterator();
    while (localIterator.hasNext())
    {
      paramMap = (Map.Entry)localIterator.next();
      String str = (String)paramMap.getKey();
      if ((("Cookie".equalsIgnoreCase(str)) || ("Cookie2".equalsIgnoreCase(str))) && (!((List)paramMap.getValue()).isEmpty()))
      {
        paramMap = (List)paramMap.getValue();
        if (paramMap.size() == 1) {}
        StringBuilder localStringBuilder;
        for (paramMap = (String)paramMap.get(0);; paramMap = localStringBuilder.toString())
        {
          d.a(str, paramMap);
          break;
          localStringBuilder = new StringBuilder();
          int j = paramMap.size();
          int i = 0;
          while (i < j)
          {
            if (i > 0) {
              localStringBuilder.append("; ");
            }
            localStringBuilder.append((String)paramMap.get(i));
            i += 1;
          }
        }
      }
    }
  }
  
  public static boolean a(bnd parambnd, bmv parambmv, bnb parambnb)
  {
    parambnd = d(parambnd).iterator();
    while (parambnd.hasNext())
    {
      String str = (String)parambnd.next();
      if (!bnq.a(parambmv.c(str), c.c(str))) {
        return false;
      }
    }
    return true;
  }
  
  static boolean a(String paramString)
  {
    return (!"Connection".equalsIgnoreCase(paramString)) && (!"Keep-Alive".equalsIgnoreCase(paramString)) && (!"Proxy-Authenticate".equalsIgnoreCase(paramString)) && (!"Proxy-Authorization".equalsIgnoreCase(paramString)) && (!"TE".equalsIgnoreCase(paramString)) && (!"Trailers".equalsIgnoreCase(paramString)) && (!"Transfer-Encoding".equalsIgnoreCase(paramString)) && (!"Upgrade".equalsIgnoreCase(paramString));
  }
  
  private static long b(String paramString)
  {
    if (paramString == null) {
      return -1L;
    }
    try
    {
      long l = Long.parseLong(paramString);
      return l;
    }
    catch (NumberFormatException paramString) {}
    return -1L;
  }
  
  public static Map<String, List<String>> b(bmv parambmv)
  {
    TreeMap localTreeMap = new TreeMap(e);
    int j = a.length / 2;
    int i = 0;
    while (i < j)
    {
      String str1 = parambmv.a(i);
      String str2 = parambmv.b(i);
      ArrayList localArrayList = new ArrayList();
      List localList = (List)localTreeMap.get(str1);
      if (localList != null) {
        localArrayList.addAll(localList);
      }
      localArrayList.add(str2);
      localTreeMap.put(str1, Collections.unmodifiableList(localArrayList));
      i += 1;
    }
    return Collections.unmodifiableMap(localTreeMap);
  }
  
  public static boolean b(bnd parambnd)
  {
    return d(parambnd).contains("*");
  }
  
  public static bmv c(bnd parambnd)
  {
    Set localSet = d(parambnd);
    if (localSet.isEmpty()) {
      return new bmv.a().a();
    }
    parambnd = h.a.c;
    bmv.a locala = new bmv.a();
    int i = 0;
    int j = a.length / 2;
    while (i < j)
    {
      String str = parambnd.a(i);
      if (localSet.contains(str)) {
        locala.a(str, parambnd.b(i));
      }
      i += 1;
    }
    return locala.a();
  }
  
  private static Set<String> d(bnd parambnd)
  {
    Object localObject1 = Collections.emptySet();
    bmv localbmv = f;
    int k = a.length / 2;
    int i = 0;
    while (i < k)
    {
      Object localObject2 = localObject1;
      if ("Vary".equalsIgnoreCase(localbmv.a(i)))
      {
        localObject2 = localbmv.b(i);
        parambnd = (bnd)localObject1;
        if (((Set)localObject1).isEmpty()) {
          parambnd = new TreeSet(String.CASE_INSENSITIVE_ORDER);
        }
        localObject1 = ((String)localObject2).split(",");
        int m = localObject1.length;
        int j = 0;
        for (;;)
        {
          localObject2 = parambnd;
          if (j >= m) {
            break;
          }
          parambnd.add(localObject1[j].trim());
          j += 1;
        }
      }
      i += 1;
      localObject1 = localObject2;
    }
    return (Set<String>)localObject1;
  }
}

/* Location:
 * Qualified Name:     boa
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */