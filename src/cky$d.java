import java.io.IOException;
import java.util.Locale;

final class cky$d
  implements ckz, clb
{
  protected int a;
  protected int b;
  private final chj c;
  
  protected cky$d(chj paramchj, int paramInt1, int paramInt2)
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

/* Location:
 * Qualified Name:     cky.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */