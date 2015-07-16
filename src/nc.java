import android.os.Bundle;

public abstract class nc
{
  public abstract String a();
  
  public abstract String b();
  
  public abstract Bundle c();
  
  public abstract String d();
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {
      return true;
    }
    if ((paramObject == null) || (getClass() != paramObject.getClass())) {
      return false;
    }
    paramObject = (nc)paramObject;
    return b().equals(((nc)paramObject).b());
  }
  
  public int hashCode()
  {
    return b().hashCode();
  }
  
  public String toString()
  {
    return "AdPlacement:{" + b() + "}";
  }
}

/* Location:
 * Qualified Name:     nc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */