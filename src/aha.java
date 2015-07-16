import android.text.TextUtils;
import com.snapchat.android.model.Friend;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

public final class aha
  extends bge<Friend>
{
  private final List<Friend> a;
  
  public aha(@chc List<Friend> paramList, @chc ban paramban, @chc bge.a<Friend> parama)
  {
    super(paramban, parama);
    a = paramList;
  }
  
  private static boolean a(@chc Friend paramFriend, @chc String paramString)
  {
    String str = paramFriend.e();
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(paramFriend.l());
    localArrayList.add(str);
    localArrayList.addAll(Arrays.asList(str.split(" ")));
    paramFriend = localArrayList.iterator();
    while (paramFriend.hasNext()) {
      if (avg.a((String)paramFriend.next(), paramString)) {
        return true;
      }
    }
    return false;
  }
  
  @chc
  public final List<Friend> a(@chd String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {
      return a;
    }
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = a.iterator();
    while (localIterator.hasNext())
    {
      Friend localFriend = (Friend)localIterator.next();
      if (a(localFriend, paramString)) {
        localArrayList.add(localFriend);
      }
    }
    return localArrayList;
  }
}

/* Location:
 * Qualified Name:     aha
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */