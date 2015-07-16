import com.snapchat.android.database.table.SnapbryoTable;
import java.util.ArrayList;
import java.util.Collection;

public final class abf
  extends SnapbryoTable
{
  private static abf a;
  
  public static abf a()
  {
    try
    {
      if (a == null) {
        a = new abf();
      }
      abf localabf = a;
      return localabf;
    }
    finally {}
  }
  
  protected final Collection<aji> a(akp paramakp)
  {
    paramakp = aki.a();
    return new ArrayList(paramakp.a(mFailedChatMediaSnapbryos));
  }
  
  public final void b(akp paramakp)
  {
    paramakp = aki.a();
    mFailedChatMediaSnapbryos = paramakp.c(a(null, null));
  }
  
  public final String c()
  {
    return "FailedChatMediaSnapbryoTable";
  }
}

/* Location:
 * Qualified Name:     abf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */