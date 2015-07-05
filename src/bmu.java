import java.io.EOFException;
import java.io.IOException;
import java.net.ProtocolException;
import java.net.Socket;
import java.net.SocketTimeoutException;
import java.util.concurrent.TimeUnit;

public final class bmu
{
  final blp a;
  final blo b;
  public final bzw c;
  final bzv d;
  int e = 0;
  int f = 0;
  private final Socket g;
  
  public bmu(blp paramblp, blo paramblo, Socket paramSocket)
  {
    a = paramblp;
    b = paramblo;
    g = paramSocket;
    c = cad.a(cad.b(paramSocket));
    d = cad.a(cad.a(paramSocket));
  }
  
  public final caj a(long paramLong)
  {
    if (e != 4) {
      throw new IllegalStateException("state: " + e);
    }
    e = 5;
    return new bmu.e(paramLong);
  }
  
  public final void a()
  {
    d.flush();
  }
  
  public final void a(int paramInt1, int paramInt2)
  {
    if (paramInt1 != 0) {
      c.E_().a(paramInt1, TimeUnit.MILLISECONDS);
    }
    if (paramInt2 != 0) {
      d.E_().a(paramInt2, TimeUnit.MILLISECONDS);
    }
  }
  
  public final void a(blu.a parama)
  {
    for (;;)
    {
      String str = c.n();
      if (str.length() == 0) {
        break;
      }
      bmi.b.a(parama, str);
    }
  }
  
  public final void a(blu paramblu, String paramString)
  {
    if (e != 0) {
      throw new IllegalStateException("state: " + e);
    }
    d.b(paramString).b("\r\n");
    int i = 0;
    int j = a.length / 2;
    while (i < j)
    {
      d.b(paramblu.a(i)).b(": ").b(paramblu.b(i)).b("\r\n");
      i += 1;
    }
    d.b("\r\n");
    e = 1;
  }
  
  public final boolean b()
  {
    try
    {
      int i = g.getSoTimeout();
      try
      {
        g.setSoTimeout(1);
        boolean bool = c.d();
        return !bool;
      }
      finally
      {
        g.setSoTimeout(i);
      }
      return false;
    }
    catch (SocketTimeoutException localSocketTimeoutException)
    {
      return true;
    }
    catch (IOException localIOException) {}
  }
  
  public final bmc.a c()
  {
    if ((e != 1) && (e != 3)) {
      throw new IllegalStateException("state: " + e);
    }
    try
    {
      bnf localbnf;
      do
      {
        localbnf = bnf.a(c.n());
        localObject = new bmc.a();
        b = a;
        c = b;
        d = c;
        blu.a locala = new blu.a();
        a(locala);
        locala.a(bmz.d, a.toString());
        ((bmc.a)localObject).a(locala.a());
      } while (b == 100);
      e = 4;
      return (bmc.a)localObject;
    }
    catch (EOFException localEOFException)
    {
      Object localObject = new IOException("unexpected end of stream on " + b + " (recycle count=" + bmi.b.b(b) + ")");
      ((IOException)localObject).initCause(localEOFException);
      throw ((Throwable)localObject);
    }
  }
  
  abstract class a
    implements caj
  {
    protected boolean a;
    
    private a() {}
    
    public final cak E_()
    {
      return c.E_();
    }
    
    protected final void a(boolean paramBoolean)
    {
      if (e != 5) {
        throw new IllegalStateException("state: " + e);
      }
      e = 0;
      if ((paramBoolean) && (f == 1))
      {
        f = 0;
        bmi.b.a(a, b);
      }
      while (f != 2) {
        return;
      }
      e = 6;
      b.c.close();
    }
    
    protected final void b()
    {
      bmp.a(b.c);
      e = 6;
    }
  }
  
  final class b
    implements cai
  {
    private boolean b;
    
    private b() {}
    
    public final cak E_()
    {
      return d.E_();
    }
    
    public final void a_(bzu parambzu, long paramLong)
    {
      if (b) {
        throw new IllegalStateException("closed");
      }
      if (paramLong == 0L) {
        return;
      }
      d.i(paramLong);
      d.b("\r\n");
      d.a_(parambzu, paramLong);
      d.b("\r\n");
    }
    
    /* Error */
    public final void close()
    {
      // Byte code:
      //   0: aload_0
      //   1: monitorenter
      //   2: aload_0
      //   3: getfield 37	bmu$b:b	Z
      //   6: istore_1
      //   7: iload_1
      //   8: ifeq +6 -> 14
      //   11: aload_0
      //   12: monitorexit
      //   13: return
      //   14: aload_0
      //   15: iconst_1
      //   16: putfield 37	bmu$b:b	Z
      //   19: aload_0
      //   20: getfield 16	bmu$b:a	Lbmu;
      //   23: getfield 29	bmu:d	Lbzv;
      //   26: ldc 58
      //   28: invokeinterface 53 2 0
      //   33: pop
      //   34: aload_0
      //   35: getfield 16	bmu$b:a	Lbmu;
      //   38: iconst_3
      //   39: putfield 62	bmu:e	I
      //   42: goto -31 -> 11
      //   45: astore_2
      //   46: aload_0
      //   47: monitorexit
      //   48: aload_2
      //   49: athrow
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	50	0	this	b
      //   6	2	1	bool	boolean
      //   45	4	2	localObject	Object
      // Exception table:
      //   from	to	target	type
      //   2	7	45	finally
      //   14	42	45	finally
    }
    
    /* Error */
    public final void flush()
    {
      // Byte code:
      //   0: aload_0
      //   1: monitorenter
      //   2: aload_0
      //   3: getfield 37	bmu$b:b	Z
      //   6: istore_1
      //   7: iload_1
      //   8: ifeq +6 -> 14
      //   11: aload_0
      //   12: monitorexit
      //   13: return
      //   14: aload_0
      //   15: getfield 16	bmu$b:a	Lbmu;
      //   18: getfield 29	bmu:d	Lbzv;
      //   21: invokeinterface 65 1 0
      //   26: goto -15 -> 11
      //   29: astore_2
      //   30: aload_0
      //   31: monitorexit
      //   32: aload_2
      //   33: athrow
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	34	0	this	b
      //   6	2	1	bool	boolean
      //   29	4	2	localObject	Object
      // Exception table:
      //   from	to	target	type
      //   2	7	29	finally
      //   14	26	29	finally
    }
  }
  
  final class c
    extends bmu.a
  {
    private long d = -1L;
    private boolean e = true;
    private final bmw f;
    
    c(bmw parambmw)
    {
      super((byte)0);
      f = parambmw;
    }
    
    public final long a(bzu parambzu, long paramLong)
    {
      if (paramLong < 0L) {
        throw new IllegalArgumentException("byteCount < 0: " + paramLong);
      }
      if (a) {
        throw new IllegalStateException("closed");
      }
      if (!e) {}
      do
      {
        return -1L;
        if ((d != 0L) && (d != -1L)) {
          break;
        }
        if (d != -1L) {
          c.n();
        }
        Object localObject;
        try
        {
          d = c.l();
          localObject = c.n().trim();
          if ((d < 0L) || ((!((String)localObject).isEmpty()) && (!((String)localObject).startsWith(";")))) {
            throw new ProtocolException("expected chunk size and optional extensions but was \"" + d + (String)localObject + "\"");
          }
        }
        catch (NumberFormatException parambzu)
        {
          throw new ProtocolException(parambzu.getMessage());
        }
        if (d == 0L)
        {
          e = false;
          localObject = new blu.a();
          a((blu.a)localObject);
          f.a(((blu.a)localObject).a());
          a(true);
        }
      } while (!e);
      paramLong = c.a(parambzu, Math.min(paramLong, d));
      if (paramLong == -1L)
      {
        b();
        throw new IOException("unexpected end of stream");
      }
      d -= paramLong;
      return paramLong;
    }
    
    public final void close()
    {
      if (a) {
        return;
      }
      if ((e) && (!bmp.a(this, TimeUnit.MILLISECONDS))) {
        b();
      }
      a = true;
    }
  }
  
  final class d
    implements cai
  {
    private boolean b;
    private long c;
    
    private d(long paramLong)
    {
      c = paramLong;
    }
    
    public final cak E_()
    {
      return d.E_();
    }
    
    public final void a_(bzu parambzu, long paramLong)
    {
      if (b) {
        throw new IllegalStateException("closed");
      }
      bmp.a(b, paramLong);
      if (paramLong > c) {
        throw new ProtocolException("expected " + c + " bytes but received " + paramLong);
      }
      d.a_(parambzu, paramLong);
      c -= paramLong;
    }
    
    public final void close()
    {
      if (b) {
        return;
      }
      b = true;
      if (c > 0L) {
        throw new ProtocolException("unexpected end of stream");
      }
      e = 3;
    }
    
    public final void flush()
    {
      if (b) {
        return;
      }
      d.flush();
    }
  }
  
  final class e
    extends bmu.a
  {
    private long d;
    
    public e(long paramLong)
    {
      super((byte)0);
      d = paramLong;
      if (d == 0L) {
        a(true);
      }
    }
    
    public final long a(bzu parambzu, long paramLong)
    {
      if (paramLong < 0L) {
        throw new IllegalArgumentException("byteCount < 0: " + paramLong);
      }
      if (a) {
        throw new IllegalStateException("closed");
      }
      if (d == 0L) {
        return -1L;
      }
      paramLong = c.a(parambzu, Math.min(d, paramLong));
      if (paramLong == -1L)
      {
        b();
        throw new ProtocolException("unexpected end of stream");
      }
      d -= paramLong;
      if (d == 0L) {
        a(true);
      }
      return paramLong;
    }
    
    public final void close()
    {
      if (a) {
        return;
      }
      if ((d != 0L) && (!bmp.a(this, TimeUnit.MILLISECONDS))) {
        b();
      }
      a = true;
    }
  }
  
  final class f
    extends bmu.a
  {
    private boolean d;
    
    private f()
    {
      super((byte)0);
    }
    
    public final long a(bzu parambzu, long paramLong)
    {
      if (paramLong < 0L) {
        throw new IllegalArgumentException("byteCount < 0: " + paramLong);
      }
      if (a) {
        throw new IllegalStateException("closed");
      }
      if (d) {
        return -1L;
      }
      paramLong = c.a(parambzu, paramLong);
      if (paramLong == -1L)
      {
        d = true;
        a(false);
        return -1L;
      }
      return paramLong;
    }
    
    public final void close()
    {
      if (a) {
        return;
      }
      if (!d) {
        b();
      }
      a = true;
    }
  }
}

/* Location:
 * Qualified Name:     bmu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */