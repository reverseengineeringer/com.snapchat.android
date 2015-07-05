import java.io.ByteArrayOutputStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

final class bnn$a
{
  final List<bnl> a = new ArrayList();
  final bzw b;
  int c = 4096;
  int d = 4096;
  bnl[] e = new bnl[8];
  int f = e.length - 1;
  int g = 0;
  int h = 0;
  
  bnn$a(caj paramcaj)
  {
    b = cad.a(paramcaj);
  }
  
  private void c()
  {
    a.clear();
    Arrays.fill(e, null);
    f = (e.length - 1);
    g = 0;
    h = 0;
  }
  
  static boolean c(int paramInt)
  {
    return (paramInt >= 0) && (paramInt <= bnn.a().length - 1);
  }
  
  private int d()
  {
    return b.f() & 0xFF;
  }
  
  private int d(int paramInt)
  {
    int i = 0;
    int k = 0;
    if (paramInt > 0)
    {
      i = e.length - 1;
      int j = paramInt;
      paramInt = k;
      while ((i >= f) && (j > 0))
      {
        j -= e[i].j;
        h -= e[i].j;
        g -= 1;
        paramInt += 1;
        i -= 1;
      }
      System.arraycopy(e, f + 1, e, f + 1 + paramInt, g);
      f += paramInt;
      i = paramInt;
    }
    return i;
  }
  
  final int a(int paramInt)
  {
    return f + 1 + paramInt;
  }
  
  final int a(int paramInt1, int paramInt2)
  {
    paramInt1 &= paramInt2;
    if (paramInt1 < paramInt2) {
      return paramInt1;
    }
    paramInt1 = 0;
    int i;
    for (;;)
    {
      i = d();
      if ((i & 0x80) == 0) {
        break;
      }
      paramInt2 += ((i & 0x7F) << paramInt1);
      paramInt1 += 7;
    }
    return (i << paramInt1) + paramInt2;
  }
  
  final void a()
  {
    if (d < h)
    {
      if (d == 0) {
        c();
      }
    }
    else {
      return;
    }
    d(h - d);
  }
  
  final void a(bnl parambnl)
  {
    a.add(parambnl);
    int i = j;
    if (i > d)
    {
      c();
      return;
    }
    d(h + i - d);
    if (g + 1 > e.length)
    {
      bnl[] arrayOfbnl = new bnl[e.length * 2];
      System.arraycopy(e, 0, arrayOfbnl, e.length, e.length);
      f = (e.length - 1);
      e = arrayOfbnl;
    }
    int j = f;
    f = (j - 1);
    e[j] = parambnl;
    g += 1;
    h = (i + h);
  }
  
  final bzx b()
  {
    int j = 0;
    int k = d();
    int i;
    bnp localbnp;
    byte[] arrayOfByte;
    ByteArrayOutputStream localByteArrayOutputStream;
    bnp.a locala1;
    if ((k & 0x80) == 128)
    {
      i = 1;
      k = a(k, 127);
      if (i != 0)
      {
        localbnp = bnp.a();
        arrayOfByte = b.e(k);
        localByteArrayOutputStream = new ByteArrayOutputStream();
        locala1 = a;
        k = 0;
        i = 0;
      }
    }
    else
    {
      int m;
      bnp.a locala2;
      for (;;)
      {
        m = i;
        locala2 = locala1;
        if (j >= arrayOfByte.length) {
          break label183;
        }
        k = k << 8 | arrayOfByte[j] & 0xFF;
        i += 8;
        for (;;)
        {
          if (i < 8) {
            break label176;
          }
          locala1 = a[(k >>> i - 8 & 0xFF)];
          if (a == null)
          {
            localByteArrayOutputStream.write(b);
            i -= c;
            locala1 = a;
            continue;
            i = 0;
            break;
          }
          i -= 8;
        }
        label176:
        j += 1;
      }
      label183:
      while (m > 0)
      {
        locala1 = a[(k << 8 - m & 0xFF)];
        if ((a != null) || (c > m)) {
          break;
        }
        localByteArrayOutputStream.write(b);
        m -= c;
        locala2 = a;
      }
      return bzx.a(localByteArrayOutputStream.toByteArray());
    }
    return b.c(k);
  }
  
  final bzx b(int paramInt)
  {
    if (c(paramInt)) {
      return ah;
    }
    return e[a(paramInt - bnn.a().length)].h;
  }
}

/* Location:
 * Qualified Name:     bnn.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */