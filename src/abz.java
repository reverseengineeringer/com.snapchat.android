import com.snapchat.android.database.table.SnapbryoTable;
import java.util.ArrayList;
import java.util.Collection;

public final class abz
  extends SnapbryoTable
{
  private static abz a;
  
  public static abz a()
  {
    try
    {
      if (a == null) {
        a = new abz();
      }
      abz localabz = a;
      return localabz;
    }
    finally {}
  }
  
  protected final Collection<aji> a(akp paramakp)
  {
    paramakp = aki.a();
    return new ArrayList(paramakp.a(mSendingSnapbryos));
  }
  
  public final void b(akp paramakp)
  {
    paramakp = aki.a();
    mSendingSnapbryos = paramakp.c(a(null, null));
  }
  
  public final String c()
  {
    return "SendingSnapbryoTable";
  }
}

/* Location:
 * Qualified Name:     abz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */