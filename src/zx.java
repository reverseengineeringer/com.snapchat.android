import com.snapchat.android.model.StoryCollection;
import com.snapchat.android.model.StorySnapLogbook;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public final class zx
  extends zy
{
  public final Map<String, StorySnapLogbook> a = du.a();
  
  public zx(@chc akl paramakl, StoryCollection paramStoryCollection, List<StorySnapLogbook> paramList)
  {
    super(paramakl, paramStoryCollection);
    paramakl = paramList.iterator();
    while (paramakl.hasNext())
    {
      paramStoryCollection = (StorySnapLogbook)paramakl.next();
      a.put(mStorySnap.mClientId, paramStoryCollection);
    }
  }
}

/* Location:
 * Qualified Name:     zx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */