import com.snapchat.android.database.table.SnapbryoTable;
import java.util.ArrayList;
import java.util.Collection;

public final class aba
  extends SnapbryoTable
{
  private static aba a;
  
  public static aba a()
  {
    try
    {
      if (a == null) {
        a = new aba();
      }
      aba localaba = a;
      return localaba;
    }
    finally {}
  }
  
  protected final Collection<aim> a(ajv paramajv)
  {
    paramajv = ajn.a();
    return new ArrayList(paramajv.a(mSendingSnapbryos));
  }
  
  public final void b(ajv paramajv)
  {
    paramajv = ajn.a();
    mSendingSnapbryos = paramajv.c(a(null, null));
  }
  
  public final String c()
  {
    return "SendingSnapbryoTable";
  }
}

/* Location:
 * Qualified Name:     aba
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */