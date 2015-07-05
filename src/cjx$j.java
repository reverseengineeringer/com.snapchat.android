import java.util.Iterator;
import java.util.Locale;
import java.util.Set;

 enum cjx$j
  implements cjy, cka
{
  static final Set<String> b;
  static final int c;
  
  static
  {
    b = cgk.b();
    Iterator localIterator = b.iterator();
    for (int i = 0; localIterator.hasNext(); i = Math.max(i, ((String)localIterator.next()).length())) {}
    c = i;
  }
  
  private cjx$j() {}
  
  public final int a()
  {
    return c;
  }
  
  public final int a(cjz paramcjz, String paramString, int paramInt)
  {
    String str3 = paramString.substring(paramInt);
    paramString = null;
    Iterator localIterator = b.iterator();
    String str2;
    if (localIterator.hasNext())
    {
      str2 = (String)localIterator.next();
      if (!str3.startsWith(str2)) {
        break label104;
      }
      str1 = str2;
      if (paramString != null) {
        if (str2.length() <= paramString.length()) {
          break label104;
        }
      }
    }
    label104:
    for (String str1 = str2;; str1 = paramString)
    {
      paramString = str1;
      break;
      if (paramString != null)
      {
        paramcjz.a(cgk.a(paramString));
        return paramString.length() + paramInt;
      }
      return paramInt ^ 0xFFFFFFFF;
    }
  }
  
  public final void a(StringBuffer paramStringBuffer, long paramLong, cgf paramcgf, int paramInt, cgk paramcgk, Locale paramLocale)
  {
    if (paramcgk != null) {}
    for (paramcgf = c;; paramcgf = "")
    {
      paramStringBuffer.append(paramcgf);
      return;
    }
  }
  
  public final void a(StringBuffer paramStringBuffer, chb paramchb, Locale paramLocale) {}
  
  public final int b()
  {
    return c;
  }
}

/* Location:
 * Qualified Name:     cjx.j
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */