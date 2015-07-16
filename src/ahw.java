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

public final class ahw
  extends bge<ahy>
{
  private final List<ahy> a;
  private final StoriesAdapter.b b;
  private final Provider<akp> c;
  
  public ahw(@chc List<ahy> paramList, @chc ban paramban, @chc bge.a<ahy> parama, @chc StoriesAdapter.b paramb)
  {
    this(paramList, paramban, parama, paramb, akp.UNSAFE_USER_PROVIDER);
  }
  
  private ahw(@chc List<ahy> paramList, @chc ban paramban, @chc bge.a<ahy> parama, @chc StoriesAdapter.b paramb, @chc Provider<akp> paramProvider)
  {
    super(paramban, parama);
    a = paramList;
    b = paramb;
    c = paramProvider;
  }
  
  private static boolean a(@chc ahy paramahy, @chc String paramString)
  {
    Object localObject = new ArrayList();
    ((List)localObject).add(paramahy.l());
    paramahy = paramahy.a();
    if (paramahy != null) {
      ((List)localObject).addAll(Arrays.asList(paramahy.split(" ")));
    }
    paramahy = ((List)localObject).iterator();
    while (paramahy.hasNext())
    {
      localObject = (String)paramahy.next();
      if ((localObject != null) && (avg.a((String)localObject, paramString))) {
        return true;
      }
    }
    return false;
  }
  
  @chd
  protected final List<ahy> a(@chd String paramString)
  {
    akp localakp = (akp)c.get();
    if (localakp == null) {
      return a;
    }
    if (TextUtils.isEmpty(paramString)) {
      return a;
    }
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = new ArrayList(a).iterator();
    int j = -1;
    int i = 0;
    ahy localahy;
    if (localIterator.hasNext())
    {
      localahy = (ahy)localIterator.next();
      if ((j != -1) || (localahy.o())) {
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
      if ((localahy instanceof Friend))
      {
        localFriend = (Friend)localahy;
        if (b.b(localFriend)) {
          k = 1;
        }
      }
      for (;;)
      {
        if (a(localahy, paramString)) {
          if (k == 0) {
            if (localFriend != null)
            {
              if (localFriend.h()) {
                break label216;
              }
              mSuggestionState = Friend.SuggestState.ADDRESS_BOOK;
              mSuggestType = Friend.SuggestType.ADDRESS_BOOK;
            }
          }
        }
        for (;;)
        {
          localArrayList.add(localahy);
          if (avg.c(localahy.l(), paramString)) {
            i = 1;
          }
          for (;;)
          {
            break;
            if (auk.f(localFriend.l(), localakp)) {
              break label333;
            }
            mSuggestionState = Friend.SuggestState.EXISTS;
            mSuggestType = Friend.SuggestType.ADDRESS_BOOK;
            break label187;
            if (i == 0)
            {
              localFriend = new Friend(paramString);
              if ((!auk.g(paramString, localakp)) || (b.b(localFriend)))
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
 * Qualified Name:     ahw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */