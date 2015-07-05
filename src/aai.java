import com.snapchat.android.database.table.SnapbryoTable;
import java.util.ArrayList;
import java.util.Collection;

public final class aai
  extends SnapbryoTable
{
  private static aai a;
  
  public static aai a()
  {
    try
    {
      if (a == null) {
        a = new aai();
      }
      aai localaai = a;
      return localaai;
    }
    finally {}
  }
  
  protected final Collection<aim> a(ajv paramajv)
  {
    return new ArrayList(ajn.a().g());
  }
  
  public final void b(ajv paramajv)
  {
    ajn.a().b(a(null, null));
  }
  
  public final String c()
  {
    return "FailedSendDSnapbryoTable";
  }
}

/* Location:
 * Qualified Name:     aai
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */