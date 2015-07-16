final class cky$e
  implements ckz
{
  private final ckz[] a;
  private final int b;
  
  cky$e(ckz[] paramArrayOfckz)
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

/* Location:
 * Qualified Name:     cky.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */