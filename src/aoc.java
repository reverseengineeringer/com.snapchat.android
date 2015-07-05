import com.snapchat.android.model.Friend;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;

public class aoc
  implements aoe
{
  private final ahe a;
  private final aoi<Friend> b;
  private final aog c;
  
  public aoc(ahe paramahe)
  {
    this(paramahe, new aoh(), new aog(paramahe.c()));
  }
  
  private aoc(ahe paramahe, aoi<Friend> paramaoi, aog paramaog)
  {
    a = paramahe;
    b = paramaoi;
    c = paramaog;
  }
  
  public List<agk> a()
  {
    ArrayList localArrayList = new ArrayList();
    localArrayList.addAll(a.b());
    Object localObject = c.a();
    if (localObject != null) {
      localArrayList.addAll((Collection)localObject);
    }
    if (c.c()) {
      localArrayList.add(new aob());
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
  
  @cgc
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
 * Qualified Name:     aoc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */