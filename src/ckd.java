import java.io.Serializable;

public abstract class ckd
  extends chn
  implements Serializable
{
  final cho d;
  
  public ckd(cho paramcho)
  {
    if (paramcho == null) {
      throw new IllegalArgumentException("The type must not be null");
    }
    d = paramcho;
  }
  
  public final cho a()
  {
    return d;
  }
  
  public int b(long paramLong1, long paramLong2)
  {
    return cki.a(c(paramLong1, paramLong2));
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
 * Qualified Name:     ckd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */