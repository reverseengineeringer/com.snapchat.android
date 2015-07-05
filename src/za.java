import com.snapchat.android.model.StoryCollection;
import com.snapchat.android.model.StorySnapLogbook;
import java.util.List;

public final class za
{
  @cgb
  public static aio a(@cgb ajr paramajr, @cgc StoryCollection paramStoryCollection, @cgc List<StorySnapLogbook> paramList)
  {
    if (paramStoryCollection == null)
    {
      if (paramList != null) {}
      for (boolean bool = true;; bool = false) {
        return new aiq(bool);
      }
    }
    if ((paramStoryCollection.s() != null) && (paramStoryCollection.s().b() != null)) {
      return new yz(paramajr, paramStoryCollection);
    }
    if (paramList == null) {
      return new zc(paramajr, paramStoryCollection);
    }
    return new zb(paramajr, paramStoryCollection, paramList);
  }
}

/* Location:
 * Qualified Name:     za
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */