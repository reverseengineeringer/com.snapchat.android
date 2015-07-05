package android.support.v7.widget;

import android.util.SparseIntArray;

public abstract class GridLayoutManager$b
{
  final SparseIntArray a = new SparseIntArray();
  private boolean b = false;
  
  public abstract int a(int paramInt);
  
  public int a(int paramInt1, int paramInt2)
  {
    int n = a(paramInt1);
    if (n == paramInt2) {
      return 0;
    }
    int j;
    int i;
    int k;
    if ((b) && (a.size() > 0))
    {
      j = a.size() - 1;
      i = 0;
      while (i <= j)
      {
        k = i + j >>> 1;
        if (a.keyAt(k) < paramInt1) {
          i = k + 1;
        } else {
          j = k - 1;
        }
      }
      i -= 1;
      if ((i >= 0) && (i < a.size()))
      {
        i = a.keyAt(i);
        if (i < 0) {
          break label216;
        }
        j = a.get(i) + a(i);
        k = i + 1;
        i = j;
        j = k;
      }
    }
    for (;;)
    {
      label149:
      if (j < paramInt1)
      {
        k = a(j);
        int m = i + k;
        if (m == paramInt2) {
          i = 0;
        }
        for (;;)
        {
          j += 1;
          break label149;
          i = -1;
          break;
          i = k;
          if (m <= paramInt2) {
            i = m;
          }
        }
      }
      if (i + n > paramInt2) {
        break;
      }
      return i;
      label216:
      j = 0;
      i = 0;
    }
  }
  
  final int b(int paramInt1, int paramInt2)
  {
    int i;
    if (!b) {
      i = a(paramInt1, paramInt2);
    }
    int j;
    do
    {
      return i;
      j = a.get(paramInt1, -1);
      i = j;
    } while (j != -1);
    paramInt2 = a(paramInt1, paramInt2);
    a.put(paramInt1, paramInt2);
    return paramInt2;
  }
  
  public final int c(int paramInt1, int paramInt2)
  {
    int n = a(paramInt1);
    int k = 0;
    int i = 0;
    int j = 0;
    int m;
    if (k < paramInt1)
    {
      m = a(k);
      j += m;
      if (j == paramInt2)
      {
        j = i + 1;
        i = 0;
      }
    }
    for (;;)
    {
      m = k + 1;
      k = i;
      i = j;
      j = k;
      k = m;
      break;
      if (j > paramInt2)
      {
        j = i + 1;
        i = m;
        continue;
        paramInt1 = i;
        if (j + n > paramInt2) {
          paramInt1 = i + 1;
        }
        return paramInt1;
      }
      else
      {
        m = j;
        j = i;
        i = m;
      }
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v7.widget.GridLayoutManager.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */