import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;

public final class cjx
{
  private ArrayList<Object> a = new ArrayList();
  private Object b;
  
  static void a(StringBuffer paramStringBuffer, int paramInt)
  {
    for (;;)
    {
      paramInt -= 1;
      if (paramInt < 0) {
        break;
      }
      paramStringBuffer.append(65533);
    }
  }
  
  private static boolean b(Object paramObject)
  {
    if ((paramObject instanceof cjy)) {
      return (!(paramObject instanceof cjx.b)) || (b != null);
    }
    return false;
  }
  
  private cjx c(cgi paramcgi, int paramInt1, int paramInt2)
  {
    if (paramcgi == null) {
      throw new IllegalArgumentException("Field type must not be null");
    }
    int i = paramInt2;
    if (paramInt2 < paramInt1) {
      i = paramInt1;
    }
    if ((paramInt1 < 0) || (i <= 0)) {
      throw new IllegalArgumentException();
    }
    return a(new cjx.d(paramcgi, paramInt1, i));
  }
  
  private static void c(cjy paramcjy)
  {
    if (paramcjy == null) {
      throw new IllegalArgumentException("No parser supplied");
    }
  }
  
  private Object e()
  {
    Object localObject2 = b;
    Object localObject1 = localObject2;
    Object localObject3;
    Object localObject4;
    if (localObject2 == null)
    {
      localObject1 = localObject2;
      if (a.size() == 2)
      {
        localObject3 = a.get(0);
        localObject4 = a.get(1);
        if (localObject3 == null) {
          break label89;
        }
        if (localObject3 != localObject4)
        {
          localObject1 = localObject2;
          if (localObject4 != null) {
            break label62;
          }
        }
      }
    }
    label62:
    label89:
    for (localObject1 = localObject3;; localObject1 = localObject4)
    {
      localObject2 = localObject1;
      if (localObject1 == null) {
        localObject2 = new cjx.b(a);
      }
      b = localObject2;
      localObject1 = localObject2;
      return localObject1;
    }
  }
  
  public final cjw a()
  {
    Object localObject = e();
    int i;
    if ((localObject instanceof cka)) {
      if ((localObject instanceof cjx.b)) {
        if (a != null)
        {
          i = 1;
          if (i == 0) {
            break label100;
          }
        }
      }
    }
    label100:
    for (cka localcka = (cka)localObject;; localcka = null)
    {
      if (b(localObject)) {}
      for (localObject = (cjy)localObject;; localObject = null)
      {
        if ((localcka != null) || (localObject != null))
        {
          return new cjw(localcka, (cjy)localObject);
          i = 0;
          break;
          i = 1;
          break;
          i = 0;
          break;
        }
        throw new UnsupportedOperationException("Both printing and parsing not supported");
      }
    }
  }
  
  public final cjx a(char paramChar)
  {
    return a(new cjx.a(paramChar));
  }
  
  public final cjx a(int paramInt)
  {
    return a(cgi.c(), paramInt, 2);
  }
  
  public final cjx a(int paramInt1, int paramInt2)
  {
    return c(cgi.d(), paramInt1, paramInt2);
  }
  
  public final cjx a(cgi paramcgi)
  {
    if (paramcgi == null) {
      throw new IllegalArgumentException("Field type must not be null");
    }
    return a(new cjx.i(paramcgi, false));
  }
  
  public final cjx a(cgi paramcgi, int paramInt)
  {
    if (paramcgi == null) {
      throw new IllegalArgumentException("Field type must not be null");
    }
    if (paramInt <= 0) {
      throw new IllegalArgumentException("Illegal number of digits: " + paramInt);
    }
    return a(new cjx.c(paramcgi, paramInt));
  }
  
  public final cjx a(cgi paramcgi, int paramInt1, int paramInt2)
  {
    if (paramcgi == null) {
      throw new IllegalArgumentException("Field type must not be null");
    }
    int i = paramInt2;
    if (paramInt2 < paramInt1) {
      i = paramInt1;
    }
    if ((paramInt1 < 0) || (i <= 0)) {
      throw new IllegalArgumentException();
    }
    if (paramInt1 <= 1) {
      return a(new cjx.n(paramcgi, i, false));
    }
    return a(new cjx.g(paramcgi, i, false, paramInt1));
  }
  
  public final cjx a(cjw paramcjw)
  {
    if (paramcjw == null) {
      throw new IllegalArgumentException("No formatter supplied");
    }
    return a(a, b);
  }
  
  public final cjx a(cjy paramcjy)
  {
    c(paramcjy);
    return a(null, paramcjy);
  }
  
  final cjx a(cka paramcka, cjy paramcjy)
  {
    b = null;
    a.add(paramcka);
    a.add(paramcjy);
    return this;
  }
  
  final cjx a(Object paramObject)
  {
    b = null;
    a.add(paramObject);
    a.add(paramObject);
    return this;
  }
  
  public final cjx a(String paramString)
  {
    cjx localcjx = this;
    switch (paramString.length())
    {
    default: 
      localcjx = a(new cjx.h(paramString));
    case 0: 
      return localcjx;
    }
    return a(new cjx.a(paramString.charAt(0)));
  }
  
  public final cjx a(String paramString, boolean paramBoolean)
  {
    return a(new cjx.l(null, paramString, paramBoolean, 2));
  }
  
  public final cjx a(String paramString, boolean paramBoolean, int paramInt)
  {
    return a(new cjx.l(paramString, paramString, paramBoolean, paramInt));
  }
  
  public final cjx a(cjy[] paramArrayOfcjy)
  {
    int i = 0;
    int j = paramArrayOfcjy.length;
    if (j == 1)
    {
      if (paramArrayOfcjy[0] == null) {
        throw new IllegalArgumentException("No parser supplied");
      }
      return a(null, paramArrayOfcjy[0]);
    }
    cjy[] arrayOfcjy = new cjy[j];
    while (i < j - 1)
    {
      cjy localcjy = paramArrayOfcjy[i];
      arrayOfcjy[i] = localcjy;
      if (localcjy == null) {
        throw new IllegalArgumentException("Incomplete parser array");
      }
      i += 1;
    }
    arrayOfcjy[i] = paramArrayOfcjy[i];
    return a(null, new cjx.e(arrayOfcjy));
  }
  
  public final cjx b(int paramInt)
  {
    return a(cgi.e(), paramInt, 2);
  }
  
  public final cjx b(int paramInt1, int paramInt2)
  {
    return b(cgi.p(), paramInt1, paramInt2);
  }
  
  public final cjx b(cgi paramcgi)
  {
    if (paramcgi == null) {
      throw new IllegalArgumentException("Field type must not be null");
    }
    return a(new cjx.i(paramcgi, true));
  }
  
  public final cjx b(cgi paramcgi, int paramInt1, int paramInt2)
  {
    if (paramcgi == null) {
      throw new IllegalArgumentException("Field type must not be null");
    }
    int i = paramInt2;
    if (paramInt2 < paramInt1) {
      i = paramInt1;
    }
    if ((paramInt1 < 0) || (i <= 0)) {
      throw new IllegalArgumentException();
    }
    if (paramInt1 <= 1) {
      return a(new cjx.n(paramcgi, i, true));
    }
    return a(new cjx.g(paramcgi, i, true, paramInt1));
  }
  
  public final cjx b(cjy paramcjy)
  {
    c(paramcjy);
    return a(null, new cjx.e(new cjy[] { paramcjy, null }));
  }
  
  public final cjy b()
  {
    Object localObject = e();
    if (b(localObject)) {
      return (cjy)localObject;
    }
    throw new UnsupportedOperationException("Parsing is not supported");
  }
  
  public final cjx c()
  {
    return c(cgi.f(), 1, 9);
  }
  
  public final cjx c(int paramInt)
  {
    return a(cgi.g(), paramInt, 2);
  }
  
  public final cjx c(int paramInt1, int paramInt2)
  {
    return b(cgi.s(), paramInt1, paramInt2);
  }
  
  public final cjx d()
  {
    return c(cgi.g(), 1, 9);
  }
  
  public final cjx d(int paramInt)
  {
    return a(cgi.l(), paramInt, 1);
  }
  
  public final cjx e(int paramInt)
  {
    return a(cgi.m(), paramInt, 2);
  }
  
  public final cjx f(int paramInt)
  {
    return a(cgi.n(), paramInt, 3);
  }
  
  public final cjx g(int paramInt)
  {
    return a(cgi.o(), paramInt, 2);
  }
  
  public final cjx h(int paramInt)
  {
    return a(cgi.r(), paramInt, 2);
  }
  
  static final class a
    implements cjy, cka
  {
    private final char a;
    
    a(char paramChar)
    {
      a = paramChar;
    }
    
    public final int a()
    {
      return 1;
    }
    
    public final int a(cjz paramcjz, String paramString, int paramInt)
    {
      if (paramInt >= paramString.length()) {
        return paramInt ^ 0xFFFFFFFF;
      }
      char c2 = paramString.charAt(paramInt);
      char c1 = a;
      if (c2 != c1)
      {
        c2 = Character.toUpperCase(c2);
        c1 = Character.toUpperCase(c1);
        if ((c2 != c1) && (Character.toLowerCase(c2) != Character.toLowerCase(c1))) {
          return paramInt ^ 0xFFFFFFFF;
        }
      }
      return paramInt + 1;
    }
    
    public final void a(StringBuffer paramStringBuffer, long paramLong, cgf paramcgf, int paramInt, cgk paramcgk, Locale paramLocale)
    {
      paramStringBuffer.append(a);
    }
    
    public final void a(StringBuffer paramStringBuffer, chb paramchb, Locale paramLocale)
    {
      paramStringBuffer.append(a);
    }
    
    public final int b()
    {
      return 1;
    }
  }
  
  static final class b
    implements cjy, cka
  {
    final cka[] a;
    final cjy[] b;
    private final int c;
    private final int d;
    
    b(List<Object> paramList)
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
  
  static final class c
    extends cjx.g
  {
    protected c(cgi paramcgi, int paramInt)
    {
      super(paramInt, false, paramInt);
    }
    
    public final int a(cjz paramcjz, String paramString, int paramInt)
    {
      int k = super.a(paramcjz, paramString, paramInt);
      if (k < 0) {}
      int i;
      do
      {
        int j;
        do
        {
          return k;
          j = b + paramInt;
        } while (k == j);
        i = j;
        if (c)
        {
          paramInt = paramString.charAt(paramInt);
          if (paramInt != 45)
          {
            i = j;
            if (paramInt != 43) {}
          }
          else
          {
            i = j + 1;
          }
        }
        if (k > i) {
          return i + 1 ^ 0xFFFFFFFF;
        }
      } while (k >= i);
      return k ^ 0xFFFFFFFF;
    }
  }
  
  static final class d
    implements cjy, cka
  {
    protected int a;
    protected int b;
    private final cgi c;
    
    protected d(cgi paramcgi, int paramInt1, int paramInt2)
    {
      c = paramcgi;
      int i = paramInt2;
      if (paramInt2 > 18) {
        i = 18;
      }
      a = paramInt1;
      b = i;
    }
    
    private void a(StringBuffer paramStringBuffer, long paramLong, cgf paramcgf)
    {
      paramcgf = c.a(paramcgf);
      int i = a;
      label116:
      label369:
      label486:
      do
      {
        for (;;)
        {
          long l2;
          int j;
          try
          {
            l2 = paramcgf.i(paramLong);
            if (l2 != 0L) {
              break label116;
            }
            j = i;
            if (paramStringBuffer != null)
            {
              i -= 1;
              if (i >= 0)
              {
                paramStringBuffer.append('0');
                continue;
              }
            }
            i = j - 1;
          }
          catch (RuntimeException paramcgf)
          {
            j = i;
            if (paramStringBuffer != null)
            {
              cjx.a(paramStringBuffer, i);
              return;
            }
            i = j - 1;
            if (i < 0) {
              continue;
            }
            throw new NullPointerException();
          }
          if (i >= 0)
          {
            throw new NullPointerException();
            long l1 = paramcgf.d().d();
            j = b;
            switch (j)
            {
            default: 
              paramLong = 1L;
            }
            for (;;)
            {
              if (l1 * paramLong / paramLong == l1) {
                break label369;
              }
              j -= 1;
              break;
              paramLong = 10L;
              continue;
              paramLong = 100L;
              continue;
              paramLong = 1000L;
              continue;
              paramLong = 10000L;
              continue;
              paramLong = 100000L;
              continue;
              paramLong = 1000000L;
              continue;
              paramLong = 10000000L;
              continue;
              paramLong = 100000000L;
              continue;
              paramLong = 1000000000L;
              continue;
              paramLong = 10000000000L;
              continue;
              paramLong = 100000000000L;
              continue;
              paramLong = 1000000000000L;
              continue;
              paramLong = 10000000000000L;
              continue;
              paramLong = 100000000000000L;
              continue;
              paramLong = 1000000000000000L;
              continue;
              paramLong = 10000000000000000L;
              continue;
              paramLong = 100000000000000000L;
              continue;
              paramLong = 1000000000000000000L;
            }
            paramcgf = new long[2];
            paramcgf[0] = (paramLong * l2 / l1);
            paramcgf[1] = j;
            paramLong = paramcgf[0];
            int k = (int)paramcgf[1];
            if ((0x7FFFFFFF & paramLong) == paramLong) {}
            int m;
            for (paramcgf = Integer.toString((int)paramLong);; paramcgf = Long.toString(paramLong))
            {
              m = paramcgf.length();
              j = i;
              i = k;
              for (;;)
              {
                if (m >= i) {
                  break label486;
                }
                if (paramStringBuffer == null) {
                  break;
                }
                paramStringBuffer.append('0');
                i -= 1;
                j -= 1;
              }
            }
            throw new NullPointerException();
            if (j >= i) {
              break label608;
            }
            k = i;
            i = m;
            while ((j < k) && (i > 1) && (paramcgf.charAt(i - 1) == '0'))
            {
              i -= 1;
              k -= 1;
            }
            if (i >= paramcgf.length()) {
              break label608;
            }
            if (paramStringBuffer == null) {
              break;
            }
            j = 0;
            while (j < i)
            {
              paramStringBuffer.append(paramcgf.charAt(j));
              j += 1;
            }
          }
        }
      } while (i >= 0);
      paramcgf.charAt(0);
      throw new NullPointerException();
      label608:
      if (paramStringBuffer != null)
      {
        paramStringBuffer.append(paramcgf);
        return;
      }
      throw new NullPointerException();
    }
    
    public final int a()
    {
      return b;
    }
    
    public final int a(cjz paramcjz, String paramString, int paramInt)
    {
      cgh localcgh = c.a(a);
      int j = Math.min(b, paramString.length() - paramInt);
      long l1 = 0L;
      long l2 = localcgh.d().d() * 10L;
      int i = 0;
      while (i < j)
      {
        int k = paramString.charAt(paramInt + i);
        if ((k < 48) || (k > 57)) {
          break;
        }
        i += 1;
        l2 /= 10L;
        l1 += (k - 48) * l2;
      }
      l1 /= 10L;
      if (i == 0) {
        return paramInt ^ 0xFFFFFFFF;
      }
      if (l1 > 2147483647L) {
        return paramInt ^ 0xFFFFFFFF;
      }
      paramcjz.a(new cjz.a(new cjl(cgi.a(), cjj.a, localcgh.d()), (int)l1));
      return i + paramInt;
    }
    
    public final void a(StringBuffer paramStringBuffer, long paramLong, cgf paramcgf, int paramInt, cgk paramcgk, Locale paramLocale)
    {
      try
      {
        a(paramStringBuffer, paramLong, paramcgf);
        return;
      }
      catch (IOException paramStringBuffer) {}
    }
    
    public final void a(StringBuffer paramStringBuffer, chb paramchb, Locale paramLocale)
    {
      long l = paramchb.b().a(paramchb, 0L);
      try
      {
        a(paramStringBuffer, l, paramchb.b());
        return;
      }
      catch (IOException paramStringBuffer) {}
    }
    
    public final int b()
    {
      return b;
    }
  }
  
  static final class e
    implements cjy
  {
    private final cjy[] a;
    private final int b;
    
    e(cjy[] paramArrayOfcjy)
    {
      a = paramArrayOfcjy;
      int i = 0;
      int j = paramArrayOfcjy.length;
      j -= 1;
      if (j >= 0)
      {
        cjy localcjy = paramArrayOfcjy[j];
        if (localcjy == null) {
          break label59;
        }
        int k = localcjy.b();
        if (k <= i) {
          break label59;
        }
        i = k;
      }
      label59:
      for (;;)
      {
        break;
        b = i;
        return;
      }
    }
    
    public final int a(cjz paramcjz, String paramString, int paramInt)
    {
      cjy[] arrayOfcjy = a;
      int n = arrayOfcjy.length;
      Object localObject2 = paramcjz.a();
      Object localObject1 = null;
      int k = 0;
      int j = paramInt;
      int i = paramInt;
      cjy localcjy;
      if (k < n)
      {
        localcjy = arrayOfcjy[k];
        if (localcjy == null) {
          if (i <= paramInt) {
            return paramInt;
          }
        }
      }
      for (k = 1;; k = 0)
      {
        int m;
        if ((i > paramInt) || ((i == paramInt) && (k != 0)))
        {
          if (localObject1 != null) {
            paramcjz.a(localObject1);
          }
          return i;
          m = localcjy.a(paramcjz, paramString, paramInt);
          if (m >= paramInt)
          {
            if (m <= i) {
              break label203;
            }
            if ((m >= paramString.length()) || (k + 1 >= n) || (arrayOfcjy[(k + 1)] == null)) {
              return m;
            }
            localObject1 = paramcjz.a();
            i = m;
          }
        }
        label203:
        for (;;)
        {
          paramcjz.a(localObject2);
          k += 1;
          break;
          if (m < 0)
          {
            m ^= 0xFFFFFFFF;
            if (m > j)
            {
              j = m;
              continue;
              return j ^ 0xFFFFFFFF;
            }
          }
        }
      }
    }
    
    public final int b()
    {
      return b;
    }
  }
  
  static abstract class f
    implements cjy, cka
  {
    protected final cgi a;
    protected final int b;
    protected final boolean c;
    
    f(cgi paramcgi, int paramInt, boolean paramBoolean)
    {
      a = paramcgi;
      b = paramInt;
      c = paramBoolean;
    }
    
    public int a(cjz paramcjz, String paramString, int paramInt)
    {
      int m = Math.min(b, paramString.length() - paramInt);
      int j = 0;
      int i = paramInt;
      int k = 0;
      paramInt = j;
      j = k;
      int n;
      for (;;)
      {
        k = paramInt;
        if (j >= m) {
          break;
        }
        n = paramString.charAt(i + j);
        if ((j == 0) && ((n == 45) || (n == 43)) && (c))
        {
          if (n == 45)
          {
            paramInt = 1;
            label87:
            k = paramInt;
            if (j + 1 >= m) {
              break;
            }
            n = paramString.charAt(i + j + 1);
            k = paramInt;
            if (n < 48) {
              break;
            }
            k = paramInt;
            if (n > 57) {
              break;
            }
            if (paramInt == 0) {
              break label166;
            }
            j += 1;
          }
          for (;;)
          {
            m = Math.min(m + 1, paramString.length() - i);
            break;
            paramInt = 0;
            break label87;
            label166:
            i += 1;
          }
        }
        k = paramInt;
        if (n < 48) {
          break;
        }
        k = paramInt;
        if (n > 57) {
          break;
        }
        j += 1;
      }
      if (j == 0) {
        return i ^ 0xFFFFFFFF;
      }
      if (j >= 9)
      {
        j = i + j;
        i = Integer.parseInt(paramString.substring(i, j));
        paramcjz.a(a, i);
        return j;
      }
      if (k != 0) {}
      for (paramInt = i + 1;; paramInt = i)
      {
        try
        {
          n = paramString.charAt(paramInt);
          m = i + j;
          j = n - 48;
          i = paramInt + 1;
          paramInt = j;
          while (i < m)
          {
            paramInt = (paramInt << 1) + (paramInt << 3) + paramString.charAt(i) - 48;
            i += 1;
          }
          i = paramInt;
        }
        catch (StringIndexOutOfBoundsException paramcjz)
        {
          return i ^ 0xFFFFFFFF;
        }
        j = m;
        if (k == 0) {
          break;
        }
        i = -paramInt;
        j = m;
        break;
      }
    }
    
    public final int b()
    {
      return b;
    }
  }
  
  static class g
    extends cjx.f
  {
    protected final int d;
    
    protected g(cgi paramcgi, int paramInt1, boolean paramBoolean, int paramInt2)
    {
      super(paramInt1, paramBoolean);
      d = paramInt2;
    }
    
    public final int a()
    {
      return b;
    }
    
    public final void a(StringBuffer paramStringBuffer, long paramLong, cgf paramcgf, int paramInt, cgk paramcgk, Locale paramLocale)
    {
      try
      {
        ckb.a(paramStringBuffer, a.a(paramcgf).a(paramLong), d);
        return;
      }
      catch (RuntimeException paramcgf)
      {
        cjx.a(paramStringBuffer, d);
      }
    }
    
    public final void a(StringBuffer paramStringBuffer, chb paramchb, Locale paramLocale)
    {
      if (paramchb.b(a)) {
        try
        {
          ckb.a(paramStringBuffer, paramchb.a(a), d);
          return;
        }
        catch (RuntimeException paramchb) {}
      }
      cjx.a(paramStringBuffer, d);
    }
  }
  
  static final class h
    implements cjy, cka
  {
    private final String a;
    
    h(String paramString)
    {
      a = paramString;
    }
    
    public final int a()
    {
      return a.length();
    }
    
    public final int a(cjz paramcjz, String paramString, int paramInt)
    {
      if (paramString.regionMatches(true, paramInt, a, 0, a.length())) {
        return a.length() + paramInt;
      }
      return paramInt ^ 0xFFFFFFFF;
    }
    
    public final void a(StringBuffer paramStringBuffer, long paramLong, cgf paramcgf, int paramInt, cgk paramcgk, Locale paramLocale)
    {
      paramStringBuffer.append(a);
    }
    
    public final void a(StringBuffer paramStringBuffer, chb paramchb, Locale paramLocale)
    {
      paramStringBuffer.append(a);
    }
    
    public final int b()
    {
      return a.length();
    }
  }
  
  static final class i
    implements cjy, cka
  {
    private static Map<Locale, Map<cgi, Object[]>> a = new HashMap();
    private final cgi b;
    private final boolean c;
    
    i(cgi paramcgi, boolean paramBoolean)
    {
      b = paramcgi;
      c = paramBoolean;
    }
    
    public final int a()
    {
      if (c) {
        return 6;
      }
      return 20;
    }
    
    public final int a(cjz paramcjz, String paramString, int paramInt)
    {
      Locale localLocale = d;
      label571:
      label604:
      label608:
      for (;;)
      {
        Object localObject2;
        cgi localcgi;
        synchronized (a)
        {
          localObject1 = (Map)a.get(localLocale);
          if (localObject1 != null) {
            break label608;
          }
          localObject1 = new HashMap();
          a.put(localLocale, localObject1);
          localObject2 = (Object[])((Map)localObject1).get(b);
          if (localObject2 != null) {
            break label571;
          }
          localObject2 = new HashSet(32);
          localObject3 = new cgt(0L, cgk.a);
          localcgi = b;
          if (localcgi == null) {
            throw new IllegalArgumentException("The DateTimeFieldType must not be null");
          }
        }
        cgh localcgh = localcgi.a(b);
        if (!localcgh.c()) {
          throw new IllegalArgumentException("Field '" + localcgi + "' is not supported");
        }
        Object localObject3 = new cgt.a((cgt)localObject3, localcgh);
        int i = ((cja)localObject3).a().g();
        int k = ((cja)localObject3).a().h();
        if (k - i > 32) {
          return paramInt ^ 0xFFFFFFFF;
        }
        int j = ((cja)localObject3).a().a(localLocale);
        while (i <= k)
        {
          a.a(b.b(a.a, i));
          ((Set)localObject2).add(((cgt.a)localObject3).b(localLocale));
          ((Set)localObject2).add(((cgt.a)localObject3).b(localLocale).toLowerCase(localLocale));
          ((Set)localObject2).add(((cgt.a)localObject3).b(localLocale).toUpperCase(localLocale));
          ((Set)localObject2).add(((cgt.a)localObject3).a(localLocale));
          ((Set)localObject2).add(((cgt.a)localObject3).a(localLocale).toLowerCase(localLocale));
          ((Set)localObject2).add(((cgt.a)localObject3).a(localLocale).toUpperCase(localLocale));
          i += 1;
        }
        i = j;
        if ("en".equals(localLocale.getLanguage()))
        {
          i = j;
          if (b == cgi.w())
          {
            ((Set)localObject2).add("BCE");
            ((Set)localObject2).add("bce");
            ((Set)localObject2).add("CE");
            ((Set)localObject2).add("ce");
            i = 3;
          }
        }
        ((Map)localObject1).put(b, new Object[] { localObject2, Integer.valueOf(i) });
        Object localObject1 = localObject2;
        i = Math.min(paramString.length(), i + paramInt);
        for (;;)
        {
          if (i <= paramInt) {
            break label604;
          }
          localObject2 = paramString.substring(paramInt, i);
          if (((Set)localObject1).contains(localObject2))
          {
            paramcjz.a(new cjz.a(b.a(a), (String)localObject2, localLocale));
            return i;
            localObject1 = (Set)localObject2[0];
            i = ((Integer)localObject2[1]).intValue();
            break;
          }
          i -= 1;
        }
        return paramInt ^ 0xFFFFFFFF;
      }
    }
    
    public final void a(StringBuffer paramStringBuffer, long paramLong, cgf paramcgf, int paramInt, cgk paramcgk, Locale paramLocale)
    {
      try
      {
        paramcgf = b.a(paramcgf);
        if (c) {}
        for (paramcgf = paramcgf.b(paramLong, paramLocale);; paramcgf = paramcgf.a(paramLong, paramLocale))
        {
          paramStringBuffer.append(paramcgf);
          return;
        }
        return;
      }
      catch (RuntimeException paramcgf)
      {
        paramStringBuffer.append(65533);
      }
    }
    
    public final void a(StringBuffer paramStringBuffer, chb paramchb, Locale paramLocale)
    {
      try
      {
        cgh localcgh;
        if (paramchb.b(b))
        {
          localcgh = b.a(paramchb.b());
          if (c) {
            paramchb = localcgh.b(paramchb, paramLocale);
          }
        }
        for (;;)
        {
          paramStringBuffer.append(paramchb);
          return;
          paramchb = localcgh.a(paramchb, paramLocale);
          continue;
          paramchb = "�";
        }
        return;
      }
      catch (RuntimeException paramchb)
      {
        paramStringBuffer.append(65533);
      }
    }
    
    public final int b()
    {
      return a();
    }
  }
  
  static enum j
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
    
    private j() {}
    
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
  
  static final class k
    implements cjy, cka
  {
    private final Map<String, cgk> a;
    private final int b;
    
    k(int paramInt)
    {
      b = paramInt;
      a = null;
    }
    
    public final int a()
    {
      if (b == 1) {
        return 4;
      }
      return 20;
    }
    
    public final int a(cjz paramcjz, String paramString, int paramInt)
    {
      Map localMap = a;
      label34:
      String str2;
      if (localMap != null)
      {
        String str3 = paramString.substring(paramInt);
        paramString = null;
        Iterator localIterator = localMap.keySet().iterator();
        if (!localIterator.hasNext()) {
          break label104;
        }
        str2 = (String)localIterator.next();
        if (!str3.startsWith(str2)) {
          break label134;
        }
        str1 = str2;
        if (paramString != null) {
          if (str2.length() <= paramString.length()) {
            break label134;
          }
        }
      }
      label104:
      label134:
      for (String str1 = str2;; str1 = paramString)
      {
        paramString = str1;
        break label34;
        localMap = cgj.b();
        break;
        if (paramString != null)
        {
          paramcjz.a((cgk)localMap.get(paramString));
          return paramString.length() + paramInt;
        }
        return paramInt ^ 0xFFFFFFFF;
      }
    }
    
    public final void a(StringBuffer paramStringBuffer, long paramLong, cgf paramcgf, int paramInt, cgk paramcgk, Locale paramLocale)
    {
      paramLong -= paramInt;
      if (paramcgk != null) {}
      switch (b)
      {
      default: 
        paramcgf = "";
      }
      for (;;)
      {
        paramStringBuffer.append(paramcgf);
        return;
        paramcgf = paramLocale;
        if (paramLocale == null) {
          paramcgf = Locale.getDefault();
        }
        paramLocale = paramcgk.a(paramLong);
        if (paramLocale == null)
        {
          paramcgf = c;
        }
        else
        {
          paramLocale = cgk.b.b(paramcgf, c, paramLocale);
          paramcgf = paramLocale;
          if (paramLocale == null)
          {
            paramcgf = cgk.b(paramcgk.b(paramLong));
            continue;
            paramcgf = paramLocale;
            if (paramLocale == null) {
              paramcgf = Locale.getDefault();
            }
            paramLocale = paramcgk.a(paramLong);
            if (paramLocale == null)
            {
              paramcgf = c;
            }
            else
            {
              paramLocale = cgk.b.a(paramcgf, c, paramLocale);
              paramcgf = paramLocale;
              if (paramLocale == null) {
                paramcgf = cgk.b(paramcgk.b(paramLong));
              }
            }
          }
        }
      }
    }
    
    public final void a(StringBuffer paramStringBuffer, chb paramchb, Locale paramLocale) {}
    
    public final int b()
    {
      if (b == 1) {
        return 4;
      }
      return 20;
    }
  }
  
  static final class l
    implements cjy, cka
  {
    private final String a;
    private final String b;
    private final boolean c;
    private final int d;
    private final int e;
    
    l(String paramString1, String paramString2, boolean paramBoolean, int paramInt)
    {
      a = paramString1;
      b = paramString2;
      c = paramBoolean;
      if (paramInt < 2) {
        throw new IllegalArgumentException();
      }
      d = 2;
      e = paramInt;
    }
    
    private static int a(String paramString, int paramInt1, int paramInt2)
    {
      paramInt2 = Math.min(paramString.length() - paramInt1, paramInt2);
      int i = 0;
      while (paramInt2 > 0)
      {
        int j = paramString.charAt(paramInt1 + i);
        if ((j < 48) || (j > 57)) {
          break;
        }
        i += 1;
        paramInt2 -= 1;
      }
      return i;
    }
    
    public final int a()
    {
      int j = d + 1 << 1;
      int i = j;
      if (c) {
        i = j + (d - 1);
      }
      j = i;
      if (a != null)
      {
        j = i;
        if (a.length() > i) {
          j = a.length();
        }
      }
      return j;
    }
    
    public final int a(cjz paramcjz, String paramString, int paramInt)
    {
      int m = 0;
      int i = paramString.length() - paramInt;
      if (b != null) {
        if (b.length() == 0)
        {
          if (i > 0)
          {
            j = paramString.charAt(paramInt);
            if ((j == 45) || (j == 43)) {}
          }
          else
          {
            paramcjz.a(Integer.valueOf(0));
            return paramInt;
          }
        }
        else if (paramString.regionMatches(true, paramInt, b, 0, b.length()))
        {
          paramcjz.a(Integer.valueOf(0));
          return paramInt + b.length();
        }
      }
      if (i <= 1) {
        return paramInt ^ 0xFFFFFFFF;
      }
      int j = paramString.charAt(paramInt);
      if (j == 45) {}
      for (int k = 1;; k = 0)
      {
        paramInt += 1;
        if (a(paramString, paramInt, 2) >= 2) {
          break label165;
        }
        return paramInt ^ 0xFFFFFFFF;
        if (j != 43) {
          break;
        }
      }
      return paramInt ^ 0xFFFFFFFF;
      label165:
      j = ckb.a(paramString, paramInt);
      if (j > 23) {
        return paramInt ^ 0xFFFFFFFF;
      }
      int i2 = j * 3600000;
      int n = i - 1 - 2;
      int i1 = paramInt + 2;
      paramInt = i1;
      i = i2;
      int i3;
      if (n > 0)
      {
        i3 = paramString.charAt(i1);
        if (i3 == 58)
        {
          n -= 1;
          j = i1 + 1;
          m = 1;
        }
        do
        {
          i1 = a(paramString, j, 2);
          if (i1 == 0)
          {
            paramInt = j;
            i = i2;
            if (m == 0) {
              break;
            }
          }
          if (i1 >= 2) {
            break label343;
          }
          return j ^ 0xFFFFFFFF;
          paramInt = i1;
          i = i2;
          if (i3 < 48) {
            break;
          }
          j = i1;
        } while (i3 <= 57);
        i = i2;
        paramInt = i1;
      }
      j = i;
      i = paramInt;
      paramInt = j;
      for (;;)
      {
        label324:
        if (k != 0) {
          paramInt = -paramInt;
        }
        for (;;)
        {
          paramcjz.a(Integer.valueOf(paramInt));
          return i;
          label343:
          paramInt = ckb.a(paramString, j);
          if (paramInt > 59) {
            return j ^ 0xFFFFFFFF;
          }
          i2 += paramInt * 60000;
          i3 = n - 2;
          i1 = j + 2;
          paramInt = i1;
          i = i2;
          if (i3 <= 0) {
            break;
          }
          n = i3;
          j = i1;
          if (m != 0)
          {
            paramInt = i1;
            i = i2;
            if (paramString.charAt(i1) != ':') {
              break;
            }
            n = i3 - 1;
            j = i1 + 1;
          }
          i1 = a(paramString, j, 2);
          if (i1 == 0)
          {
            paramInt = j;
            i = i2;
            if (m == 0) {
              break;
            }
          }
          if (i1 < 2) {
            return j ^ 0xFFFFFFFF;
          }
          paramInt = ckb.a(paramString, j);
          if (paramInt > 59) {
            return j ^ 0xFFFFFFFF;
          }
          i1 = i2 + paramInt * 1000;
          j += 2;
          paramInt = j;
          if (n - 2 <= 0) {
            break label685;
          }
          i = j;
          if (m != 0)
          {
            if (paramString.charAt(j) != '.')
            {
              paramInt = j;
              if (paramString.charAt(j) != ',') {
                break label685;
              }
            }
            i = j + 1;
          }
          n = a(paramString, i, 3);
          if (n == 0)
          {
            paramInt = i;
            if (m == 0) {
              break label685;
            }
          }
          if (n <= 0) {
            return i ^ 0xFFFFFFFF;
          }
          m = i + 1;
          paramInt = (paramString.charAt(i) - '0') * 100 + i1;
          if (n <= 1) {
            break label678;
          }
          j = m + 1;
          m = (paramString.charAt(m) - '0') * 10 + paramInt;
          paramInt = m;
          i = j;
          if (n <= 2) {
            break label324;
          }
          paramInt = m + (paramString.charAt(j) - '0');
          i = j + 1;
          break label324;
        }
        label678:
        i = m;
        continue;
        label685:
        i = i1;
        j = paramInt;
        paramInt = i;
        i = j;
      }
    }
    
    public final void a(StringBuffer paramStringBuffer, long paramLong, cgf paramcgf, int paramInt, cgk paramcgk, Locale paramLocale)
    {
      if (paramcgk == null) {
        return;
      }
      if ((paramInt == 0) && (a != null))
      {
        paramStringBuffer.append(a);
        return;
      }
      if (paramInt >= 0) {
        paramStringBuffer.append('+');
      }
      for (;;)
      {
        int i = paramInt / 3600000;
        ckb.a(paramStringBuffer, i, 2);
        if (e == 1) {
          break;
        }
        paramInt -= i * 3600000;
        if ((paramInt == 0) && (d <= 1)) {
          break;
        }
        i = paramInt / 60000;
        if (c) {
          paramStringBuffer.append(':');
        }
        ckb.a(paramStringBuffer, i, 2);
        if (e == 2) {
          break;
        }
        paramInt -= i * 60000;
        if ((paramInt == 0) && (d <= 2)) {
          break;
        }
        i = paramInt / 1000;
        if (c) {
          paramStringBuffer.append(':');
        }
        ckb.a(paramStringBuffer, i, 2);
        if (e == 3) {
          break;
        }
        paramInt -= i * 1000;
        if ((paramInt == 0) && (d <= 3)) {
          break;
        }
        if (c) {
          paramStringBuffer.append('.');
        }
        ckb.a(paramStringBuffer, paramInt, 3);
        return;
        paramStringBuffer.append('-');
        paramInt = -paramInt;
      }
    }
    
    public final void a(StringBuffer paramStringBuffer, chb paramchb, Locale paramLocale) {}
    
    public final int b()
    {
      return a();
    }
  }
  
  static final class m
    implements cjy, cka
  {
    private final cgi a;
    private final int b;
    private final boolean c;
    
    m(cgi paramcgi, int paramInt, boolean paramBoolean)
    {
      a = paramcgi;
      b = paramInt;
      c = paramBoolean;
    }
    
    private int a(long paramLong, cgf paramcgf)
    {
      try
      {
        int j = a.a(paramcgf).a(paramLong);
        int i = j;
        if (j < 0) {
          i = -j;
        }
        return i % 100;
      }
      catch (RuntimeException paramcgf) {}
      return -1;
    }
    
    private int a(chb paramchb)
    {
      if (paramchb.b(a)) {
        try
        {
          int j = paramchb.a(a);
          int i = j;
          if (j < 0) {
            i = -j;
          }
          return i % 100;
        }
        catch (RuntimeException paramchb) {}
      }
      return -1;
    }
    
    public final int a()
    {
      return 2;
    }
    
    public final int a(cjz paramcjz, String paramString, int paramInt)
    {
      int n = 0;
      int m = paramString.length() - paramInt;
      int j;
      int i;
      if (!c)
      {
        k = paramInt;
        if (Math.min(2, m) < 2) {
          return paramInt ^ 0xFFFFFFFF;
        }
      }
      else
      {
        j = 0;
        i = 0;
        k = 0;
        while (j < m)
        {
          int i1 = paramString.charAt(paramInt + j);
          if ((j == 0) && ((i1 == 45) || (i1 == 43)))
          {
            if (i1 == 45) {}
            for (i = 1;; i = 0)
            {
              if (i == 0) {
                break label113;
              }
              j += 1;
              k = 1;
              break;
            }
            label113:
            paramInt += 1;
            k = 1;
            m -= 1;
          }
          else
          {
            if ((i1 < 48) || (i1 > 57)) {
              break;
            }
            j += 1;
          }
        }
        if (j == 0) {
          return paramInt ^ 0xFFFFFFFF;
        }
        if (k == 0)
        {
          k = paramInt;
          if (j == 2) {}
        }
        else
        {
          if (j >= 9)
          {
            k = paramInt + j;
            j = Integer.parseInt(paramString.substring(paramInt, k));
            paramcjz.a(a, j);
            return k;
          }
          if (i == 0) {
            break label480;
          }
        }
      }
      label480:
      for (int k = paramInt + 1;; k = paramInt)
      {
        n = k + 1;
        try
        {
          k = paramString.charAt(k);
          k -= 48;
          m = paramInt + j;
          j = n;
          paramInt = k;
          while (j < m)
          {
            paramInt = (paramInt << 1) + (paramInt << 3) + paramString.charAt(j) - 48;
            j += 1;
          }
          j = paramInt;
        }
        catch (StringIndexOutOfBoundsException paramcjz)
        {
          return paramInt ^ 0xFFFFFFFF;
        }
        k = m;
        if (i == 0) {
          break;
        }
        j = -paramInt;
        k = m;
        break;
        paramInt = paramString.charAt(k);
        if ((paramInt < 48) || (paramInt > 57)) {
          return k ^ 0xFFFFFFFF;
        }
        paramInt -= 48;
        i = paramString.charAt(k + 1);
        if ((i < 48) || (i > 57)) {
          return k ^ 0xFFFFFFFF;
        }
        j = (paramInt << 1) + (paramInt << 3) + i - 48;
        paramInt = b;
        if (e != null) {
          paramInt = e.intValue();
        }
        m = paramInt - 50;
        if (m >= 0) {}
        for (paramInt = m % 100;; paramInt = (m + 1) % 100 + 99)
        {
          i = n;
          if (j < paramInt) {
            i = 100;
          }
          paramcjz.a(a, i + m - paramInt + j);
          return k + 2;
        }
      }
    }
    
    public final void a(StringBuffer paramStringBuffer, long paramLong, cgf paramcgf, int paramInt, cgk paramcgk, Locale paramLocale)
    {
      paramInt = a(paramLong, paramcgf);
      if (paramInt < 0)
      {
        paramStringBuffer.append(65533);
        paramStringBuffer.append(65533);
        return;
      }
      ckb.a(paramStringBuffer, paramInt, 2);
    }
    
    public final void a(StringBuffer paramStringBuffer, chb paramchb, Locale paramLocale)
    {
      int i = a(paramchb);
      if (i < 0)
      {
        paramStringBuffer.append(65533);
        paramStringBuffer.append(65533);
        return;
      }
      ckb.a(paramStringBuffer, i, 2);
    }
    
    public final int b()
    {
      if (c) {
        return 4;
      }
      return 2;
    }
  }
  
  static final class n
    extends cjx.f
  {
    protected n(cgi paramcgi, int paramInt, boolean paramBoolean)
    {
      super(paramInt, paramBoolean);
    }
    
    public final int a()
    {
      return b;
    }
    
    public final void a(StringBuffer paramStringBuffer, long paramLong, cgf paramcgf, int paramInt, cgk paramcgk, Locale paramLocale)
    {
      try
      {
        ckb.a(paramStringBuffer, a.a(paramcgf).a(paramLong));
        return;
      }
      catch (RuntimeException paramcgf)
      {
        paramStringBuffer.append(65533);
      }
    }
    
    public final void a(StringBuffer paramStringBuffer, chb paramchb, Locale paramLocale)
    {
      if (paramchb.b(a)) {
        try
        {
          ckb.a(paramStringBuffer, paramchb.a(a));
          return;
        }
        catch (RuntimeException paramchb)
        {
          paramStringBuffer.append(65533);
          return;
        }
      }
      paramStringBuffer.append(65533);
    }
  }
}

/* Location:
 * Qualified Name:     cjx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */