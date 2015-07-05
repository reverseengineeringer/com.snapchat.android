import android.text.TextUtils;
import com.snapchat.android.model.Friend;
import com.snapchat.android.model.Friend.SuggestState;
import com.snapchat.android.util.FriendSectionizer.FriendSection;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

public final class afc
  extends bfe<Friend>
{
  String a;
  boolean b;
  boolean c;
  boolean d;
  boolean e;
  private final List<Friend> f;
  
  public afc(@cgb List<Friend> paramList, @cgb azo paramazo, @cgb bfe.a<Friend> parama)
  {
    super(paramazo, parama);
    f = paramList;
  }
  
  private boolean a(Friend paramFriend, String paramString)
  {
    if (b) {
      return aui.b(paramFriend.h(), paramString);
    }
    Object localObject = new ArrayList();
    ((ArrayList)localObject).add(paramFriend.a());
    ((ArrayList)localObject).addAll(Arrays.asList(paramFriend.a().split(" ")));
    localObject = ((ArrayList)localObject).iterator();
    while (((Iterator)localObject).hasNext()) {
      if (aui.a((String)((Iterator)localObject).next(), paramString)) {
        return true;
      }
    }
    return aui.b(paramFriend.h(), paramString);
  }
  
  public final List<Friend> a(String paramString)
  {
    Object localObject1 = null;
    a = paramString;
    ArrayList localArrayList1 = new ArrayList();
    ArrayList localArrayList2 = new ArrayList(f);
    if (paramString == null) {
      return null;
    }
    if ((!e) && (TextUtils.isEmpty(paramString))) {
      return Collections.EMPTY_LIST;
    }
    int j = 0;
    int i = 0;
    Object localObject2;
    afl localafl;
    if (j < localArrayList2.size())
    {
      localObject2 = (Friend)localArrayList2.get(j);
      if ((((Friend)localObject2).p()) && (!aui.c(paramString, ((Friend)localObject2).h()))) {
        break label418;
      }
      if ((localObject2 instanceof afl))
      {
        localafl = (afl)localObject2;
        if (a((Friend)localObject2, paramString)) {
          localArrayList1.add(localafl);
        }
      }
    }
    for (;;)
    {
      j += 1;
      break;
      localObject2 = c.iterator();
      for (;;)
      {
        if (((Iterator)localObject2).hasNext())
        {
          String str = (String)((Iterator)localObject2).next();
          if ((aui.b(str, paramString)) || (aui.b(paramString, str)))
          {
            localArrayList1.add(localafl);
            break;
          }
        }
      }
      continue;
      if ((!c) && (aui.c(paramString, ((Friend)localObject2).h())))
      {
        if (d) {
          localObject1 = localObject2;
        }
      }
      else
      {
        for (;;)
        {
          if (a((Friend)localObject2, paramString))
          {
            localArrayList1.add(localObject2);
            if ((mFriendSection == FriendSectionizer.FriendSection.MY_ADDRESS_BOOK) || (mFriendSection == FriendSectionizer.FriendSection.ON_SNAPCHAT) || (mFriendSection == FriendSectionizer.FriendSection.INVITE))
            {
              i += 1;
              break;
              if (!c)
              {
                if (localObject1 != null) {
                  break label395;
                }
                paramString = new Friend(paramString);
                mSuggestionState = Friend.SuggestState.PENDING;
                mFriendSection = FriendSectionizer.FriendSection.USERNAME;
                if (d) {
                  break label356;
                }
                localArrayList1.add(0, paramString);
              }
              for (;;)
              {
                return localArrayList1;
                label356:
                if ((i == 0) || (i >= localArrayList1.size()))
                {
                  localArrayList1.add(paramString);
                }
                else
                {
                  localArrayList1.add(i, paramString);
                  continue;
                  label395:
                  if (!d) {
                    localArrayList1.add(0, localObject1);
                  }
                }
              }
              continue;
              label418:
              break;
            }
          }
        }
        continue;
      }
      localObject1 = localObject2;
    }
  }
  
  protected final void a(Exception paramException)
  {
    mExceptionReporter.b(paramException);
  }
}

/* Location:
 * Qualified Name:     afc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */