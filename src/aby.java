import com.snapchat.android.database.table.SnapbryoTable;
import java.util.ArrayList;
import java.util.Collection;

public final class aby
  extends SnapbryoTable
{
  private static aby a;
  
  public static aby a()
  {
    try
    {
      if (a == null) {
        a = new aby();
      }
      aby localaby = a;
      return localaby;
    }
    finally {}
  }
  
  protected final Collection<aji> a(akp paramakp)
  {
    paramakp = aki.a();
    return new ArrayList(paramakp.a(mSendingDSnapbryos));
  }
  
  public final void b(akp paramakp)
  {
    paramakp = aki.a();
    mSendingDSnapbryos = paramakp.c(a(null, null));
  }
  
  public final String c()
  {
    return "SendingDSnapbryoTable";
  }
}

/* Location:
 * Qualified Name:     aby
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */