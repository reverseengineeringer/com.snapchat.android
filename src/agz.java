import android.text.TextUtils;
import com.snapchat.android.fragments.stories.StoriesAdapter.b;
import com.snapchat.android.model.Friend;
import com.snapchat.android.model.Friend.SuggestState;
import com.snapchat.android.model.Friend.SuggestType;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import javax.inject.Provider;

public final class agz
  extends bfe<ahb>
{
  private final List<ahb> a;
  private final StoriesAdapter.b b;
  private final Provider<ajv> c;
  
  public agz(@cgb List<ahb> paramList, @cgb azo paramazo, @cgb bfe.a<ahb> parama, @cgb StoriesAdapter.b paramb)
  {
    this(paramList, paramazo, parama, paramb, ajv.UNSAFE_USER_PROVIDER);
  }
  
  private agz(@cgb List<ahb> paramList, @cgb azo paramazo, @cgb bfe.a<ahb> parama, @cgb StoriesAdapter.b paramb, @cgb Provider<ajv> paramProvider)
  {
    super(paramazo, parama);
    a = paramList;
    b = paramb;
    c = paramProvider;
  }
  
  private static boolean a(@cgb ahb paramahb, @cgb String paramString)
  {
    Object localObject = new ArrayList();
    ((List)localObject).add(paramahb.h());
    paramahb = paramahb.a();
    if (paramahb != null) {
      ((List)localObject).addAll(Arrays.asList(paramahb.split(" ")));
    }
    paramahb = ((List)localObject).iterator();
    while (paramahb.hasNext())
    {
      localObject = (String)paramahb.next();
      if ((localObject != null) && (aui.a((String)localObject, paramString))) {
        return true;
      }
    }
    return false;
  }
  
  @cgc
  protected final List<ahb> a(@cgc String paramString)
  {
    ajv localajv = (ajv)c.get();
    if (localajv == null) {
      return a;
    }
    if (TextUtils.isEmpty(paramString)) {
      return a;
    }
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = new ArrayList(a).iterator();
    int j = -1;
    int i = 0;
    ahb localahb;
    if (localIterator.hasNext())
    {
      localahb = (ahb)localIterator.next();
      if ((j != -1) || (localahb.l())) {
        break label350;
      }
      j = localArrayList.size();
    }
    label187:
    label216:
    label319:
    label333:
    label350:
    for (;;)
    {
      Friend localFriend;
      int k;
      if ((localahb instanceof Friend))
      {
        localFriend = (Friend)localahb;
        if (b.a(localFriend)) {
          k = 1;
        }
      }
      for (;;)
      {
        if (a(localahb, paramString)) {
          if (k == 0) {
            if (localFriend != null)
            {
              if (localFriend.g()) {
                break label216;
              }
              mSuggestionState = Friend.SuggestState.ADDRESS_BOOK;
              mSuggestType = Friend.SuggestType.ADDRESS_BOOK;
            }
          }
        }
        for (;;)
        {
          localArrayList.add(localahb);
          if (aui.c(localahb.h(), paramString)) {
            i = 1;
          }
          for (;;)
          {
            break;
            if (atm.f(localFriend.h(), localajv)) {
              break label333;
            }
            mSuggestionState = Friend.SuggestState.EXISTS;
            mSuggestType = Friend.SuggestType.ADDRESS_BOOK;
            break label187;
            if (i == 0)
            {
              localFriend = new Friend(paramString);
              if ((!atm.g(paramString, localajv)) || (b.a(localFriend)))
              {
                mSuggestionState = Friend.SuggestState.EXISTS;
                mSuggestType = Friend.SuggestType.USERNAME;
              }
              if (j != -1) {
                break label319;
              }
              localArrayList.add(localFriend);
            }
            for (;;)
            {
              return localArrayList;
              localArrayList.add(j, localFriend);
            }
          }
        }
        k = 0;
        continue;
        localFriend = null;
        k = 0;
      }
    }
  }
}

/* Location:
 * Qualified Name:     agz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */