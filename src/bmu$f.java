final class bmu$f
  extends bmu.a
{
  private boolean d;
  
  private bmu$f(bmu parambmu)
  {
    super(parambmu, (byte)0);
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
    paramLong = c.c.a(parambzu, paramLong);
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
 * Qualified Name:     bmu.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */