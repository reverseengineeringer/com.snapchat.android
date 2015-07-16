import java.net.ProtocolException;

public final class bod
  implements cbj
{
  public final cav a = new cav();
  private boolean b;
  private final int c;
  
  public bod()
  {
    this(-1);
  }
  
  public bod(int paramInt)
  {
    c = paramInt;
  }
  
  public final cbl E_()
  {
    return cbl.b;
  }
  
  public final void a(cbj paramcbj)
  {
    cav localcav = new cav();
    a.a(localcav, 0L, a.b);
    paramcbj.a_(localcav, b);
  }
  
  public final void a_(cav paramcav, long paramLong)
  {
    if (b) {
      throw new IllegalStateException("closed");
    }
    bnq.a(b, paramLong);
    if ((c != -1) && (a.b > c - paramLong)) {
      throw new ProtocolException("exceeded content-length limit of " + c + " bytes");
    }
    a.a_(paramcav, paramLong);
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
 * Qualified Name:     bod
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */