import java.io.Serializable;
import java.util.Locale;

public abstract class cja
  implements Serializable
{
  private int d()
  {
    return a().a(b());
  }
  
  public abstract cgh a();
  
  public final String a(Locale paramLocale)
  {
    return a().a(b(), paramLocale);
  }
  
  public abstract long b();
  
  public final String b(Locale paramLocale)
  {
    return a().b(b(), paramLocale);
  }
  
  public cgf c()
  {
    throw new UnsupportedOperationException("The method getChronology() was added in v1.4 and needs to be implemented by subclasses of AbstractReadableInstantFieldProperty");
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {}
    do
    {
      return true;
      if (!(paramObject instanceof cja)) {
        return false;
      }
      paramObject = (cja)paramObject;
    } while ((d() == ((cja)paramObject).d()) && (a().a().equals(((cja)paramObject).a().a())) && (cjh.a(c(), ((cja)paramObject).c())));
    return false;
  }
  
  public int hashCode()
  {
    return d() * 17 + a().a().hashCode() + c().hashCode();
  }
  
  public String toString()
  {
    return "Property[" + a().b() + "]";
  }
}

/* Location:
 * Qualified Name:     cja
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */