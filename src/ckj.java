import java.io.DataInput;
import java.io.IOException;
import java.util.Arrays;

public final class ckj
{
  static long a(DataInput paramDataInput)
  {
    int i = paramDataInput.readUnsignedByte();
    switch (i >> 6)
    {
    default: 
      return (i << 26 >> 26) * 1800000L;
    case 1: 
      return (i << 26 >> 2 | paramDataInput.readUnsignedByte() << 16 | paramDataInput.readUnsignedByte() << 8 | paramDataInput.readUnsignedByte()) * 60000L;
    case 2: 
      return (i << 58 >> 26 | paramDataInput.readUnsignedByte() << 24 | paramDataInput.readUnsignedByte() << 16 | paramDataInput.readUnsignedByte() << 8 | paramDataInput.readUnsignedByte()) * 1000L;
    }
    return paramDataInput.readLong();
  }
  
  public static cgk a(DataInput paramDataInput, String paramString)
  {
    switch (paramDataInput.readUnsignedByte())
    {
    default: 
      throw new IOException("Invalid encoding");
    case 70: 
      paramString = new ckl(paramString, paramDataInput.readUTF(), (int)a(paramDataInput), (int)a(paramDataInput));
      paramDataInput = paramString;
      if (paramString.equals(cgk.a)) {
        paramDataInput = cgk.a;
      }
      return paramDataInput;
    case 67: 
      return cki.a(ckj.c.a(paramDataInput, paramString));
    }
    return ckj.c.a(paramDataInput, paramString);
  }
  
  static final class a
    extends cgk
  {
    final int d;
    final ckj.d e;
    final ckj.d f;
    
    a(String paramString, int paramInt, ckj.d paramd1, ckj.d paramd2)
    {
      super();
      d = paramInt;
      e = paramd1;
      f = paramd2;
    }
    
    private ckj.d h(long paramLong)
    {
      int i = d;
      ckj.d locald1 = e;
      ckj.d locald2 = f;
      try
      {
        l1 = locald1.a(paramLong, i, c);
        try
        {
          long l2 = locald2.a(paramLong, i, c);
          paramLong = l2;
        }
        catch (ArithmeticException localArithmeticException2)
        {
          for (;;) {}
        }
        catch (IllegalArgumentException localIllegalArgumentException2)
        {
          for (;;) {}
        }
        if (l1 > paramLong) {
          return locald1;
        }
      }
      catch (IllegalArgumentException localIllegalArgumentException1)
      {
        for (;;)
        {
          l1 = paramLong;
        }
      }
      catch (ArithmeticException localArithmeticException1)
      {
        for (;;)
        {
          long l1 = paramLong;
        }
      }
      return locald2;
    }
    
    public final String a(long paramLong)
    {
      return hb;
    }
    
    public final int b(long paramLong)
    {
      return d + hc;
    }
    
    public final boolean c()
    {
      return false;
    }
    
    public final boolean equals(Object paramObject)
    {
      if (this == paramObject) {}
      do
      {
        return true;
        if (!(paramObject instanceof a)) {
          break;
        }
        paramObject = (a)paramObject;
      } while ((c.equals(c)) && (d == d) && (e.equals(e)) && (f.equals(f)));
      return false;
      return false;
    }
    
    public final long f(long paramLong)
    {
      int i = d;
      ckj.d locald1 = e;
      ckj.d locald2 = f;
      for (;;)
      {
        long l2;
        long l1;
        try
        {
          l2 = locald1.a(paramLong, i, c);
          l1 = l2;
          if (paramLong > 0L)
          {
            l1 = l2;
            if (l2 < 0L) {
              l1 = paramLong;
            }
          }
        }
        catch (IllegalArgumentException localIllegalArgumentException2)
        {
          l1 = paramLong;
          continue;
        }
        catch (ArithmeticException localArithmeticException2)
        {
          l1 = paramLong;
          continue;
        }
        try
        {
          l2 = locald2.a(paramLong, i, c);
          if ((paramLong <= 0L) || (l2 >= 0L)) {
            break label120;
          }
        }
        catch (IllegalArgumentException localIllegalArgumentException1)
        {
          continue;
        }
        catch (ArithmeticException localArithmeticException1)
        {
          continue;
        }
        if (l1 > paramLong) {
          return paramLong;
        }
        return l1;
        label120:
        paramLong = l2;
      }
    }
    
    public final long g(long paramLong)
    {
      paramLong += 1L;
      int i = d;
      ckj.d locald1 = e;
      ckj.d locald2 = f;
      try
      {
        l2 = locald1.b(paramLong, i, c);
        l1 = l2;
        if (paramLong < 0L)
        {
          l1 = l2;
          if (l2 > 0L) {
            l1 = paramLong;
          }
        }
      }
      catch (IllegalArgumentException localIllegalArgumentException2)
      {
        for (;;)
        {
          l1 = paramLong;
        }
      }
      catch (ArithmeticException localArithmeticException2)
      {
        for (;;)
        {
          label86:
          long l1 = paramLong;
        }
      }
      try
      {
        l2 = locald2.b(paramLong, i, c);
        if ((paramLong >= 0L) || (l2 <= 0L)) {
          break label131;
        }
      }
      catch (IllegalArgumentException localIllegalArgumentException1)
      {
        break label86;
      }
      catch (ArithmeticException localArithmeticException1)
      {
        break label86;
        paramLong = l2;
        break label86;
      }
      l2 = paramLong;
      if (l1 > paramLong) {
        l2 = l1;
      }
      return l2 - 1L;
    }
  }
  
  static final class b
  {
    final char a;
    final int b;
    final int c;
    final int d;
    final boolean e;
    final int f;
    
    b(char paramChar, int paramInt1, int paramInt2, int paramInt3, boolean paramBoolean, int paramInt4)
    {
      if ((paramChar != 'u') && (paramChar != 'w') && (paramChar != 's')) {
        throw new IllegalArgumentException("Unknown mode: " + paramChar);
      }
      a = paramChar;
      b = paramInt1;
      c = paramInt2;
      d = paramInt3;
      e = paramBoolean;
      f = paramInt4;
    }
    
    private long d(cgf paramcgf, long paramLong)
    {
      if (c >= 0) {
        return paramcgf.u().b(paramLong, c);
      }
      paramLong = paramcgf.u().b(paramLong, 1);
      paramLong = paramcgf.C().a(paramLong, 1);
      return paramcgf.u().a(paramLong, c);
    }
    
    final long a(cgf paramcgf, long paramLong)
    {
      try
      {
        long l = d(paramcgf, paramLong);
        return l;
      }
      catch (IllegalArgumentException localIllegalArgumentException)
      {
        if ((b == 2) && (c == 29))
        {
          while (!paramcgf.E().b(paramLong)) {
            paramLong = paramcgf.E().a(paramLong, 1);
          }
          return d(paramcgf, paramLong);
        }
        throw localIllegalArgumentException;
      }
    }
    
    final long b(cgf paramcgf, long paramLong)
    {
      try
      {
        long l = d(paramcgf, paramLong);
        return l;
      }
      catch (IllegalArgumentException localIllegalArgumentException)
      {
        if ((b == 2) && (c == 29))
        {
          while (!paramcgf.E().b(paramLong)) {
            paramLong = paramcgf.E().a(paramLong, -1);
          }
          return d(paramcgf, paramLong);
        }
        throw localIllegalArgumentException;
      }
    }
    
    final long c(cgf paramcgf, long paramLong)
    {
      int i = paramcgf.t().a(paramLong);
      int j = d - i;
      long l = paramLong;
      if (j != 0)
      {
        if (!e) {
          break label65;
        }
        i = j;
        if (j < 0) {
          i = j + 7;
        }
      }
      for (;;)
      {
        l = paramcgf.t().a(paramLong, i);
        return l;
        label65:
        i = j;
        if (j > 0) {
          i = j - 7;
        }
      }
    }
    
    public final boolean equals(Object paramObject)
    {
      if (this == paramObject) {}
      do
      {
        return true;
        if (!(paramObject instanceof b)) {
          break;
        }
        paramObject = (b)paramObject;
      } while ((a == a) && (b == b) && (c == c) && (d == d) && (e == e) && (f == f));
      return false;
      return false;
    }
  }
  
  static final class c
    extends cgk
  {
    private final long[] d;
    private final int[] e;
    private final int[] f;
    private final String[] g;
    private final ckj.a h;
    
    private c(String paramString, long[] paramArrayOfLong, int[] paramArrayOfInt1, int[] paramArrayOfInt2, String[] paramArrayOfString, ckj.a parama)
    {
      super();
      d = paramArrayOfLong;
      e = paramArrayOfInt1;
      f = paramArrayOfInt2;
      g = paramArrayOfString;
      h = parama;
    }
    
    static c a(DataInput paramDataInput, String paramString)
    {
      int k = paramDataInput.readUnsignedShort();
      Object localObject = new String[k];
      int i = 0;
      while (i < k)
      {
        localObject[i] = paramDataInput.readUTF();
        i += 1;
      }
      int m = paramDataInput.readInt();
      long[] arrayOfLong = new long[m];
      int[] arrayOfInt1 = new int[m];
      int[] arrayOfInt2 = new int[m];
      String[] arrayOfString = new String[m];
      i = 0;
      for (;;)
      {
        int j;
        if (i < m)
        {
          arrayOfLong[i] = ckj.a(paramDataInput);
          arrayOfInt1[i] = ((int)ckj.a(paramDataInput));
          arrayOfInt2[i] = ((int)ckj.a(paramDataInput));
          if (k < 256) {}
          try
          {
            j = paramDataInput.readUnsignedByte();
          }
          catch (ArrayIndexOutOfBoundsException paramDataInput)
          {
            throw new IOException("Invalid encoding");
          }
          j = paramDataInput.readUnsignedShort();
        }
        else
        {
          localObject = null;
          if (paramDataInput.readBoolean()) {
            localObject = new ckj.a(paramString, (int)ckj.a(paramDataInput), ckj.d.a(paramDataInput), ckj.d.a(paramDataInput));
          }
          return new c(paramString, arrayOfLong, arrayOfInt1, arrayOfInt2, arrayOfString, (ckj.a)localObject);
        }
        arrayOfString[i] = localObject[j];
        i += 1;
      }
    }
    
    public final String a(long paramLong)
    {
      long[] arrayOfLong = d;
      int i = Arrays.binarySearch(arrayOfLong, paramLong);
      if (i >= 0) {
        return g[i];
      }
      i ^= 0xFFFFFFFF;
      if (i < arrayOfLong.length)
      {
        if (i > 0) {
          return g[(i - 1)];
        }
        return "UTC";
      }
      if (h == null) {
        return g[(i - 1)];
      }
      return h.a(paramLong);
    }
    
    public final int b(long paramLong)
    {
      long[] arrayOfLong = d;
      int i = Arrays.binarySearch(arrayOfLong, paramLong);
      if (i >= 0) {
        return e[i];
      }
      i ^= 0xFFFFFFFF;
      if (i < arrayOfLong.length)
      {
        if (i > 0) {
          return e[(i - 1)];
        }
        return 0;
      }
      if (h == null) {
        return e[(i - 1)];
      }
      return h.b(paramLong);
    }
    
    public final boolean c()
    {
      return false;
    }
    
    public final boolean equals(Object paramObject)
    {
      if (this == paramObject) {}
      do
      {
        return true;
        if (!(paramObject instanceof c)) {
          break label121;
        }
        paramObject = (c)paramObject;
        if ((!c.equals(c)) || (!Arrays.equals(d, d)) || (!Arrays.equals(g, g)) || (!Arrays.equals(e, e)) || (!Arrays.equals(f, f))) {
          break;
        }
        if (h != null) {
          break label105;
        }
      } while (h == null);
      label105:
      while (!h.equals(h)) {
        return false;
      }
      return true;
      label121:
      return false;
    }
    
    public final long f(long paramLong)
    {
      long[] arrayOfLong = d;
      int i = Arrays.binarySearch(arrayOfLong, paramLong);
      if (i >= 0)
      {
        i += 1;
        if (i >= arrayOfLong.length) {
          break label44;
        }
        l1 = arrayOfLong[i];
      }
      label44:
      do
      {
        return l1;
        i ^= 0xFFFFFFFF;
        break;
        l1 = paramLong;
      } while (h == null);
      long l2 = arrayOfLong[(arrayOfLong.length - 1)];
      long l1 = paramLong;
      if (paramLong < l2) {
        l1 = l2;
      }
      return h.f(l1);
    }
    
    public final long g(long paramLong)
    {
      long[] arrayOfLong = d;
      int i = Arrays.binarySearch(arrayOfLong, paramLong);
      long l1;
      if (i >= 0)
      {
        l1 = paramLong;
        if (paramLong > Long.MIN_VALUE) {
          l1 = paramLong - 1L;
        }
      }
      long l2;
      do
      {
        do
        {
          do
          {
            return l1;
            i ^= 0xFFFFFFFF;
            if (i >= arrayOfLong.length) {
              break;
            }
            l1 = paramLong;
          } while (i <= 0);
          l2 = arrayOfLong[(i - 1)];
          l1 = paramLong;
        } while (l2 <= Long.MIN_VALUE);
        return l2 - 1L;
        if (h != null)
        {
          l1 = h.g(paramLong);
          if (l1 < paramLong) {
            return l1;
          }
        }
        l2 = arrayOfLong[(i - 1)];
        l1 = paramLong;
      } while (l2 <= Long.MIN_VALUE);
      return l2 - 1L;
    }
  }
  
  static final class d
  {
    final ckj.b a;
    final String b;
    final int c;
    
    private d(ckj.b paramb, String paramString, int paramInt)
    {
      a = paramb;
      b = paramString;
      c = paramInt;
    }
    
    static d a(DataInput paramDataInput)
    {
      return new d(new ckj.b((char)paramDataInput.readUnsignedByte(), paramDataInput.readUnsignedByte(), paramDataInput.readByte(), paramDataInput.readUnsignedByte(), paramDataInput.readBoolean(), (int)ckj.a(paramDataInput)), paramDataInput.readUTF(), (int)ckj.a(paramDataInput));
    }
    
    public final long a(long paramLong, int paramInt1, int paramInt2)
    {
      ckj.b localb = a;
      long l2;
      cic localcic;
      long l1;
      if (a == 'w')
      {
        paramInt1 += paramInt2;
        l2 = paramInt1 + paramLong;
        localcic = cic.L();
        paramLong = localcic.C().b(l2, b);
        paramLong = localcic.e().b(paramLong, 0);
        l1 = localb.a(localcic, localcic.e().a(paramLong, f));
        if (d != 0) {
          break label140;
        }
        paramLong = l1;
        if (l1 <= l2) {
          paramLong = localb.a(localcic, localcic.E().a(l1, 1));
        }
      }
      for (;;)
      {
        return paramLong - paramInt1;
        if (a == 's') {
          break;
        }
        paramInt1 = 0;
        break;
        label140:
        l1 = localb.c(localcic, l1);
        paramLong = l1;
        if (l1 <= l2)
        {
          paramLong = localcic.E().a(l1, 1);
          paramLong = localb.c(localcic, localb.a(localcic, localcic.C().b(paramLong, b)));
        }
      }
    }
    
    public final long b(long paramLong, int paramInt1, int paramInt2)
    {
      ckj.b localb = a;
      long l2;
      cic localcic;
      long l1;
      if (a == 'w')
      {
        paramInt1 += paramInt2;
        l2 = paramInt1 + paramLong;
        localcic = cic.L();
        paramLong = localcic.C().b(l2, b);
        paramLong = localcic.e().b(paramLong, 0);
        l1 = localb.b(localcic, localcic.e().a(paramLong, f));
        if (d != 0) {
          break label140;
        }
        paramLong = l1;
        if (l1 >= l2) {
          paramLong = localb.b(localcic, localcic.E().a(l1, -1));
        }
      }
      for (;;)
      {
        return paramLong - paramInt1;
        if (a == 's') {
          break;
        }
        paramInt1 = 0;
        break;
        label140:
        l1 = localb.c(localcic, l1);
        paramLong = l1;
        if (l1 >= l2)
        {
          paramLong = localcic.E().a(l1, -1);
          paramLong = localb.c(localcic, localb.b(localcic, localcic.C().b(paramLong, b)));
        }
      }
    }
    
    public final boolean equals(Object paramObject)
    {
      if (this == paramObject) {}
      do
      {
        return true;
        if (!(paramObject instanceof d)) {
          break;
        }
        paramObject = (d)paramObject;
      } while ((c == c) && (b.equals(b)) && (a.equals(a)));
      return false;
      return false;
    }
  }
}

/* Location:
 * Qualified Name:     ckj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */