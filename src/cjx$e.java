final class cjx$e
  implements cjy
{
  private final cjy[] a;
  private final int b;
  
  cjx$e(cjy[] paramArrayOfcjy)
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

/* Location:
 * Qualified Name:     cjx.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */