import com.snapchat.android.database.table.StorySnapTable;
import com.snapchat.android.model.StoryCollection;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;

public final class abj
  extends StorySnapTable
{
  private static abj a;
  
  private abj()
  {
    this(new ayv(), akr.a());
  }
  
  private abj(ayv paramayv, akr paramakr)
  {
    super(paramakr, paramayv, azh.FRIEND_STORY_KEYS_AND_IVS);
  }
  
  public static abj a()
  {
    try
    {
      if (a == null) {
        a = new abj();
      }
      abj localabj = a;
      return localabj;
    }
    finally {}
  }
  
  protected final Collection<akl> a(akp paramakp)
  {
    Object localObject = akk.a().k();
    paramakp = dt.a(((Collection)localObject).size() * 10);
    localObject = ((Collection)localObject).iterator();
    while (((Iterator)localObject).hasNext()) {
      paramakp.addAll(((StoryCollection)((Iterator)localObject).next()).f());
    }
    new ayv().a(paramakp, azh.FRIEND_STORY_KEYS_AND_IVS);
    return paramakp;
  }
  
  protected final void a(List<akl> paramList)
  {
    akk.a().d(paramList);
  }
  
  public final String c()
  {
    return "FriendStorySnapTable";
  }
}

/* Location:
 * Qualified Name:     abj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */