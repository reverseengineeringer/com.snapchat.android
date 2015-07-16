import com.snapchat.android.database.table.SnapbryoTable;
import java.util.ArrayList;
import java.util.Collection;

public final class abi
  extends SnapbryoTable
{
  private static abi a;
  
  public static abi a()
  {
    try
    {
      if (a == null) {
        a = new abi();
      }
      abi localabi = a;
      return localabi;
    }
    finally {}
  }
  
  protected final Collection<aji> a(akp paramakp)
  {
    paramakp = aki.a();
    return new ArrayList(paramakp.a(mFailedSendSnapbryos));
  }
  
  public final void b(akp paramakp)
  {
    paramakp = aki.a();
    mFailedSendSnapbryos = paramakp.c(a(null, null));
  }
  
  public final String c()
  {
    return "FailedSendSnapbryoTable";
  }
}

/* Location:
 * Qualified Name:     abi
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */