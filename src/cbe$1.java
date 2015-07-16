import java.io.OutputStream;

final class cbe$1
  implements cbj
{
  cbe$1(cbl paramcbl, OutputStream paramOutputStream) {}
  
  public final cbl E_()
  {
    return a;
  }
  
  public final void a_(cav paramcav, long paramLong)
  {
    cbm.a(b, 0L, paramLong);
    while (paramLong > 0L)
    {
      a.g();
      cbh localcbh = a;
      int i = (int)Math.min(paramLong, c - b);
      b.write(a, b, i);
      b += i;
      long l = paramLong - i;
      b -= i;
      paramLong = l;
      if (b == c)
      {
        a = localcbh.a();
        cbi.a(localcbh);
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
 * Qualified Name:     cbe.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */