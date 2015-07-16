import java.io.EOFException;
import java.io.InputStream;
import java.nio.charset.Charset;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public final class cav
  implements caw, cax, Cloneable
{
  private static final byte[] c = { 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 97, 98, 99, 100, 101, 102 };
  cbh a;
  public long b;
  
  private String a(long paramLong, Charset paramCharset)
  {
    cbm.a(b, 0L, paramLong);
    if (paramCharset == null) {
      throw new IllegalArgumentException("charset == null");
    }
    if (paramLong > 2147483647L) {
      throw new IllegalArgumentException("byteCount > Integer.MAX_VALUE: " + paramLong);
    }
    if (paramLong == 0L) {
      paramCharset = "";
    }
    cbh localcbh;
    String str;
    do
    {
      return paramCharset;
      localcbh = a;
      if (b + paramLong > c) {
        return new String(e(paramLong), paramCharset);
      }
      str = new String(a, b, (int)paramLong, paramCharset);
      b = ((int)(b + paramLong));
      b -= paramLong;
      paramCharset = str;
    } while (b != c);
    a = localcbh.a();
    cbi.a(localcbh);
    return str;
  }
  
  private void c(byte[] paramArrayOfByte)
  {
    int i = 0;
    while (i < paramArrayOfByte.length)
    {
      int j = a(paramArrayOfByte, i, paramArrayOfByte.length - i);
      if (j == -1) {
        throw new EOFException();
      }
      i += j;
    }
  }
  
  private String k(long paramLong)
  {
    return a(paramLong, cbm.a);
  }
  
  private String r()
  {
    try
    {
      String str = a(b, cbm.a);
      return str;
    }
    catch (EOFException localEOFException)
    {
      throw new AssertionError(localEOFException);
    }
  }
  
  private cav s()
  {
    cav localcav = new cav();
    if (b == 0L) {
      return localcav;
    }
    a = new cbh(a);
    cbh localcbh1 = a;
    cbh localcbh2 = a;
    cbh localcbh3 = a;
    g = localcbh3;
    f = localcbh3;
    for (localcbh1 = a.f; localcbh1 != a; localcbh1 = f) {
      a.g.a(new cbh(localcbh1));
    }
    b = b;
    return localcav;
  }
  
  public final cbl E_()
  {
    return cbl.b;
  }
  
  public final int a(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    cbm.a(paramArrayOfByte.length, paramInt1, paramInt2);
    cbh localcbh = a;
    if (localcbh == null) {
      paramInt1 = -1;
    }
    do
    {
      return paramInt1;
      paramInt2 = Math.min(paramInt2, c - b);
      System.arraycopy(a, b, paramArrayOfByte, paramInt1, paramInt2);
      b += paramInt2;
      b -= paramInt2;
      paramInt1 = paramInt2;
    } while (b != c);
    a = localcbh.a();
    cbi.a(localcbh);
    return paramInt2;
  }
  
  public final long a(byte paramByte)
  {
    return a(paramByte, 0L);
  }
  
  public final long a(byte paramByte, long paramLong)
  {
    if (paramLong < 0L) {
      throw new IllegalArgumentException("fromIndex < 0");
    }
    Object localObject1 = a;
    if (localObject1 == null) {
      return -1L;
    }
    long l1 = 0L;
    int i = c - b;
    if (paramLong >= i) {}
    for (paramLong -= i;; paramLong = 0L)
    {
      l1 += i;
      Object localObject2 = f;
      localObject1 = localObject2;
      if (localObject2 != a) {
        break;
      }
      return -1L;
      localObject2 = a;
      paramLong = b + paramLong;
      long l2 = c;
      while (paramLong < l2)
      {
        if (localObject2[((int)paramLong)] == paramByte) {
          return l1 + paramLong - b;
        }
        paramLong += 1L;
      }
    }
  }
  
  public final long a(cav paramcav, long paramLong)
  {
    if (paramcav == null) {
      throw new IllegalArgumentException("sink == null");
    }
    if (paramLong < 0L) {
      throw new IllegalArgumentException("byteCount < 0: " + paramLong);
    }
    if (b == 0L) {
      return -1L;
    }
    long l = paramLong;
    if (paramLong > b) {
      l = b;
    }
    paramcav.a_(this, l);
    return l;
  }
  
  public final long a(cbk paramcbk)
  {
    if (paramcbk == null) {
      throw new IllegalArgumentException("source == null");
    }
    long l2;
    for (long l1 = 0L;; l1 += l2)
    {
      l2 = paramcbk.a(this, 2048L);
      if (l2 == -1L) {
        break;
      }
    }
    return l1;
  }
  
  public final cav a(int paramInt)
  {
    cbh localcbh = d(1);
    byte[] arrayOfByte = a;
    int i = c;
    c = (i + 1);
    arrayOfByte[i] = ((byte)paramInt);
    b += 1L;
    return this;
  }
  
  public final cav a(cav paramcav, long paramLong1, long paramLong2)
  {
    if (paramcav == null) {
      throw new IllegalArgumentException("out == null");
    }
    cbm.a(b, paramLong1, paramLong2);
    if (paramLong2 == 0L) {
      return this;
    }
    b += paramLong2;
    cbh localcbh2;
    long l1;
    long l2;
    for (cbh localcbh1 = a;; localcbh1 = f)
    {
      localcbh2 = localcbh1;
      l1 = paramLong1;
      l2 = paramLong2;
      if (paramLong1 < c - b) {
        break;
      }
      paramLong1 -= c - b;
    }
    label103:
    if (l2 > 0L)
    {
      localcbh1 = new cbh(localcbh2);
      b = ((int)(b + l1));
      c = Math.min(b + (int)l2, c);
      if (a != null) {
        break label215;
      }
      g = localcbh1;
      f = localcbh1;
      a = localcbh1;
    }
    for (;;)
    {
      l2 -= c - b;
      localcbh2 = f;
      l1 = 0L;
      break label103;
      break;
      label215:
      a.g.a(localcbh1);
    }
  }
  
  public final cav a(cay paramcay)
  {
    if (paramcay == null) {
      throw new IllegalArgumentException("byteString == null");
    }
    b(c, 0, c.length);
    return this;
  }
  
  public final cav a(String paramString)
  {
    if (paramString == null) {
      throw new IllegalArgumentException("string == null");
    }
    int k = paramString.length();
    int i = 0;
    while (i < k)
    {
      int m = paramString.charAt(i);
      int j;
      if (m < 128)
      {
        cbh localcbh = d(1);
        byte[] arrayOfByte = a;
        int n = c - i;
        int i1 = Math.min(k, 2048 - n);
        j = i + 1;
        arrayOfByte[(i + n)] = ((byte)m);
        i = j;
        while (i < i1)
        {
          j = paramString.charAt(i);
          if (j >= 128) {
            break;
          }
          arrayOfByte[(i + n)] = ((byte)j);
          i += 1;
        }
        j = i + n - c;
        c += j;
        b += j;
      }
      else if (m < 2048)
      {
        a(m >> 6 | 0xC0);
        a(m & 0x3F | 0x80);
        i += 1;
      }
      else if ((m < 55296) || (m > 57343))
      {
        a(m >> 12 | 0xE0);
        a(m >> 6 & 0x3F | 0x80);
        a(m & 0x3F | 0x80);
        i += 1;
      }
      else
      {
        if (i + 1 < k) {}
        for (j = paramString.charAt(i + 1);; j = 0)
        {
          if ((m <= 56319) && (j >= 56320) && (j <= 57343)) {
            break label330;
          }
          a(63);
          i += 1;
          break;
        }
        label330:
        j = (j & 0xFFFF23FF | (m & 0xFFFF27FF) << 10) + 65536;
        a(j >> 18 | 0xF0);
        a(j >> 12 & 0x3F | 0x80);
        a(j >> 6 & 0x3F | 0x80);
        a(j & 0x3F | 0x80);
        i += 2;
      }
    }
    return this;
  }
  
  public final cav a(byte[] paramArrayOfByte)
  {
    if (paramArrayOfByte == null) {
      throw new IllegalArgumentException("source == null");
    }
    return b(paramArrayOfByte, 0, paramArrayOfByte.length);
  }
  
  public final void a(long paramLong)
  {
    if (b < paramLong) {
      throw new EOFException();
    }
  }
  
  public final void a_(cav paramcav, long paramLong)
  {
    if (paramcav == null) {
      throw new IllegalArgumentException("source == null");
    }
    if (paramcav == this) {
      throw new IllegalArgumentException("source == this");
    }
    cbm.a(b, 0L, paramLong);
    if (paramLong > 0L)
    {
      if (paramLong >= a.c - a.b) {
        break label269;
      }
      if (a == null) {
        break label160;
      }
      localcbh1 = a.g;
      if ((localcbh1 == null) || (!e)) {
        break label176;
      }
      l = c;
      if (!d) {
        break label166;
      }
    }
    label160:
    label166:
    for (int i = 0;; i = b)
    {
      if (l + paramLong - i > 2048L) {
        break label176;
      }
      a.a(localcbh1, (int)paramLong);
      b -= paramLong;
      b += paramLong;
      return;
      localcbh1 = null;
      break;
    }
    label176:
    cbh localcbh1 = a;
    i = (int)paramLong;
    if ((i <= 0) || (i > c - b)) {
      throw new IllegalArgumentException();
    }
    cbh localcbh2 = new cbh(localcbh1);
    c = (b + i);
    b = (i + b);
    g.a(localcbh2);
    a = localcbh2;
    label269:
    localcbh1 = a;
    long l = c - b;
    a = localcbh1.a();
    if (a == null)
    {
      a = localcbh1;
      localcbh1 = a;
      localcbh2 = a;
      cbh localcbh3 = a;
      g = localcbh3;
      f = localcbh3;
    }
    label504:
    for (;;)
    {
      b -= l;
      b += l;
      paramLong -= l;
      break;
      localcbh1 = a.g.a(localcbh1);
      if (g == localcbh1) {
        throw new IllegalStateException();
      }
      if (g.e)
      {
        int j = c - b;
        int k = g.c;
        if (g.d) {}
        for (i = 0;; i = g.b)
        {
          if (j > i + (2048 - k)) {
            break label504;
          }
          localcbh1.a(g, j);
          localcbh1.a();
          cbi.a(localcbh1);
          break;
        }
      }
    }
  }
  
  public final byte b(long paramLong)
  {
    cbm.a(b, paramLong, 1L);
    for (cbh localcbh = a;; localcbh = f)
    {
      int i = c - b;
      if (paramLong < i) {
        return a[(b + (int)paramLong)];
      }
      paramLong -= i;
    }
  }
  
  public final cav b()
  {
    return this;
  }
  
  public final cav b(int paramInt)
  {
    cbh localcbh = d(2);
    byte[] arrayOfByte = a;
    int i = c;
    int j = i + 1;
    arrayOfByte[i] = ((byte)(paramInt >>> 8 & 0xFF));
    arrayOfByte[j] = ((byte)(paramInt & 0xFF));
    c = (j + 1);
    b += 2L;
    return this;
  }
  
  public final cav b(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    if (paramArrayOfByte == null) {
      throw new IllegalArgumentException("source == null");
    }
    cbm.a(paramArrayOfByte.length, paramInt1, paramInt2);
    int i = paramInt1 + paramInt2;
    while (paramInt1 < i)
    {
      cbh localcbh = d(1);
      int j = Math.min(i - paramInt1, 2048 - c);
      System.arraycopy(paramArrayOfByte, paramInt1, a, c, j);
      paramInt1 += j;
      c = (j + c);
    }
    b += paramInt2;
    return this;
  }
  
  public final cav c(int paramInt)
  {
    cbh localcbh = d(4);
    byte[] arrayOfByte = a;
    int j = c;
    int i = j + 1;
    arrayOfByte[j] = ((byte)(paramInt >>> 24 & 0xFF));
    j = i + 1;
    arrayOfByte[i] = ((byte)(paramInt >>> 16 & 0xFF));
    i = j + 1;
    arrayOfByte[j] = ((byte)(paramInt >>> 8 & 0xFF));
    arrayOfByte[i] = ((byte)(paramInt & 0xFF));
    c = (i + 1);
    b += 4L;
    return this;
  }
  
  public final caw c()
  {
    return this;
  }
  
  public final cay c(long paramLong)
  {
    return new cay(e(paramLong));
  }
  
  public final void close() {}
  
  final cbh d(int paramInt)
  {
    if ((paramInt <= 0) || (paramInt > 2048)) {
      throw new IllegalArgumentException();
    }
    cbh localcbh2;
    cbh localcbh1;
    if (a == null)
    {
      a = cbi.a();
      localcbh2 = a;
      cbh localcbh3 = a;
      localcbh1 = a;
      g = localcbh1;
      f = localcbh1;
    }
    do
    {
      return localcbh1;
      localcbh2 = a.g;
      if (c + paramInt > 2048) {
        break;
      }
      localcbh1 = localcbh2;
    } while (e);
    return localcbh2.a(cbi.a());
  }
  
  final String d(long paramLong)
  {
    if ((paramLong > 0L) && (b(paramLong - 1L) == 13))
    {
      str = k(paramLong - 1L);
      f(2L);
      return str;
    }
    String str = k(paramLong);
    f(1L);
    return str;
  }
  
  public final boolean d()
  {
    return b == 0L;
  }
  
  public final InputStream e()
  {
    new InputStream()
    {
      public final int available()
      {
        return (int)Math.min(b, 2147483647L);
      }
      
      public final void close() {}
      
      public final int read()
      {
        if (b > 0L) {
          return f() & 0xFF;
        }
        return -1;
      }
      
      public final int read(byte[] paramAnonymousArrayOfByte, int paramAnonymousInt1, int paramAnonymousInt2)
      {
        return a(paramAnonymousArrayOfByte, paramAnonymousInt1, paramAnonymousInt2);
      }
      
      public final String toString()
      {
        return cav.this + ".inputStream()";
      }
    };
  }
  
  public final byte[] e(long paramLong)
  {
    cbm.a(b, 0L, paramLong);
    if (paramLong > 2147483647L) {
      throw new IllegalArgumentException("byteCount > Integer.MAX_VALUE: " + paramLong);
    }
    byte[] arrayOfByte = new byte[(int)paramLong];
    c(arrayOfByte);
    return arrayOfByte;
  }
  
  public final boolean equals(Object paramObject)
  {
    long l1 = 0L;
    if (this == paramObject) {
      return true;
    }
    if (!(paramObject instanceof cav)) {
      return false;
    }
    paramObject = (cav)paramObject;
    if (b != b) {
      return false;
    }
    if (b == 0L) {
      return true;
    }
    Object localObject2 = a;
    paramObject = a;
    int j = b;
    int i = b;
    while (l1 < b)
    {
      long l2 = Math.min(c - j, c - i);
      int k = 0;
      while (k < l2)
      {
        if (a[j] != a[i]) {
          return false;
        }
        k += 1;
        i += 1;
        j += 1;
      }
      k = j;
      Object localObject1 = localObject2;
      if (j == c)
      {
        localObject1 = f;
        k = b;
      }
      j = i;
      Object localObject3 = paramObject;
      if (i == c)
      {
        localObject3 = f;
        j = b;
      }
      l1 += l2;
      i = j;
      j = k;
      localObject2 = localObject1;
      paramObject = localObject3;
    }
    return true;
  }
  
  public final byte f()
  {
    if (b == 0L) {
      throw new IllegalStateException("size == 0");
    }
    cbh localcbh = a;
    int i = b;
    int j = c;
    byte[] arrayOfByte = a;
    int k = i + 1;
    byte b1 = arrayOfByte[i];
    b -= 1L;
    if (k == j)
    {
      a = localcbh.a();
      cbi.a(localcbh);
      return b1;
    }
    b = k;
    return b1;
  }
  
  public final void f(long paramLong)
  {
    while (paramLong > 0L)
    {
      if (a == null) {
        throw new EOFException();
      }
      int i = (int)Math.min(paramLong, a.c - a.b);
      b -= i;
      long l = paramLong - i;
      cbh localcbh = a;
      b = (i + b);
      paramLong = l;
      if (a.b == a.c)
      {
        localcbh = a;
        a = localcbh.a();
        cbi.a(localcbh);
        paramLong = l;
      }
    }
  }
  
  public final void flush() {}
  
  public final cav g(long paramLong)
  {
    if (paramLong == 0L) {
      return a(48);
    }
    if (paramLong < 0L)
    {
      paramLong = -paramLong;
      if (paramLong < 0L) {
        return a("-9223372036854775808");
      }
    }
    for (int j = 1;; j = 0)
    {
      int i;
      if (paramLong < 100000000L) {
        if (paramLong < 10000L) {
          if (paramLong < 100L) {
            if (paramLong < 10L) {
              i = 1;
            }
          }
        }
      }
      int k;
      cbh localcbh;
      byte[] arrayOfByte;
      for (;;)
      {
        k = i;
        if (j != 0) {
          k = i + 1;
        }
        localcbh = d(k);
        arrayOfByte = a;
        i = c + k;
        while (paramLong != 0L)
        {
          int m = (int)(paramLong % 10L);
          i -= 1;
          arrayOfByte[i] = c[m];
          paramLong /= 10L;
        }
        i = 2;
        continue;
        if (paramLong < 1000L)
        {
          i = 3;
        }
        else
        {
          i = 4;
          continue;
          if (paramLong < 1000000L)
          {
            if (paramLong < 100000L) {
              i = 5;
            } else {
              i = 6;
            }
          }
          else if (paramLong < 10000000L)
          {
            i = 7;
          }
          else
          {
            i = 8;
            continue;
            if (paramLong < 1000000000000L)
            {
              if (paramLong < 10000000000L)
              {
                if (paramLong < 1000000000L) {
                  i = 9;
                } else {
                  i = 10;
                }
              }
              else if (paramLong < 100000000000L) {
                i = 11;
              } else {
                i = 12;
              }
            }
            else if (paramLong < 1000000000000000L)
            {
              if (paramLong < 10000000000000L) {
                i = 13;
              } else if (paramLong < 100000000000000L) {
                i = 14;
              } else {
                i = 15;
              }
            }
            else if (paramLong < 100000000000000000L)
            {
              if (paramLong < 10000000000000000L) {
                i = 16;
              } else {
                i = 17;
              }
            }
            else if (paramLong < 1000000000000000000L) {
              i = 18;
            } else {
              i = 19;
            }
          }
        }
      }
      if (j != 0) {
        arrayOfByte[(i - 1)] = 45;
      }
      c += k;
      paramLong = b;
      b = (k + paramLong);
      return this;
    }
  }
  
  public final short g()
  {
    if (b < 2L) {
      throw new IllegalStateException("size < 2: " + b);
    }
    cbh localcbh = a;
    int k = b;
    int i = c;
    if (i - k < 2) {
      return (short)((f() & 0xFF) << 8 | f() & 0xFF);
    }
    byte[] arrayOfByte = a;
    int j = k + 1;
    k = arrayOfByte[k];
    int m = j + 1;
    j = arrayOfByte[j];
    b -= 2L;
    if (m == i)
    {
      a = localcbh.a();
      cbi.a(localcbh);
    }
    for (;;)
    {
      return (short)((k & 0xFF) << 8 | j & 0xFF);
      b = m;
    }
  }
  
  public final int h()
  {
    if (b < 4L) {
      throw new IllegalStateException("size < 4: " + b);
    }
    cbh localcbh = a;
    int j = b;
    int i = c;
    if (i - j < 4) {
      return (f() & 0xFF) << 24 | (f() & 0xFF) << 16 | (f() & 0xFF) << 8 | f() & 0xFF;
    }
    byte[] arrayOfByte = a;
    int k = j + 1;
    j = arrayOfByte[j];
    int n = k + 1;
    k = arrayOfByte[k];
    int m = n + 1;
    int i1 = arrayOfByte[n];
    n = m + 1;
    j = (j & 0xFF) << 24 | (k & 0xFF) << 16 | (i1 & 0xFF) << 8 | arrayOfByte[m] & 0xFF;
    b -= 4L;
    if (n == i)
    {
      a = localcbh.a();
      cbi.a(localcbh);
      return j;
    }
    b = n;
    return j;
  }
  
  public final cav h(long paramLong)
  {
    if (paramLong == 0L) {
      return a(48);
    }
    int j = Long.numberOfTrailingZeros(Long.highestOneBit(paramLong)) / 4 + 1;
    cbh localcbh = d(j);
    byte[] arrayOfByte = a;
    int i = c + j - 1;
    int k = c;
    while (i >= k)
    {
      arrayOfByte[i] = c[((int)(0xF & paramLong))];
      paramLong >>>= 4;
      i -= 1;
    }
    c += j;
    paramLong = b;
    b = (j + paramLong);
    return this;
  }
  
  public final int hashCode()
  {
    Object localObject = a;
    if (localObject == null) {
      return 0;
    }
    int j = 1;
    int i;
    cbh localcbh;
    do
    {
      int k = b;
      int m = c;
      for (i = j; k < m; i = j + i * 31)
      {
        j = a[k];
        k += 1;
      }
      localcbh = f;
      j = i;
      localObject = localcbh;
    } while (localcbh != a);
    return i;
  }
  
  public final short i()
  {
    return cbm.a(g());
  }
  
  public final int j()
  {
    return cbm.a(h());
  }
  
  public final long k()
  {
    if (b == 0L) {
      throw new IllegalStateException("size == 0");
    }
    long l2 = 0L;
    int n = 0;
    int i1 = 0;
    int i = 0;
    long l3 = -7L;
    Object localObject = a;
    byte[] arrayOfByte = a;
    int m = b;
    int i2 = c;
    long l1 = l2;
    int j = n;
    int k = i1;
    l2 = l3;
    n = i;
    if (m < i2)
    {
      n = arrayOfByte[m];
      if ((n >= 48) && (n <= 57))
      {
        i1 = 48 - n;
        if ((l1 < -922337203685477580L) || ((l1 == -922337203685477580L) && (i1 < l2)))
        {
          localObject = new cav().g(l1).a(n);
          if (k == 0) {
            ((cav)localObject).f();
          }
          throw new NumberFormatException("Number too large: " + ((cav)localObject).r());
        }
        l1 = l1 * 10L + i1;
      }
      for (;;)
      {
        m += 1;
        j += 1;
        break;
        if ((n != 45) || (j != 0)) {
          break label247;
        }
        k = 1;
        l2 -= 1L;
      }
      label247:
      if (j == 0) {
        throw new NumberFormatException("Expected leading [0-9] or '-' character but was 0x" + Integer.toHexString(n));
      }
      n = 1;
    }
    if (m == i2)
    {
      a = ((cbh)localObject).a();
      cbi.a((cbh)localObject);
    }
    for (;;)
    {
      if (n == 0)
      {
        l3 = l2;
        i = n;
        i1 = k;
        n = j;
        l2 = l1;
        if (a != null) {
          break;
        }
      }
      b -= j;
      if (k == 0) {
        break label361;
      }
      return l1;
      b = m;
    }
    label361:
    return -l1;
  }
  
  public final long l()
  {
    if (b == 0L) {
      throw new IllegalStateException("size == 0");
    }
    long l2 = 0L;
    int i = 0;
    int j = 0;
    Object localObject = a;
    byte[] arrayOfByte = a;
    int m = b;
    int n = c;
    long l1 = l2;
    int k = i;
    label60:
    i = j;
    if (m < n)
    {
      int i1 = arrayOfByte[m];
      if ((i1 >= 48) && (i1 <= 57)) {
        i = i1 - 48;
      }
      for (;;)
      {
        if ((0xF000000000000000 & l1) == 0L) {
          break label296;
        }
        localObject = new cav().h(l1).a(i1);
        throw new NumberFormatException("Number too large: " + ((cav)localObject).r());
        if ((i1 >= 97) && (i1 <= 102))
        {
          i = i1 - 97 + 10;
        }
        else
        {
          if ((i1 < 65) || (i1 > 70)) {
            break;
          }
          i = i1 - 65 + 10;
        }
      }
      if (k == 0) {
        throw new NumberFormatException("Expected leading [0-9a-fA-F] character but was 0x" + Integer.toHexString(i1));
      }
      i = 1;
    }
    if (m == n)
    {
      a = ((cbh)localObject).a();
      cbi.a((cbh)localObject);
    }
    for (;;)
    {
      if (i == 0)
      {
        j = i;
        i = k;
        l2 = l1;
        if (a != null) {
          break;
        }
      }
      b -= k;
      return l1;
      label296:
      l2 = i;
      k += 1;
      m += 1;
      l1 = l2 | l1 << 4;
      break label60;
      b = m;
    }
  }
  
  public final cay m()
  {
    return new cay(o());
  }
  
  public final String n()
  {
    long l = a((byte)10, 0L);
    if (l == -1L)
    {
      cav localcav = new cav();
      a(localcav, 0L, Math.min(32L, b));
      throw new EOFException("\\n not found: size=" + b + " content=" + localcav.m().b() + "...");
    }
    return d(l);
  }
  
  public final byte[] o()
  {
    try
    {
      byte[] arrayOfByte = e(b);
      return arrayOfByte;
    }
    catch (EOFException localEOFException)
    {
      throw new AssertionError(localEOFException);
    }
  }
  
  public final void p()
  {
    try
    {
      f(b);
      return;
    }
    catch (EOFException localEOFException)
    {
      throw new AssertionError(localEOFException);
    }
  }
  
  public final String toString()
  {
    if (b == 0L) {
      return "Buffer[size=0]";
    }
    Object localObject;
    if (b <= 16L)
    {
      localObject = s().m();
      return String.format("Buffer[size=%s data=%s]", new Object[] { Long.valueOf(b), ((cay)localObject).b() });
    }
    try
    {
      MessageDigest localMessageDigest = MessageDigest.getInstance("MD5");
      localMessageDigest.update(a.a, a.b, a.c - a.b);
      for (localObject = a.f; localObject != a; localObject = f) {
        localMessageDigest.update(a, b, c - b);
      }
      localObject = String.format("Buffer[size=%s md5=%s]", new Object[] { Long.valueOf(b), cay.a(localMessageDigest.digest()).b() });
      return (String)localObject;
    }
    catch (NoSuchAlgorithmException localNoSuchAlgorithmException)
    {
      throw new AssertionError();
    }
  }
}

/* Location:
 * Qualified Name:     cav
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */