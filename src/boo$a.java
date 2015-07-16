import java.io.ByteArrayOutputStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

final class boo$a
{
  final List<bom> a = new ArrayList();
  final cax b;
  int c = 4096;
  int d = 4096;
  bom[] e = new bom[8];
  int f = e.length - 1;
  int g = 0;
  int h = 0;
  
  boo$a(cbk paramcbk)
  {
    b = cbe.a(paramcbk);
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
    return (paramInt >= 0) && (paramInt <= boo.a().length - 1);
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
  
  final void a(bom parambom)
  {
    a.add(parambom);
    int i = j;
    if (i > d)
    {
      c();
      return;
    }
    d(h + i - d);
    if (g + 1 > e.length)
    {
      bom[] arrayOfbom = new bom[e.length * 2];
      System.arraycopy(e, 0, arrayOfbom, e.length, e.length);
      f = (e.length - 1);
      e = arrayOfbom;
    }
    int j = f;
    f = (j - 1);
    e[j] = parambom;
    g += 1;
    h = (i + h);
  }
  
  final cay b()
  {
    int j = 0;
    int k = d();
    int i;
    boq localboq;
    byte[] arrayOfByte;
    ByteArrayOutputStream localByteArrayOutputStream;
    boq.a locala1;
    if ((k & 0x80) == 128)
    {
      i = 1;
      k = a(k, 127);
      if (i != 0)
      {
        localboq = boq.a();
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
      boq.a locala2;
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
      return cay.a(localByteArrayOutputStream.toByteArray());
    }
    return b.c(k);
  }
  
  final cay b(int paramInt)
  {
    if (c(paramInt)) {
      return ah;
    }
    return e[a(paramInt - boo.a().length)].h;
  }
}

/* Location:
 * Qualified Name:     boo.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */