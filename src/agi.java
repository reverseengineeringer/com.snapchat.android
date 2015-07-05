import android.text.TextUtils;
import com.snapchat.android.model.Friend;
import com.snapchat.android.model.Friend.SuggestState;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

public final class agi
  extends bfe<agk>
{
  private final List<agk> a;
  private final List<Friend> b;
  
  public agi(@cgb List<agk> paramList, @cgb List<Friend> paramList1, @cgb azo paramazo, @cgb bfe.a<agk> parama)
  {
    super(paramazo, parama);
    a = paramList;
    b = paramList1;
  }
  
  private static boolean a(@cgb Friend paramFriend, @cgb String paramString)
  {
    if (mIsBlocked) {
      return false;
    }
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(paramFriend.h());
    paramFriend = paramFriend.a();
    if (paramFriend != null) {
      localArrayList.addAll(Arrays.asList(paramFriend.split(" ")));
    }
    paramFriend = localArrayList.iterator();
    while (paramFriend.hasNext()) {
      if (aui.a((String)paramFriend.next(), paramString)) {
        return true;
      }
    }
    return false;
  }
  
  @cgc
  protected final List<agk> a(@cgc String paramString)
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
      if (aui.c(localFriend.h(), paramString)) {
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
 * Qualified Name:     agi
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */