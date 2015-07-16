import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;

final class cbg
  implements cax
{
  public final cav a;
  public final cbk b;
  boolean c;
  
  public cbg(cbk paramcbk)
  {
    this(paramcbk, new cav());
  }
  
  private cbg(cbk paramcbk, cav paramcav)
  {
    if (paramcbk == null) {
      throw new IllegalArgumentException("source == null");
    }
    a = paramcav;
    b = paramcbk;
  }
  
  private boolean b(long paramLong)
  {
    if (paramLong < 0L) {
      throw new IllegalArgumentException("byteCount < 0: " + paramLong);
    }
    if (c) {
      throw new IllegalStateException("closed");
    }
    while (a.b < paramLong) {
      if (b.a(a, 2048L) == -1L) {
        return false;
      }
    }
    return true;
  }
  
  public final cbl E_()
  {
    return b.E_();
  }
  
  public final long a(byte paramByte)
  {
    long l2 = 0L;
    if (c) {
      throw new IllegalStateException("closed");
    }
    do
    {
      l1 = l2;
      if (0L < a.b) {
        break;
      }
    } while (b.a(a, 2048L) != -1L);
    long l1 = -1L;
    return l1;
    do
    {
      l2 = a.a(paramByte, l1);
      l1 = l2;
      if (l2 != -1L) {
        break;
      }
      l1 = a.b;
    } while (b.a(a, 2048L) != -1L);
    return -1L;
  }
  
  public final long a(cav paramcav, long paramLong)
  {
    if (paramcav == null) {
      throw new IllegalArgumentException("sink == null");
    }
    if (paramLong < 0L) {
      throw new IllegalArgumentException("byteCount < 0: " + paramLong);
    }
    if (c) {
      throw new IllegalStateException("closed");
    }
    if ((a.b == 0L) && (b.a(a, 2048L) == -1L)) {
      return -1L;
    }
    paramLong = Math.min(paramLong, a.b);
    return a.a(paramcav, paramLong);
  }
  
  public final void a(long paramLong)
  {
    if (!b(paramLong)) {
      throw new EOFException();
    }
  }
  
  public final cav b()
  {
    return a;
  }
  
  public final cay c(long paramLong)
  {
    a(paramLong);
    return a.c(paramLong);
  }
  
  public final void close()
  {
    if (c) {
      return;
    }
    c = true;
    b.close();
    a.p();
  }
  
  public final boolean d()
  {
    if (c) {
      throw new IllegalStateException("closed");
    }
    return (a.d()) && (b.a(a, 2048L) == -1L);
  }
  
  public final InputStream e()
  {
    new InputStream()
    {
      public final int available()
      {
        if (c) {
          throw new IOException("closed");
        }
        return (int)Math.min(a.b, 2147483647L);
      }
      
      public final void close()
      {
        cbg.this.close();
      }
      
      public final int read()
      {
        if (c) {
          throw new IOException("closed");
        }
        if ((a.b == 0L) && (b.a(a, 2048L) == -1L)) {
          return -1;
        }
        return a.f() & 0xFF;
      }
      
      public final int read(byte[] paramAnonymousArrayOfByte, int paramAnonymousInt1, int paramAnonymousInt2)
      {
        if (c) {
          throw new IOException("closed");
        }
        cbm.a(paramAnonymousArrayOfByte.length, paramAnonymousInt1, paramAnonymousInt2);
        if ((a.b == 0L) && (b.a(a, 2048L) == -1L)) {
          return -1;
        }
        return a.a(paramAnonymousArrayOfByte, paramAnonymousInt1, paramAnonymousInt2);
      }
      
      public final String toString()
      {
        return cbg.this + ".inputStream()";
      }
    };
  }
  
  public final byte[] e(long paramLong)
  {
    a(paramLong);
    return a.e(paramLong);
  }
  
  public final byte f()
  {
    a(1L);
    return a.f();
  }
  
  public final void f(long paramLong)
  {
    if (c) {
      throw new IllegalStateException("closed");
    }
    do
    {
      long l = Math.min(paramLong, a.b);
      a.f(l);
      paramLong -= l;
      if (paramLong <= 0L) {
        break;
      }
    } while ((a.b != 0L) || (b.a(a, 2048L) != -1L));
    throw new EOFException();
  }
  
  public final short g()
  {
    a(2L);
    return a.g();
  }
  
  public final int h()
  {
    a(4L);
    return a.h();
  }
  
  public final short i()
  {
    a(2L);
    return cbm.a(a.g());
  }
  
  public final int j()
  {
    a(4L);
    return cbm.a(a.h());
  }
  
  public final long k()
  {
    int i = 0;
    while (b(i + 1))
    {
      int j = a.b(i);
      if (((j < 48) || (j > 57)) && ((i != 0) || (j != 45))) {
        break;
      }
      i += 1;
    }
    if (i == 0) {
      throw new NumberFormatException("Expected leading [0-9] or '-' character but was 0x" + Integer.toHexString(a.b(0L)));
    }
    return a.k();
  }
  
  public final long l()
  {
    int i = 0;
    while (b(i + 1))
    {
      int j = a.b(i);
      if (((j < 48) || (j > 57)) && ((j < 97) || (j > 102)) && ((j < 65) || (j > 70))) {
        break;
      }
      i += 1;
    }
    if (i == 0) {
      throw new NumberFormatException("Expected leading [0-9a-fA-F] character but was 0x" + Integer.toHexString(a.b(0L)));
    }
    return a.l();
  }
  
  public final String n()
  {
    long l = a((byte)10);
    if (l == -1L)
    {
      cav localcav = new cav();
      a.a(localcav, 0L, Math.min(32L, a.b));
      throw new EOFException("\\n not found: size=" + a.b + " content=" + localcav.m().b() + "...");
    }
    return a.d(l);
  }
  
  public final String toString()
  {
    return "buffer(" + b + ")";
  }
}

/* Location:
 * Qualified Name:     cbg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */