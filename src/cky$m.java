import java.util.Locale;

final class cky$m
  implements ckz, clb
{
  private final chj a;
  private final int b;
  private final boolean c;
  
  cky$m(chj paramchj, int paramInt, boolean paramBoolean)
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

/* Location:
 * Qualified Name:     cky.m
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */