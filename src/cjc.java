import java.io.Serializable;

public abstract class cjc
  extends cgm
  implements Serializable
{
  final cgn d;
  
  public cjc(cgn paramcgn)
  {
    if (paramcgn == null) {
      throw new IllegalArgumentException("The type must not be null");
    }
    d = paramcgn;
  }
  
  public final cgn a()
  {
    return d;
  }
  
  public int b(long paramLong1, long paramLong2)
  {
    return cjh.a(c(paramLong1, paramLong2));
  }
  
  public final boolean b()
  {
    return true;
  }
  
  public String toString()
  {
    return "DurationField[" + d.m + ']';
  }
}

/* Location:
 * Qualified Name:     cjc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */