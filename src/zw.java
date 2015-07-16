import com.snapchat.android.model.StoryCollection;
import com.snapchat.android.model.StorySnapLogbook;
import java.util.List;

public final class zw
{
  @chc
  public static ajk a(@chc akl paramakl, @chd StoryCollection paramStoryCollection, @chd List<StorySnapLogbook> paramList)
  {
    if (paramStoryCollection == null)
    {
      if (paramList != null) {}
      for (boolean bool = true;; bool = false) {
        return new ajm(bool);
      }
    }
    if ((paramStoryCollection.k() != null) && (paramStoryCollection.k().b() != null)) {
      return new zv(paramakl, paramStoryCollection);
    }
    if (paramList == null) {
      return new zy(paramakl, paramStoryCollection);
    }
    return new zx(paramakl, paramStoryCollection, paramList);
  }
}

/* Location:
 * Qualified Name:     zw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */