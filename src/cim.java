import java.util.Date;

final class cim
  extends cih
  implements cio, cis
{
  static final cim a = new cim();
  
  public final long a(Object paramObject)
  {
    return ((Date)paramObject).getTime();
  }
  
  public final Class<?> a()
  {
    return Date.class;
  }
}

/* Location:
 * Qualified Name:     cim
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */