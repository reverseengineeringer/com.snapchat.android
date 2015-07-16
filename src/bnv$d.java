import java.net.ProtocolException;

final class bnv$d
  implements cbj
{
  private boolean b;
  private long c;
  
  private bnv$d(bnv parambnv, long paramLong)
  {
    c = paramLong;
  }
  
  public final cbl E_()
  {
    return a.d.E_();
  }
  
  public final void a_(cav paramcav, long paramLong)
  {
    if (b) {
      throw new IllegalStateException("closed");
    }
    bnq.a(b, paramLong);
    if (paramLong > c) {
      throw new ProtocolException("expected " + c + " bytes but received " + paramLong);
    }
    a.d.a_(paramcav, paramLong);
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
    a.e = 3;
  }
  
  public final void flush()
  {
    if (b) {
      return;
    }
    a.d.flush();
  }
}

/* Location:
 * Qualified Name:     bnv.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */