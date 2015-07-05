import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

final class cjx$b
  implements cjy, cka
{
  final cka[] a;
  final cjy[] b;
  private final int c;
  private final int d;
  
  cjx$b(List<Object> paramList)
  {
    ArrayList localArrayList2 = new ArrayList();
    ArrayList localArrayList1 = new ArrayList();
    a(paramList, localArrayList2, localArrayList1);
    if ((localArrayList2.contains(null)) || (localArrayList2.isEmpty())) {
      a = null;
    }
    for (c = 0; (localArrayList1.contains(null)) || (localArrayList1.isEmpty()); c = j)
    {
      b = null;
      d = 0;
      return;
      m = localArrayList2.size();
      a = new cka[m];
      i = 0;
      j = 0;
      while (i < m)
      {
        paramList = (cka)localArrayList2.get(i);
        j += paramList.a();
        a[i] = paramList;
        i += 1;
      }
    }
    int m = localArrayList1.size();
    b = new cjy[m];
    int j = 0;
    int i = k;
    while (i < m)
    {
      paramList = (cjy)localArrayList1.get(i);
      j += paramList.b();
      b[i] = paramList;
      i += 1;
    }
    d = j;
  }
  
  private static void a(List<Object> paramList1, List<Object> paramList2, List<Object> paramList3)
  {
    int j = paramList1.size();
    int i = 0;
    if (i < j)
    {
      Object localObject = paramList1.get(i);
      if ((localObject instanceof b))
      {
        a(paramList2, a);
        label45:
        localObject = paramList1.get(i + 1);
        if (!(localObject instanceof b)) {
          break label95;
        }
        a(paramList3, b);
      }
      for (;;)
      {
        i += 2;
        break;
        paramList2.add(localObject);
        break label45;
        label95:
        paramList3.add(localObject);
      }
    }
  }
  
  private static void a(List<Object> paramList, Object[] paramArrayOfObject)
  {
    if (paramArrayOfObject != null)
    {
      int i = 0;
      while (i < paramArrayOfObject.length)
      {
        paramList.add(paramArrayOfObject[i]);
        i += 1;
      }
    }
  }
  
  public final int a()
  {
    return c;
  }
  
  public final int a(cjz paramcjz, String paramString, int paramInt)
  {
    cjy[] arrayOfcjy = b;
    if (arrayOfcjy == null) {
      throw new UnsupportedOperationException();
    }
    int k = arrayOfcjy.length;
    int j = 0;
    int i = paramInt;
    paramInt = j;
    while ((paramInt < k) && (i >= 0))
    {
      i = arrayOfcjy[paramInt].a(paramcjz, paramString, i);
      paramInt += 1;
    }
    return i;
  }
  
  public final void a(StringBuffer paramStringBuffer, long paramLong, cgf paramcgf, int paramInt, cgk paramcgk, Locale paramLocale)
  {
    cka[] arrayOfcka = a;
    if (arrayOfcka == null) {
      throw new UnsupportedOperationException();
    }
    if (paramLocale == null) {
      paramLocale = Locale.getDefault();
    }
    for (;;)
    {
      int j = arrayOfcka.length;
      int i = 0;
      while (i < j)
      {
        arrayOfcka[i].a(paramStringBuffer, paramLong, paramcgf, paramInt, paramcgk, paramLocale);
        i += 1;
      }
      return;
    }
  }
  
  public final void a(StringBuffer paramStringBuffer, chb paramchb, Locale paramLocale)
  {
    cka[] arrayOfcka = a;
    if (arrayOfcka == null) {
      throw new UnsupportedOperationException();
    }
    Locale localLocale = paramLocale;
    if (paramLocale == null) {
      localLocale = Locale.getDefault();
    }
    int j = arrayOfcka.length;
    int i = 0;
    while (i < j)
    {
      arrayOfcka[i].a(paramStringBuffer, paramchb, localLocale);
      i += 1;
    }
  }
  
  public final int b()
  {
    return d;
  }
}

/* Location:
 * Qualified Name:     cjx.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */