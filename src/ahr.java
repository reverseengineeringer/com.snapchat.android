import com.snapchat.android.model.Friend;
import com.snapchat.android.util.FriendSectionizer;
import com.snapchat.android.util.FriendSectionizer.FriendSection;
import com.snapchat.android.util.FriendSectionizer.d;
import com.snapchat.android.util.FriendSectionizer.e;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

public final class ahr
  extends aho
{
  private final String a = "AddressBookFriendsListProvider";
  
  public final FriendSectionizer a()
  {
    return new FriendSectionizer.e();
  }
  
  public final void a(@chc akp paramakp, @chc ArrayList<Friend> paramArrayList)
  {
    paramArrayList.clear();
    Object localObject1 = new HashSet(paramakp.o());
    Object localObject2 = new ArrayList();
    Iterator localIterator = paramakp.n().iterator();
    while (localIterator.hasNext())
    {
      Friend localFriend = (Friend)localIterator.next();
      if ((!((Set)localObject1).contains(localFriend)) && (!mIsBlocked))
      {
        mFriendSection = FriendSectionizer.FriendSection.ON_SNAPCHAT;
        ((List)localObject2).add(localFriend);
      }
    }
    Collections.sort((List)localObject2);
    paramArrayList.addAll((Collection)localObject2);
    localObject1 = new ArrayList();
    paramakp = paramakp.m().iterator();
    while (paramakp.hasNext())
    {
      localObject2 = (Friend)paramakp.next();
      if (!mIsBlocked)
      {
        mFriendSection = FriendSectionizer.FriendSection.INVITE;
        ((List)localObject1).add(localObject2);
      }
    }
    Collections.sort((List)localObject1);
    paramArrayList.addAll((Collection)localObject1);
    if (paramArrayList.size() == 0) {
      new StringBuilder("user ").append(akr.l()).append("has no contacts.");
    }
  }
  
  public final FriendSectionizer b()
  {
    return new FriendSectionizer.d();
  }
  
  public final void b(@chc akp paramakp, @chc ArrayList<Friend> paramArrayList)
  {
    paramArrayList.clear();
    Object localObject1 = new HashSet(paramakp.o());
    Object localObject2 = new ArrayList();
    Iterator localIterator = paramakp.n().iterator();
    while (localIterator.hasNext())
    {
      Friend localFriend = (Friend)localIterator.next();
      if ((!((Set)localObject1).contains(localFriend)) && (!mIsBlocked))
      {
        mFriendSection = FriendSectionizer.FriendSection.ON_SNAPCHAT;
        ((List)localObject2).add(localFriend);
      }
    }
    Collections.sort((List)localObject2);
    paramArrayList.addAll((Collection)localObject2);
    localObject1 = new ArrayList();
    paramakp = paramakp.m().iterator();
    while (paramakp.hasNext())
    {
      localObject2 = (Friend)paramakp.next();
      if (!mIsBlocked)
      {
        mFriendSection = FriendSectionizer.FriendSection.INVITE;
        ((List)localObject1).add(localObject2);
      }
    }
    Collections.sort((List)localObject1);
    paramArrayList.addAll((Collection)localObject1);
  }
}

/* Location:
 * Qualified Name:     ahr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */