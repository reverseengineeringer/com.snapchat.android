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

public final class bmz
{
  static final String a = bmn.b();
  public static final String b = a + "-Sent-Millis";
  public static final String c = a + "-Received-Millis";
  public static final String d = a + "-Selected-Protocol";
  private static final Comparator<String> e = new Comparator() {};
  
  static
  {
    bmn.a();
  }
  
  public static long a(blu paramblu)
  {
    return b(paramblu.a("Content-Length"));
  }
  
  public static long a(bma parambma)
  {
    return a(c);
  }
  
  public static long a(bmc parambmc)
  {
    return a(f);
  }
  
  public static bma a(blh paramblh, bmc parambmc, Proxy paramProxy)
  {
    if (c == 407) {
      return paramblh.b(paramProxy, parambmc);
    }
    return paramblh.a(paramProxy, parambmc);
  }
  
  public static List<blm> a(blu paramblu, String paramString)
  {
    ArrayList localArrayList = new ArrayList();
    int k = a.length / 2;
    int i = 0;
    while (i < k)
    {
      if (paramString.equalsIgnoreCase(paramblu.a(i)))
      {
        String str1 = paramblu.b(i);
        int j = 0;
        while (j < str1.length())
        {
          int m = bmt.a(str1, j, " ");
          String str2 = str1.substring(j, m).trim();
          j = bmt.a(str1, m);
          if (!str1.regionMatches(true, j, "realm=\"", 0, 7)) {
            break;
          }
          j += 7;
          m = bmt.a(str1, j, "\"");
          String str3 = str1.substring(j, m);
          j = bmt.a(str1, bmt.a(str1, m + 1, ",") + 1);
          localArrayList.add(new blm(str2, str3));
        }
      }
      i += 1;
    }
    return localArrayList;
  }
  
  public static void a(bma.a parama, Map<String, List<String>> paramMap)
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
  
  public static boolean a(bmc parambmc, blu paramblu, bma parambma)
  {
    parambmc = d(parambmc).iterator();
    while (parambmc.hasNext())
    {
      String str = (String)parambmc.next();
      if (!bmp.a(paramblu.c(str), c.c(str))) {
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
  
  public static Map<String, List<String>> b(blu paramblu)
  {
    TreeMap localTreeMap = new TreeMap(e);
    int j = a.length / 2;
    int i = 0;
    while (i < j)
    {
      String str1 = paramblu.a(i);
      String str2 = paramblu.b(i);
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
  
  public static boolean b(bmc parambmc)
  {
    return d(parambmc).contains("*");
  }
  
  public static blu c(bmc parambmc)
  {
    Set localSet = d(parambmc);
    if (localSet.isEmpty()) {
      return new blu.a().a();
    }
    parambmc = h.a.c;
    blu.a locala = new blu.a();
    int i = 0;
    int j = a.length / 2;
    while (i < j)
    {
      String str = parambmc.a(i);
      if (localSet.contains(str)) {
        locala.a(str, parambmc.b(i));
      }
      i += 1;
    }
    return locala.a();
  }
  
  private static Set<String> d(bmc parambmc)
  {
    Object localObject1 = Collections.emptySet();
    blu localblu = f;
    int k = a.length / 2;
    int i = 0;
    while (i < k)
    {
      Object localObject2 = localObject1;
      if ("Vary".equalsIgnoreCase(localblu.a(i)))
      {
        localObject2 = localblu.b(i);
        parambmc = (bmc)localObject1;
        if (((Set)localObject1).isEmpty()) {
          parambmc = new TreeSet(String.CASE_INSENSITIVE_ORDER);
        }
        localObject1 = ((String)localObject2).split(",");
        int m = localObject1.length;
        int j = 0;
        for (;;)
        {
          localObject2 = parambmc;
          if (j >= m) {
            break;
          }
          parambmc.add(localObject1[j].trim());
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
 * Qualified Name:     bmz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */