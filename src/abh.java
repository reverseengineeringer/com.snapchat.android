import com.snapchat.android.database.table.SnapbryoTable;
import java.util.ArrayList;
import java.util.Collection;

public final class abh
  extends SnapbryoTable
{
  private static abh a;
  
  public static abh a()
  {
    try
    {
      if (a == null) {
        a = new abh();
      }
      abh localabh = a;
      return localabh;
    }
    finally {}
  }
  
  protected final Collection<aji> a(akp paramakp)
  {
    return new ArrayList(aki.a().g());
  }
  
  public final void b(akp paramakp)
  {
    aki.a().b(a(null, null));
  }
  
  public final String c()
  {
    return "FailedSendDSnapbryoTable";
  }
}

/* Location:
 * Qualified Name:     abh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */