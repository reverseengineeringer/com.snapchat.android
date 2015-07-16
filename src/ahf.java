import android.text.TextUtils;
import com.snapchat.android.model.Friend;
import com.snapchat.android.model.Friend.SuggestState;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

public final class ahf
  extends bge<ahh>
{
  private final List<ahh> a;
  private final List<Friend> b;
  
  public ahf(@chc List<ahh> paramList, @chc List<Friend> paramList1, @chc ban paramban, @chc bge.a<ahh> parama)
  {
    super(paramban, parama);
    a = paramList;
    b = paramList1;
  }
  
  private static boolean a(@chc Friend paramFriend, @chc String paramString)
  {
    if (mIsBlocked) {
      return false;
    }
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(paramFriend.l());
    paramFriend = paramFriend.a();
    if (paramFriend != null) {
      localArrayList.addAll(Arrays.asList(paramFriend.split(" ")));
    }
    paramFriend = localArrayList.iterator();
    while (paramFriend.hasNext()) {
      if (avg.a((String)paramFriend.next(), paramString)) {
        return true;
      }
    }
    return false;
  }
  
  @chd
  protected final List<ahh> a(@chd String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {
      return a;
    }
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = b.iterator();
    int i = 0;
    while (localIterator.hasNext())
    {
      Friend localFriend = (Friend)localIterator.next();
      int j = i;
      if (avg.c(localFriend.l(), paramString)) {
        j = 1;
      }
      i = j;
      if (a(localFriend, paramString))
      {
        localArrayList.add(localFriend);
        i = j;
      }
    }
    if (i == 0)
    {
      paramString = new Friend(paramString);
      mSuggestionState = Friend.SuggestState.PENDING;
      localArrayList.add(paramString);
    }
    return localArrayList;
  }
}

/* Location:
 * Qualified Name:     ahf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */