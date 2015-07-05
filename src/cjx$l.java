import java.util.Locale;

final class cjx$l
  implements cjy, cka
{
  private final String a;
  private final String b;
  private final boolean c;
  private final int d;
  private final int e;
  
  cjx$l(String paramString1, String paramString2, boolean paramBoolean, int paramInt)
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

/* Location:
 * Qualified Name:     cjx.l
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */