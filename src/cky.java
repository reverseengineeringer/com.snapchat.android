import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;

public final class cky
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
    if ((paramObject instanceof ckz)) {
      return (!(paramObject instanceof cky.b)) || (b != null);
    }
    return false;
  }
  
  private cky c(chj paramchj, int paramInt1, int paramInt2)
  {
    if (paramchj == null) {
      throw new IllegalArgumentException("Field type must not be null");
    }
    int i = paramInt2;
    if (paramInt2 < paramInt1) {
      i = paramInt1;
    }
    if ((paramInt1 < 0) || (i <= 0)) {
      throw new IllegalArgumentException();
    }
    return a(new cky.d(paramchj, paramInt1, i));
  }
  
  private static void c(ckz paramckz)
  {
    if (paramckz == null) {
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
        localObject2 = new cky.b(a);
      }
      b = localObject2;
      localObject1 = localObject2;
      return localObject1;
    }
  }
  
  public final ckx a()
  {
    Object localObject = e();
    int i;
    if ((localObject instanceof clb)) {
      if ((localObject instanceof cky.b)) {
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
    for (clb localclb = (clb)localObject;; localclb = null)
    {
      if (b(localObject)) {}
      for (localObject = (ckz)localObject;; localObject = null)
      {
        if ((localclb != null) || (localObject != null))
        {
          return new ckx(localclb, (ckz)localObject);
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
  
  public final cky a(char paramChar)
  {
    return a(new cky.a(paramChar));
  }
  
  public final cky a(int paramInt)
  {
    return a(chj.c(), paramInt, 2);
  }
  
  public final cky a(int paramInt1, int paramInt2)
  {
    return c(chj.d(), paramInt1, paramInt2);
  }
  
  public final cky a(chj paramchj)
  {
    if (paramchj == null) {
      throw new IllegalArgumentException("Field type must not be null");
    }
    return a(new cky.i(paramchj, false));
  }
  
  public final cky a(chj paramchj, int paramInt)
  {
    if (paramchj == null) {
      throw new IllegalArgumentException("Field type must not be null");
    }
    if (paramInt <= 0) {
      throw new IllegalArgumentException("Illegal number of digits: " + paramInt);
    }
    return a(new cky.c(paramchj, paramInt));
  }
  
  public final cky a(chj paramchj, int paramInt1, int paramInt2)
  {
    if (paramchj == null) {
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
      return a(new cky.n(paramchj, i, false));
    }
    return a(new cky.g(paramchj, i, false, paramInt1));
  }
  
  public final cky a(ckx paramckx)
  {
    if (paramckx == null) {
      throw new IllegalArgumentException("No formatter supplied");
    }
    return a(a, b);
  }
  
  public final cky a(ckz paramckz)
  {
    c(paramckz);
    return a(null, paramckz);
  }
  
  final cky a(clb paramclb, ckz paramckz)
  {
    b = null;
    a.add(paramclb);
    a.add(paramckz);
    return this;
  }
  
  final cky a(Object paramObject)
  {
    b = null;
    a.add(paramObject);
    a.add(paramObject);
    return this;
  }
  
  public final cky a(String paramString)
  {
    cky localcky = this;
    switch (paramString.length())
    {
    default: 
      localcky = a(new cky.h(paramString));
    case 0: 
      return localcky;
    }
    return a(new cky.a(paramString.charAt(0)));
  }
  
  public final cky a(String paramString, boolean paramBoolean)
  {
    return a(new cky.l(null, paramString, paramBoolean, 2));
  }
  
  public final cky a(String paramString, boolean paramBoolean, int paramInt)
  {
    return a(new cky.l(paramString, paramString, paramBoolean, paramInt));
  }
  
  public final cky a(ckz[] paramArrayOfckz)
  {
    int i = 0;
    int j = paramArrayOfckz.length;
    if (j == 1)
    {
      if (paramArrayOfckz[0] == null) {
        throw new IllegalArgumentException("No parser supplied");
      }
      return a(null, paramArrayOfckz[0]);
    }
    ckz[] arrayOfckz = new ckz[j];
    while (i < j - 1)
    {
      ckz localckz = paramArrayOfckz[i];
      arrayOfckz[i] = localckz;
      if (localckz == null) {
        throw new IllegalArgumentException("Incomplete parser array");
      }
      i += 1;
    }
    arrayOfckz[i] = paramArrayOfckz[i];
    return a(null, new cky.e(arrayOfckz));
  }
  
  public final cky b(int paramInt)
  {
    return a(chj.e(), paramInt, 2);
  }
  
  public final cky b(int paramInt1, int paramInt2)
  {
    return b(chj.p(), paramInt1, paramInt2);
  }
  
  public final cky b(chj paramchj)
  {
    if (paramchj == null) {
      throw new IllegalArgumentException("Field type must not be null");
    }
    return a(new cky.i(paramchj, true));
  }
  
  public final cky b(chj paramchj, int paramInt1, int paramInt2)
  {
    if (paramchj == null) {
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
      return a(new cky.n(paramchj, i, true));
    }
    return a(new cky.g(paramchj, i, true, paramInt1));
  }
  
  public final cky b(ckz paramckz)
  {
    c(paramckz);
    return a(null, new cky.e(new ckz[] { paramckz, null }));
  }
  
  public final ckz b()
  {
    Object localObject = e();
    if (b(localObject)) {
      return (ckz)localObject;
    }
    throw new UnsupportedOperationException("Parsing is not supported");
  }
  
  public final cky c()
  {
    return c(chj.f(), 1, 9);
  }
  
  public final cky c(int paramInt)
  {
    return a(chj.g(), paramInt, 2);
  }
  
  public final cky c(int paramInt1, int paramInt2)
  {
    return b(chj.s(), paramInt1, paramInt2);
  }
  
  public final cky d()
  {
    return c(chj.g(), 1, 9);
  }
  
  public final cky d(int paramInt)
  {
    return a(chj.l(), paramInt, 1);
  }
  
  public final cky e(int paramInt)
  {
    return a(chj.m(), paramInt, 2);
  }
  
  public final cky f(int paramInt)
  {
    return a(chj.n(), paramInt, 3);
  }
  
  public final cky g(int paramInt)
  {
    return a(chj.o(), paramInt, 2);
  }
  
  public final cky h(int paramInt)
  {
    return a(chj.r(), paramInt, 2);
  }
  
  static final class a
    implements ckz, clb
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
    
    public final int a(cla paramcla, String paramString, int paramInt)
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
    
    public final void a(StringBuffer paramStringBuffer, long paramLong, chg paramchg, int paramInt, chl paramchl, Locale paramLocale)
    {
      paramStringBuffer.append(a);
    }
    
    public final void a(StringBuffer paramStringBuffer, cic paramcic, Locale paramLocale)
    {
      paramStringBuffer.append(a);
    }
    
    public final int b()
    {
      return 1;
    }
  }
  
  static final class b
    implements ckz, clb
  {
    final clb[] a;
    final ckz[] b;
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
        a = new clb[m];
        i = 0;
        j = 0;
        while (i < m)
        {
          paramList = (clb)localArrayList2.get(i);
          j += paramList.a();
          a[i] = paramList;
          i += 1;
        }
      }
      int m = localArrayList1.size();
      b = new ckz[m];
      int j = 0;
      int i = k;
      while (i < m)
      {
        paramList = (ckz)localArrayList1.get(i);
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
    
    public final int a(cla paramcla, String paramString, int paramInt)
    {
      ckz[] arrayOfckz = b;
      if (arrayOfckz == null) {
        throw new UnsupportedOperationException();
      }
      int k = arrayOfckz.length;
      int j = 0;
      int i = paramInt;
      paramInt = j;
      while ((paramInt < k) && (i >= 0))
      {
        i = arrayOfckz[paramInt].a(paramcla, paramString, i);
        paramInt += 1;
      }
      return i;
    }
    
    public final void a(StringBuffer paramStringBuffer, long paramLong, chg paramchg, int paramInt, chl paramchl, Locale paramLocale)
    {
      clb[] arrayOfclb = a;
      if (arrayOfclb == null) {
        throw new UnsupportedOperationException();
      }
      if (paramLocale == null) {
        paramLocale = Locale.getDefault();
      }
      for (;;)
      {
        int j = arrayOfclb.length;
        int i = 0;
        while (i < j)
        {
          arrayOfclb[i].a(paramStringBuffer, paramLong, paramchg, paramInt, paramchl, paramLocale);
          i += 1;
        }
        return;
      }
    }
    
    public final void a(StringBuffer paramStringBuffer, cic paramcic, Locale paramLocale)
    {
      clb[] arrayOfclb = a;
      if (arrayOfclb == null) {
        throw new UnsupportedOperationException();
      }
      Locale localLocale = paramLocale;
      if (paramLocale == null) {
        localLocale = Locale.getDefault();
      }
      int j = arrayOfclb.length;
      int i = 0;
      while (i < j)
      {
        arrayOfclb[i].a(paramStringBuffer, paramcic, localLocale);
        i += 1;
      }
    }
    
    public final int b()
    {
      return d;
    }
  }
  
  static final class c
    extends cky.g
  {
    protected c(chj paramchj, int paramInt)
    {
      super(paramInt, false, paramInt);
    }
    
    public final int a(cla paramcla, String paramString, int paramInt)
    {
      int k = super.a(paramcla, paramString, paramInt);
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
    implements ckz, clb
  {
    protected int a;
    protected int b;
    private final chj c;
    
    protected d(chj paramchj, int paramInt1, int paramInt2)
    {
      c = paramchj;
      int i = paramInt2;
      if (paramInt2 > 18) {
        i = 18;
      }
      a = paramInt1;
      b = i;
    }
    
    private void a(StringBuffer paramStringBuffer, long paramLong, chg paramchg)
    {
      paramchg = c.a(paramchg);
      int i = a;
      label116:
      label369:
      label486:
      do
      {
        for (;;)
        {
          long l1;
          int j;
          try
          {
            l1 = paramchg.i(paramLong);
            if (l1 != 0L) {
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
          catch (RuntimeException paramchg)
          {
            j = i;
            if (paramStringBuffer != null)
            {
              cky.a(paramStringBuffer, i);
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
            long l2 = paramchg.d().d();
            j = b;
            switch (j)
            {
            default: 
              paramLong = 1L;
            }
            for (;;)
            {
              if (l2 * paramLong / paramLong == l2) {
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
            paramchg = new long[2];
            paramchg[0] = (paramLong * l1 / l2);
            paramchg[1] = j;
            paramLong = paramchg[0];
            int k = (int)paramchg[1];
            if ((0x7FFFFFFF & paramLong) == paramLong) {}
            int m;
            for (paramchg = Integer.toString((int)paramLong);; paramchg = Long.toString(paramLong))
            {
              m = paramchg.length();
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
            while ((j < k) && (i > 1) && (paramchg.charAt(i - 1) == '0'))
            {
              i -= 1;
              k -= 1;
            }
            if (i >= paramchg.length()) {
              break label608;
            }
            if (paramStringBuffer == null) {
              break;
            }
            j = 0;
            while (j < i)
            {
              paramStringBuffer.append(paramchg.charAt(j));
              j += 1;
            }
          }
        }
      } while (i >= 0);
      paramchg.charAt(0);
      throw new NullPointerException();
      label608:
      if (paramStringBuffer != null)
      {
        paramStringBuffer.append(paramchg);
        return;
      }
      throw new NullPointerException();
    }
    
    public final int a()
    {
      return b;
    }
    
    public final int a(cla paramcla, String paramString, int paramInt)
    {
      chi localchi = c.a(a);
      int j = Math.min(b, paramString.length() - paramInt);
      long l1 = 0L;
      long l2 = localchi.d().d() * 10L;
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
      paramcla.a(new cla.a(new ckm(chj.a(), ckk.a, localchi.d()), (int)l1));
      return i + paramInt;
    }
    
    public final void a(StringBuffer paramStringBuffer, long paramLong, chg paramchg, int paramInt, chl paramchl, Locale paramLocale)
    {
      try
      {
        a(paramStringBuffer, paramLong, paramchg);
        return;
      }
      catch (IOException paramStringBuffer) {}
    }
    
    public final void a(StringBuffer paramStringBuffer, cic paramcic, Locale paramLocale)
    {
      long l = paramcic.b().a(paramcic, 0L);
      try
      {
        a(paramStringBuffer, l, paramcic.b());
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
    implements ckz
  {
    private final ckz[] a;
    private final int b;
    
    e(ckz[] paramArrayOfckz)
    {
      a = paramArrayOfckz;
      int i = 0;
      int j = paramArrayOfckz.length;
      j -= 1;
      if (j >= 0)
      {
        ckz localckz = paramArrayOfckz[j];
        if (localckz == null) {
          break label59;
        }
        int k = localckz.b();
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
    
    public final int a(cla paramcla, String paramString, int paramInt)
    {
      ckz[] arrayOfckz = a;
      int n = arrayOfckz.length;
      Object localObject2 = paramcla.a();
      Object localObject1 = null;
      int k = 0;
      int j = paramInt;
      int i = paramInt;
      ckz localckz;
      if (k < n)
      {
        localckz = arrayOfckz[k];
        if (localckz == null) {
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
            paramcla.a(localObject1);
          }
          return i;
          m = localckz.a(paramcla, paramString, paramInt);
          if (m >= paramInt)
          {
            if (m <= i) {
              break label203;
            }
            if ((m >= paramString.length()) || (k + 1 >= n) || (arrayOfckz[(k + 1)] == null)) {
              return m;
            }
            localObject1 = paramcla.a();
            i = m;
          }
        }
        label203:
        for (;;)
        {
          paramcla.a(localObject2);
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
    implements ckz, clb
  {
    protected final chj a;
    protected final int b;
    protected final boolean c;
    
    f(chj paramchj, int paramInt, boolean paramBoolean)
    {
      a = paramchj;
      b = paramInt;
      c = paramBoolean;
    }
    
    public int a(cla paramcla, String paramString, int paramInt)
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
        paramcla.a(a, i);
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
        catch (StringIndexOutOfBoundsException paramcla)
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
    extends cky.f
  {
    protected final int d;
    
    protected g(chj paramchj, int paramInt1, boolean paramBoolean, int paramInt2)
    {
      super(paramInt1, paramBoolean);
      d = paramInt2;
    }
    
    public final int a()
    {
      return b;
    }
    
    public final void a(StringBuffer paramStringBuffer, long paramLong, chg paramchg, int paramInt, chl paramchl, Locale paramLocale)
    {
      try
      {
        clc.a(paramStringBuffer, a.a(paramchg).a(paramLong), d);
        return;
      }
      catch (RuntimeException paramchg)
      {
        cky.a(paramStringBuffer, d);
      }
    }
    
    public final void a(StringBuffer paramStringBuffer, cic paramcic, Locale paramLocale)
    {
      if (paramcic.b(a)) {
        try
        {
          clc.a(paramStringBuffer, paramcic.a(a), d);
          return;
        }
        catch (RuntimeException paramcic) {}
      }
      cky.a(paramStringBuffer, d);
    }
  }
  
  static final class h
    implements ckz, clb
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
    
    public final int a(cla paramcla, String paramString, int paramInt)
    {
      if (paramString.regionMatches(true, paramInt, a, 0, a.length())) {
        return a.length() + paramInt;
      }
      return paramInt ^ 0xFFFFFFFF;
    }
    
    public final void a(StringBuffer paramStringBuffer, long paramLong, chg paramchg, int paramInt, chl paramchl, Locale paramLocale)
    {
      paramStringBuffer.append(a);
    }
    
    public final void a(StringBuffer paramStringBuffer, cic paramcic, Locale paramLocale)
    {
      paramStringBuffer.append(a);
    }
    
    public final int b()
    {
      return a.length();
    }
  }
  
  static final class i
    implements ckz, clb
  {
    private static Map<Locale, Map<chj, Object[]>> a = new HashMap();
    private final chj b;
    private final boolean c;
    
    i(chj paramchj, boolean paramBoolean)
    {
      b = paramchj;
      c = paramBoolean;
    }
    
    public final int a()
    {
      if (c) {
        return 6;
      }
      return 20;
    }
    
    public final int a(cla paramcla, String paramString, int paramInt)
    {
      Locale localLocale = d;
      label571:
      label604:
      label608:
      for (;;)
      {
        Object localObject2;
        chj localchj;
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
          localObject3 = new chu(0L, chl.a);
          localchj = b;
          if (localchj == null) {
            throw new IllegalArgumentException("The DateTimeFieldType must not be null");
          }
        }
        chi localchi = localchj.a(b);
        if (!localchi.c()) {
          throw new IllegalArgumentException("Field '" + localchj + "' is not supported");
        }
        Object localObject3 = new chu.a((chu)localObject3, localchi);
        int i = ((ckb)localObject3).a().g();
        int k = ((ckb)localObject3).a().h();
        if (k - i > 32) {
          return paramInt ^ 0xFFFFFFFF;
        }
        int j = ((ckb)localObject3).a().a(localLocale);
        while (i <= k)
        {
          a.a(b.b(a.a, i));
          ((Set)localObject2).add(((chu.a)localObject3).b(localLocale));
          ((Set)localObject2).add(((chu.a)localObject3).b(localLocale).toLowerCase(localLocale));
          ((Set)localObject2).add(((chu.a)localObject3).b(localLocale).toUpperCase(localLocale));
          ((Set)localObject2).add(((chu.a)localObject3).a(localLocale));
          ((Set)localObject2).add(((chu.a)localObject3).a(localLocale).toLowerCase(localLocale));
          ((Set)localObject2).add(((chu.a)localObject3).a(localLocale).toUpperCase(localLocale));
          i += 1;
        }
        i = j;
        if ("en".equals(localLocale.getLanguage()))
        {
          i = j;
          if (b == chj.w())
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
            paramcla.a(new cla.a(b.a(a), (String)localObject2, localLocale));
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
    
    public final void a(StringBuffer paramStringBuffer, long paramLong, chg paramchg, int paramInt, chl paramchl, Locale paramLocale)
    {
      try
      {
        paramchg = b.a(paramchg);
        if (c) {}
        for (paramchg = paramchg.b(paramLong, paramLocale);; paramchg = paramchg.a(paramLong, paramLocale))
        {
          paramStringBuffer.append(paramchg);
          return;
        }
        return;
      }
      catch (RuntimeException paramchg)
      {
        paramStringBuffer.append(65533);
      }
    }
    
    public final void a(StringBuffer paramStringBuffer, cic paramcic, Locale paramLocale)
    {
      try
      {
        chi localchi;
        if (paramcic.b(b))
        {
          localchi = b.a(paramcic.b());
          if (c) {
            paramcic = localchi.b(paramcic, paramLocale);
          }
        }
        for (;;)
        {
          paramStringBuffer.append(paramcic);
          return;
          paramcic = localchi.a(paramcic, paramLocale);
          continue;
          paramcic = "�";
        }
        return;
      }
      catch (RuntimeException paramcic)
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
    implements ckz, clb
  {
    static final Set<String> b;
    static final int c;
    
    static
    {
      b = chl.b();
      Iterator localIterator = b.iterator();
      for (int i = 0; localIterator.hasNext(); i = Math.max(i, ((String)localIterator.next()).length())) {}
      c = i;
    }
    
    private j() {}
    
    public final int a()
    {
      return c;
    }
    
    public final int a(cla paramcla, String paramString, int paramInt)
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
          paramcla.a(chl.a(paramString));
          return paramString.length() + paramInt;
        }
        return paramInt ^ 0xFFFFFFFF;
      }
    }
    
    public final void a(StringBuffer paramStringBuffer, long paramLong, chg paramchg, int paramInt, chl paramchl, Locale paramLocale)
    {
      if (paramchl != null) {}
      for (paramchg = c;; paramchg = "")
      {
        paramStringBuffer.append(paramchg);
        return;
      }
    }
    
    public final void a(StringBuffer paramStringBuffer, cic paramcic, Locale paramLocale) {}
    
    public final int b()
    {
      return c;
    }
  }
  
  static final class k
    implements ckz, clb
  {
    private final Map<String, chl> a;
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
    
    public final int a(cla paramcla, String paramString, int paramInt)
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
        localMap = chk.b();
        break;
        if (paramString != null)
        {
          paramcla.a((chl)localMap.get(paramString));
          return paramString.length() + paramInt;
        }
        return paramInt ^ 0xFFFFFFFF;
      }
    }
    
    public final void a(StringBuffer paramStringBuffer, long paramLong, chg paramchg, int paramInt, chl paramchl, Locale paramLocale)
    {
      paramLong -= paramInt;
      if (paramchl != null) {}
      switch (b)
      {
      default: 
        paramchg = "";
      }
      for (;;)
      {
        paramStringBuffer.append(paramchg);
        return;
        paramchg = paramLocale;
        if (paramLocale == null) {
          paramchg = Locale.getDefault();
        }
        paramLocale = paramchl.a(paramLong);
        if (paramLocale == null)
        {
          paramchg = c;
        }
        else
        {
          paramLocale = chl.b.b(paramchg, c, paramLocale);
          paramchg = paramLocale;
          if (paramLocale == null)
          {
            paramchg = chl.b(paramchl.b(paramLong));
            continue;
            paramchg = paramLocale;
            if (paramLocale == null) {
              paramchg = Locale.getDefault();
            }
            paramLocale = paramchl.a(paramLong);
            if (paramLocale == null)
            {
              paramchg = c;
            }
            else
            {
              paramLocale = chl.b.a(paramchg, c, paramLocale);
              paramchg = paramLocale;
              if (paramLocale == null) {
                paramchg = chl.b(paramchl.b(paramLong));
              }
            }
          }
        }
      }
    }
    
    public final void a(StringBuffer paramStringBuffer, cic paramcic, Locale paramLocale) {}
    
    public final int b()
    {
      if (b == 1) {
        return 4;
      }
      return 20;
    }
  }
  
  static final class l
    implements ckz, clb
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
    
    public final int a(cla paramcla, String paramString, int paramInt)
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
            paramcla.a(Integer.valueOf(0));
            return paramInt;
          }
        }
        else if (paramString.regionMatches(true, paramInt, b, 0, b.length()))
        {
          paramcla.a(Integer.valueOf(0));
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
      j = clc.a(paramString, paramInt);
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
          paramcla.a(Integer.valueOf(paramInt));
          return i;
          label343:
          paramInt = clc.a(paramString, j);
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
          paramInt = clc.a(paramString, j);
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
    
    public final void a(StringBuffer paramStringBuffer, long paramLong, chg paramchg, int paramInt, chl paramchl, Locale paramLocale)
    {
      if (paramchl == null) {
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
        clc.a(paramStringBuffer, i, 2);
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
        clc.a(paramStringBuffer, i, 2);
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
        clc.a(paramStringBuffer, i, 2);
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
        clc.a(paramStringBuffer, paramInt, 3);
        return;
        paramStringBuffer.append('-');
        paramInt = -paramInt;
      }
    }
    
    public final void a(StringBuffer paramStringBuffer, cic paramcic, Locale paramLocale) {}
    
    public final int b()
    {
      return a();
    }
  }
  
  static final class m
    implements ckz, clb
  {
    private final chj a;
    private final int b;
    private final boolean c;
    
    m(chj paramchj, int paramInt, boolean paramBoolean)
    {
      a = paramchj;
      b = paramInt;
      c = paramBoolean;
    }
    
    private int a(long paramLong, chg paramchg)
    {
      try
      {
        int j = a.a(paramchg).a(paramLong);
        int i = j;
        if (j < 0) {
          i = -j;
        }
        return i % 100;
      }
      catch (RuntimeException paramchg) {}
      return -1;
    }
    
    private int a(cic paramcic)
    {
      if (paramcic.b(a)) {
        try
        {
          int j = paramcic.a(a);
          int i = j;
          if (j < 0) {
            i = -j;
          }
          return i % 100;
        }
        catch (RuntimeException paramcic) {}
      }
      return -1;
    }
    
    public final int a()
    {
      return 2;
    }
    
    public final int a(cla paramcla, String paramString, int paramInt)
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
            paramcla.a(a, j);
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
        catch (StringIndexOutOfBoundsException paramcla)
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
          paramcla.a(a, i + m - paramInt + j);
          return k + 2;
        }
      }
    }
    
    public final void a(StringBuffer paramStringBuffer, long paramLong, chg paramchg, int paramInt, chl paramchl, Locale paramLocale)
    {
      paramInt = a(paramLong, paramchg);
      if (paramInt < 0)
      {
        paramStringBuffer.append(65533);
        paramStringBuffer.append(65533);
        return;
      }
      clc.a(paramStringBuffer, paramInt, 2);
    }
    
    public final void a(StringBuffer paramStringBuffer, cic paramcic, Locale paramLocale)
    {
      int i = a(paramcic);
      if (i < 0)
      {
        paramStringBuffer.append(65533);
        paramStringBuffer.append(65533);
        return;
      }
      clc.a(paramStringBuffer, i, 2);
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
    extends cky.f
  {
    protected n(chj paramchj, int paramInt, boolean paramBoolean)
    {
      super(paramInt, paramBoolean);
    }
    
    public final int a()
    {
      return b;
    }
    
    public final void a(StringBuffer paramStringBuffer, long paramLong, chg paramchg, int paramInt, chl paramchl, Locale paramLocale)
    {
      try
      {
        clc.a(paramStringBuffer, a.a(paramchg).a(paramLong));
        return;
      }
      catch (RuntimeException paramchg)
      {
        paramStringBuffer.append(65533);
      }
    }
    
    public final void a(StringBuffer paramStringBuffer, cic paramcic, Locale paramLocale)
    {
      if (paramcic.b(a)) {
        try
        {
          clc.a(paramStringBuffer, paramcic.a(a));
          return;
        }
        catch (RuntimeException paramcic)
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
 * Qualified Name:     cky
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */