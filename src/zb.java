import com.snapchat.android.model.StoryCollection;
import com.snapchat.android.model.StorySnapLogbook;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public final class zb
  extends zc
{
  public final Map<String, StorySnapLogbook> a = dl.a();
  
  public zb(@cgb ajr paramajr, StoryCollection paramStoryCollection, List<StorySnapLogbook> paramList)
  {
    super(paramajr, paramStoryCollection);
    paramajr = paramList.iterator();
    while (paramajr.hasNext())
    {
      paramStoryCollection = (StorySnapLogbook)paramajr.next();
      a.put(mStorySnap.mClientId, paramStoryCollection);
    }
  }
}

/* Location:
 * Qualified Name:     zb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */