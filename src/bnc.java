import java.net.ProtocolException;

public final class bnc
  implements cai
{
  public final bzu a = new bzu();
  private boolean b;
  private final int c;
  
  public bnc()
  {
    this(-1);
  }
  
  public bnc(int paramInt)
  {
    c = paramInt;
  }
  
  public final cak E_()
  {
    return cak.b;
  }
  
  public final void a(cai paramcai)
  {
    bzu localbzu = new bzu();
    a.a(localbzu, 0L, a.b);
    paramcai.a_(localbzu, b);
  }
  
  public final void a_(bzu parambzu, long paramLong)
  {
    if (b) {
      throw new IllegalStateException("closed");
    }
    bmp.a(b, paramLong);
    if ((c != -1) && (a.b > c - paramLong)) {
      throw new ProtocolException("exceeded content-length limit of " + c + " bytes");
    }
    a.a_(parambzu, paramLong);
  }
  
  public final void close()
  {
    if (b) {}
    do
    {
      return;
      b = true;
    } while (a.b >= c);
    throw new ProtocolException("content-length promised " + c + " bytes, but received " + a.b);
  }
  
  public final void flush() {}
}

/* Location:
 * Qualified Name:     bnc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */