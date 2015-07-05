import com.snapchat.android.database.table.StorySnapTable;
import java.util.Collection;
import java.util.List;

public final class aak
  extends StorySnapTable
{
  private static aak a;
  
  private aak()
  {
    this(new axx(), ajx.a());
  }
  
  private aak(axx paramaxx, ajx paramajx)
  {
    super(paramajx, paramaxx, ayj.FRIEND_STORY_KEYS_AND_IVS);
  }
  
  public static aak a()
  {
    try
    {
      if (a == null) {
        a = new aak();
      }
      aak localaak = a;
      return localaak;
    }
    finally {}
  }
  
  protected final Collection<ajr> a(ajv paramajv)
  {
    paramajv = ajq.a().n();
    new axx().a(paramajv, ayj.FRIEND_STORY_KEYS_AND_IVS);
    return paramajv;
  }
  
  protected final void a(List<ajr> paramList)
  {
    ajq.a().d(paramList);
  }
  
  public final String c()
  {
    return "FriendStorySnapTable";
  }
}

/* Location:
 * Qualified Name:     aak
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */