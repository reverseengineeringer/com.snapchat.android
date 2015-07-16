import java.io.OutputStream;

public final class bvc
  extends OutputStream
{
  private final OutputStream a;
  private final btc b;
  
  public bvc(OutputStream paramOutputStream, btc parambtc)
  {
    if (paramOutputStream == null) {
      throw new NullPointerException("delegate was null");
    }
    if (parambtc == null) {
      throw new NullPointerException("stats were null");
    }
    a = paramOutputStream;
    b = parambtc;
  }
  
  public final void close()
  {
    a.close();
  }
  
  public final void flush()
  {
    a.flush();
  }
  
  public final void write(int paramInt)
  {
    try
    {
      if (b != null)
      {
        b.c();
        b.c(1L);
      }
      a.write(paramInt);
      return;
    }
    catch (ThreadDeath localThreadDeath)
    {
      throw localThreadDeath;
    }
    catch (Throwable localThrowable)
    {
      for (;;)
      {
        bue.a(localThrowable);
      }
    }
  }
  
  public final void write(byte[] paramArrayOfByte)
  {
    if (b != null)
    {
      b.c();
      if (paramArrayOfByte != null) {
        b.c(paramArrayOfByte.length);
      }
    }
    a.write(paramArrayOfByte);
  }
  
  public final void write(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    if (b != null)
    {
      b.c();
      if (paramArrayOfByte != null) {
        b.c(paramInt2);
      }
    }
    a.write(paramArrayOfByte, paramInt1, paramInt2);
  }
}

/* Location:
 * Qualified Name:     bvc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */