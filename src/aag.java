import com.snapchat.android.database.table.SnapbryoTable;
import java.util.ArrayList;
import java.util.Collection;

public final class aag
  extends SnapbryoTable
{
  private static aag a;
  
  public static aag a()
  {
    try
    {
      if (a == null) {
        a = new aag();
      }
      aag localaag = a;
      return localaag;
    }
    finally {}
  }
  
  protected final Collection<aim> a(ajv paramajv)
  {
    paramajv = ajn.a();
    return new ArrayList(paramajv.a(mFailedChatMediaSnapbryos));
  }
  
  public final void b(ajv paramajv)
  {
    paramajv = ajn.a();
    mFailedChatMediaSnapbryos = paramajv.c(a(null, null));
  }
  
  public final String c()
  {
    return "FailedChatMediaSnapbryoTable";
  }
}

/* Location:
 * Qualified Name:     aag
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */