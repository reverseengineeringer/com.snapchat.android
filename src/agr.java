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

public class agr
{
  public FriendSectionizer a()
  {
    return new FriendSectionizer.b();
  }
  
  public void a(@cgb ajv paramajv, @cgb ArrayList<Friend> paramArrayList)
  {
    paramArrayList.clear();
    HashSet localHashSet = new HashSet(paramajv.o());
    Iterator localIterator = paramajv.n().iterator();
    while (localIterator.hasNext())
    {
      Friend localFriend = (Friend)localIterator.next();
      if ((!mIsBlocked) && (!localHashSet.contains(localFriend))) {
        paramArrayList.add(localFriend);
      }
    }
    paramArrayList.addAll(paramajv.m());
    Collections.sort(paramArrayList);
  }
  
  public FriendSectionizer b()
  {
    return new FriendSectionizer.a();
  }
  
  public void b(@cgb ajv paramajv, @cgb ArrayList<Friend> paramArrayList)
  {
    paramArrayList.clear();
    HashSet localHashSet = new HashSet();
    Object localObject1 = new HashSet(paramajv.o());
    Object localObject2 = new ArrayList();
    Object localObject3 = paramajv.q().iterator();
    Friend localFriend;
    while (((Iterator)localObject3).hasNext())
    {
      localFriend = (Friend)((Iterator)localObject3).next();
      if ((!atm.f(localFriend.h(), paramajv)) && (!mIsBlocked)) {
        ((List)localObject2).add(localFriend);
      }
    }
    localHashSet.addAll((Collection)localObject2);
    Collections.sort((List)localObject2);
    paramArrayList.addAll((Collection)localObject2);
    localObject2 = new ArrayList();
    localObject3 = paramajv.n().iterator();
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
    paramajv = paramajv.m().iterator();
    while (paramajv.hasNext())
    {
      localObject3 = (Friend)paramajv.next();
      if (!mIsBlocked)
      {
        mFriendSection = FriendSectionizer.FriendSection.MY_ADDRESS_BOOK;
        ((List)localObject2).add(localObject3);
      }
    }
    localHashSet.addAll((Collection)localObject2);
    Collections.sort((List)localObject2);
    paramArrayList.addAll((Collection)localObject2);
    paramajv = new ArrayList();
    localObject1 = ((Set)localObject1).iterator();
    while (((Iterator)localObject1).hasNext())
    {
      localObject2 = (Friend)((Iterator)localObject1).next();
      if ((!localHashSet.contains(localObject2)) && (!mIsBlocked) && (!((Friend)localObject2).r())) {
        paramajv.add(localObject2);
      }
    }
    Collections.sort(paramajv);
    paramArrayList.addAll(paramajv);
  }
}

/* Location:
 * Qualified Name:     agr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */