import com.snapchat.android.model.Friend;
import com.snapchat.android.util.FriendSectionizer;
import com.snapchat.android.util.FriendSectionizer.FriendSection;
import com.snapchat.android.util.FriendSectionizer.a;
import com.snapchat.android.util.FriendSectionizer.b;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

public class aho
{
  public FriendSectionizer a()
  {
    return new FriendSectionizer.b();
  }
  
  public void a(@chc akp paramakp, @chc ArrayList<Friend> paramArrayList)
  {
    paramArrayList.clear();
    HashSet localHashSet = new HashSet(paramakp.o());
    Iterator localIterator = paramakp.n().iterator();
    while (localIterator.hasNext())
    {
      Friend localFriend = (Friend)localIterator.next();
      if ((!mIsBlocked) && (!localHashSet.contains(localFriend))) {
        paramArrayList.add(localFriend);
      }
    }
    paramArrayList.addAll(paramakp.m());
    Collections.sort(paramArrayList);
  }
  
  public FriendSectionizer b()
  {
    return new FriendSectionizer.a();
  }
  
  public void b(@chc akp paramakp, @chc ArrayList<Friend> paramArrayList)
  {
    paramArrayList.clear();
    HashSet localHashSet = new HashSet();
    Object localObject1 = new HashSet(paramakp.o());
    Object localObject2 = new ArrayList();
    Object localObject3 = paramakp.q().iterator();
    Friend localFriend;
    while (((Iterator)localObject3).hasNext())
    {
      localFriend = (Friend)((Iterator)localObject3).next();
      if ((!auk.f(localFriend.l(), paramakp)) && (!mIsBlocked)) {
        ((List)localObject2).add(localFriend);
      }
    }
    localHashSet.addAll((Collection)localObject2);
    Collections.sort((List)localObject2);
    paramArrayList.addAll((Collection)localObject2);
    localObject2 = new ArrayList();
    localObject3 = paramakp.n().iterator();
    while (((Iterator)localObject3).hasNext())
    {
      localFriend = (Friend)((Iterator)localObject3).next();
      if ((!localHashSet.contains(localFriend)) && (!((Set)localObject1).contains(localFriend)) && (!mIsBlocked))
      {
        mFriendSection = FriendSectionizer.FriendSection.MY_ADDRESS_BOOK;
        ((List)localObject2).add(localFriend);
      }
    }
    localHashSet.addAll((Collection)localObject2);
    Collections.sort((List)localObject2);
    paramArrayList.addAll((Collection)localObject2);
    localObject2 = new ArrayList();
    paramakp = paramakp.m().iterator();
    while (paramakp.hasNext())
    {
      localObject3 = (Friend)paramakp.next();
      if (!mIsBlocked)
      {
        mFriendSection = FriendSectionizer.FriendSection.MY_ADDRESS_BOOK;
        ((List)localObject2).add(localObject3);
      }
    }
    localHashSet.addAll((Collection)localObject2);
    Collections.sort((List)localObject2);
    paramArrayList.addAll((Collection)localObject2);
    paramakp = new ArrayList();
    localObject1 = ((Set)localObject1).iterator();
    while (((Iterator)localObject1).hasNext())
    {
      localObject2 = (Friend)((Iterator)localObject1).next();
      if ((!localHashSet.contains(localObject2)) && (!mIsBlocked) && (!((Friend)localObject2).q())) {
        paramakp.add(localObject2);
      }
    }
    Collections.sort(paramakp);
    paramArrayList.addAll(paramakp);
  }
}

/* Location:
 * Qualified Name:     aho
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */