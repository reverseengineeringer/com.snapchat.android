import android.text.TextUtils;
import com.snapchat.android.model.Friend;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

public final class aga
  extends bfe<Friend>
{
  private final List<Friend> a;
  
  public aga(@cgb List<Friend> paramList, @cgb azo paramazo, @cgb bfe.a<Friend> parama)
  {
    super(paramazo, parama);
    a = paramList;
  }
  
  private static boolean a(@cgb Friend paramFriend, @cgb String paramString)
  {
    String str = paramFriend.k();
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(paramFriend.h());
    localArrayList.add(str);
    localArrayList.addAll(Arrays.asList(str.split(" ")));
    paramFriend = localArrayList.iterator();
    while (paramFriend.hasNext()) {
      if (aui.a((String)paramFriend.next(), paramString)) {
        return true;
      }
    }
    return false;
  }
  
  @cgb
  public final List<Friend> a(@cgc String paramString)
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
 * Qualified Name:     aga
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */