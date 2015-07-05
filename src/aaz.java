import com.snapchat.android.database.table.SnapbryoTable;
import java.util.ArrayList;
import java.util.Collection;

public final class aaz
  extends SnapbryoTable
{
  private static aaz a;
  
  public static aaz a()
  {
    try
    {
      if (a == null) {
        a = new aaz();
      }
      aaz localaaz = a;
      return localaaz;
    }
    finally {}
  }
  
  protected final Collection<aim> a(ajv paramajv)
  {
    paramajv = ajn.a();
    return new ArrayList(paramajv.a(mSendingDSnapbryos));
  }
  
  public final void b(ajv paramajv)
  {
    paramajv = ajn.a();
    mSendingDSnapbryos = paramajv.c(a(null, null));
  }
  
  public final String c()
  {
    return "SendingDSnapbryoTable";
  }
}

/* Location:
 * Qualified Name:     aaz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */