import com.snapchat.android.model.Friend;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;

public class aoz
  implements apb
{
  private final aib a;
  private final ape<Friend> b;
  private final apc c;
  
  public aoz(aib paramaib)
  {
    this(paramaib, new apd(), new apc(paramaib.c()));
  }
  
  private aoz(aib paramaib, ape<Friend> paramape, apc paramapc)
  {
    a = paramaib;
    b = paramape;
    c = paramapc;
  }
  
  public List<ahh> a()
  {
    ArrayList localArrayList = new ArrayList();
    localArrayList.addAll(a.b());
    Object localObject = c.a();
    if (localObject != null) {
      localArrayList.addAll((Collection)localObject);
    }
    if (c.c()) {
      localArrayList.add(new aoy());
    }
    localObject = a.d().iterator();
    while (((Iterator)localObject).hasNext()) {
      localArrayList.add((Friend)((Iterator)localObject).next());
    }
    localObject = a.a().iterator();
    while (((Iterator)localObject).hasNext())
    {
      Friend localFriend = (Friend)((Iterator)localObject).next();
      if (b.a(localFriend)) {
        localArrayList.add(localFriend);
      }
    }
    return localArrayList;
  }
  
  @chd
  public final List<Friend> b()
  {
    return c.b();
  }
  
  public final boolean c()
  {
    return c.c();
  }
  
  public final List<Friend> d()
  {
    return a.d();
  }
}

/* Location:
 * Qualified Name:     aoz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */