import java.lang.ref.WeakReference;
import java.text.DateFormatSymbols;
import java.util.Locale;
import java.util.TreeMap;
import java.util.WeakHashMap;

final class ciz
{
  private static final ciz[] n = new ciz[64];
  private static WeakHashMap<Locale, ciz> o = new WeakHashMap();
  final String[] a;
  final String[] b;
  final String[] c;
  final String[] d;
  final String[] e;
  final String[] f;
  final TreeMap<String, Integer> g;
  final TreeMap<String, Integer> h;
  final TreeMap<String, Integer> i;
  final int j;
  final int k;
  final int l;
  final int m;
  private final WeakReference<Locale> p;
  private final int q;
  private final int r;
  
  private ciz(Locale paramLocale)
  {
    p = new WeakReference(paramLocale);
    Object localObject = chk.a(paramLocale);
    a = ((DateFormatSymbols)localObject).getEras();
    b = b(((DateFormatSymbols)localObject).getWeekdays());
    c = b(((DateFormatSymbols)localObject).getShortWeekdays());
    d = a(((DateFormatSymbols)localObject).getMonths());
    e = a(((DateFormatSymbols)localObject).getShortMonths());
    f = ((DateFormatSymbols)localObject).getAmPmStrings();
    localObject = new Integer[13];
    int i1 = 0;
    while (i1 < 13)
    {
      localObject[i1] = Integer.valueOf(i1);
      i1 += 1;
    }
    g = new TreeMap(String.CASE_INSENSITIVE_ORDER);
    a(g, a, (Integer[])localObject);
    if ("en".equals(paramLocale.getLanguage()))
    {
      g.put("BCE", localObject[0]);
      g.put("CE", localObject[1]);
    }
    h = new TreeMap(String.CASE_INSENSITIVE_ORDER);
    a(h, b, (Integer[])localObject);
    a(h, c, (Integer[])localObject);
    a(h, 7, (Integer[])localObject);
    i = new TreeMap(String.CASE_INSENSITIVE_ORDER);
    a(i, d, (Integer[])localObject);
    a(i, e, (Integer[])localObject);
    a(i, 12, (Integer[])localObject);
    j = c(a);
    k = c(b);
    q = c(c);
    l = c(d);
    r = c(e);
    m = c(f);
  }
  
  public static ciz a(Locale paramLocale)
  {
    Locale localLocale = paramLocale;
    if (paramLocale == null) {
      localLocale = Locale.getDefault();
    }
    int i1 = System.identityHashCode(localLocale) & 0x3F;
    paramLocale = n[i1];
    if ((paramLocale != null) && (p.get() == localLocale)) {
      return paramLocale;
    }
    synchronized (o)
    {
      ciz localciz = (ciz)o.get(localLocale);
      paramLocale = localciz;
      if (localciz == null)
      {
        paramLocale = new ciz(localLocale);
        o.put(localLocale, paramLocale);
      }
      n[i1] = paramLocale;
      return paramLocale;
    }
  }
  
  private static void a(TreeMap<String, Integer> paramTreeMap, int paramInt, Integer[] paramArrayOfInteger)
  {
    int i1 = 1;
    while (i1 <= paramInt)
    {
      paramTreeMap.put(String.valueOf(i1).intern(), paramArrayOfInteger[i1]);
      i1 += 1;
    }
  }
  
  private static void a(TreeMap<String, Integer> paramTreeMap, String[] paramArrayOfString, Integer[] paramArrayOfInteger)
  {
    int i1 = paramArrayOfString.length;
    for (;;)
    {
      int i2 = i1 - 1;
      if (i2 < 0) {
        break;
      }
      String str = paramArrayOfString[i2];
      i1 = i2;
      if (str != null)
      {
        paramTreeMap.put(str, paramArrayOfInteger[i2]);
        i1 = i2;
      }
    }
  }
  
  private static String[] a(String[] paramArrayOfString)
  {
    String[] arrayOfString = new String[13];
    int i1 = 1;
    while (i1 < 13)
    {
      arrayOfString[i1] = paramArrayOfString[(i1 - 1)];
      i1 += 1;
    }
    return arrayOfString;
  }
  
  private static String[] b(String[] paramArrayOfString)
  {
    String[] arrayOfString = new String[8];
    int i1 = 1;
    if (i1 < 8)
    {
      if (i1 < 7) {}
      for (int i2 = i1 + 1;; i2 = 1)
      {
        arrayOfString[i1] = paramArrayOfString[i2];
        i1 += 1;
        break;
      }
    }
    return arrayOfString;
  }
  
  private static int c(String[] paramArrayOfString)
  {
    int i1 = 0;
    int i2 = paramArrayOfString.length;
    i2 -= 1;
    if (i2 >= 0)
    {
      String str = paramArrayOfString[i2];
      if (str == null) {
        break label41;
      }
      int i3 = str.length();
      if (i3 <= i1) {
        break label41;
      }
      i1 = i3;
    }
    label41:
    for (;;)
    {
      break;
      return i1;
    }
  }
}

/* Location:
 * Qualified Name:     ciz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */