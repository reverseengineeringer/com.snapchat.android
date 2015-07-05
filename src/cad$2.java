import java.io.InputStream;

final class cad$2
  implements caj
{
  cad$2(cak paramcak, InputStream paramInputStream) {}
  
  public final cak E_()
  {
    return a;
  }
  
  public final long a(bzu parambzu, long paramLong)
  {
    if (paramLong < 0L) {
      throw new IllegalArgumentException("byteCount < 0: " + paramLong);
    }
    if (paramLong == 0L) {
      return 0L;
    }
    a.g();
    cag localcag = parambzu.d(1);
    int i = (int)Math.min(paramLong, 2048 - c);
    i = b.read(a, c, i);
    if (i == -1) {
      return -1L;
    }
    c += i;
    b += i;
    return i;
  }
  
  public final void close()
  {
    b.close();
  }
  
  public final String toString()
  {
    return "source(" + b + ")";
  }
}

/* Location:
 * Qualified Name:     cad.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */