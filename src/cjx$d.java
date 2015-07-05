import java.io.IOException;
import java.util.Locale;

final class cjx$d
  implements cjy, cka
{
  protected int a;
  protected int b;
  private final cgi c;
  
  protected cjx$d(cgi paramcgi, int paramInt1, int paramInt2)
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

/* Location:
 * Qualified Name:     cjx.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */