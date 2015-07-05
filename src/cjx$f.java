abstract class cjx$f
  implements cjy, cka
{
  protected final cgi a;
  protected final int b;
  protected final boolean c;
  
  cjx$f(cgi paramcgi, int paramInt, boolean paramBoolean)
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

/* Location:
 * Qualified Name:     cjx.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */