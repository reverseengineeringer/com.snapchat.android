import com.snapchat.android.database.table.SnapbryoTable;
import java.util.ArrayList;
import java.util.Collection;

public final class aaj
  extends SnapbryoTable
{
  private static aaj a;
  
  public static aaj a()
  {
    try
    {
      if (a == null) {
        a = new aaj();
      }
      aaj localaaj = a;
      return localaaj;
    }
    finally {}
  }
  
  protected final Collection<aim> a(ajv paramajv)
  {
    paramajv = ajn.a();
    return new ArrayList(paramajv.a(mFailedSendSnapbryos));
  }
  
  public final void b(ajv paramajv)
  {
    paramajv = ajn.a();
    mFailedSendSnapbryos = paramajv.c(a(null, null));
  }
  
  public final String c()
  {
    return "FailedSendSnapbryoTable";
  }
}

/* Location:
 * Qualified Name:     aaj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */