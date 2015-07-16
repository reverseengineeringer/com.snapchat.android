import java.io.Serializable;
import java.util.Locale;

public abstract class ckb
  implements Serializable
{
  private int d()
  {
    return a().a(b());
  }
  
  public abstract chi a();
  
  public final String a(Locale paramLocale)
  {
    return a().a(b(), paramLocale);
  }
  
  public abstract long b();
  
  public final String b(Locale paramLocale)
  {
    return a().b(b(), paramLocale);
  }
  
  public chg c()
  {
    throw new UnsupportedOperationException("The method getChronology() was added in v1.4 and needs to be implemented by subclasses of AbstractReadableInstantFieldProperty");
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {}
    do
    {
      return true;
      if (!(paramObject instanceof ckb)) {
        return false;
      }
      paramObject = (ckb)paramObject;
    } while ((d() == ((ckb)paramObject).d()) && (a().a().equals(((ckb)paramObject).a().a())) && (cki.a(c(), ((ckb)paramObject).c())));
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
 * Qualified Name:     ckb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */