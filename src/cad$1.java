import java.io.OutputStream;

final class cad$1
  implements cai
{
  cad$1(cak paramcak, OutputStream paramOutputStream) {}
  
  public final cak E_()
  {
    return a;
  }
  
  public final void a_(bzu parambzu, long paramLong)
  {
    cal.a(b, 0L, paramLong);
    while (paramLong > 0L)
    {
      a.g();
      cag localcag = a;
      int i = (int)Math.min(paramLong, c - b);
      b.write(a, b, i);
      b += i;
      long l = paramLong - i;
      b -= i;
      paramLong = l;
      if (b == c)
      {
        a = localcag.a();
        cah.a(localcag);
        paramLong = l;
      }
    }
  }
  
  public final void close()
  {
    b.close();
  }
  
  public final void flush()
  {
    b.flush();
  }
  
  public final String toString()
  {
    return "sink(" + b + ")";
  }
}

/* Location:
 * Qualified Name:     cad.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */