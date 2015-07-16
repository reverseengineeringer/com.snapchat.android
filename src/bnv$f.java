final class bnv$f
  extends bnv.a
{
  private boolean d;
  
  private bnv$f(bnv parambnv)
  {
    super(parambnv, (byte)0);
  }
  
  public final long a(cav paramcav, long paramLong)
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
    paramLong = c.c.a(paramcav, paramLong);
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

/* Location:
 * Qualified Name:     bnv.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */