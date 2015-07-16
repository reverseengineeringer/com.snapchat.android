import android.content.Context;
import android.text.TextUtils;
import com.snapchat.android.fragments.stories.StoriesAdapter.StoriesViewType;
import com.snapchat.android.model.StoryGroup;
import com.snapchat.android.model.StorySnapLogbook;
import com.snapchat.android.stories.StoriesSection;
import com.snapchat.android.stories.StoriesThumbnailType;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class aia
  implements ahy
{
  protected final StoryGroup a;
  
  public aia(StoryGroup paramStoryGroup)
  {
    a = paramStoryGroup;
  }
  
  public final StoriesSection a(boolean paramBoolean)
  {
    return StoriesSection.ME;
  }
  
  public final String a()
  {
    return a.e();
  }
  
  public final String a(Context paramContext)
  {
    return a.h().get(0)).mStorySnap.b(paramContext);
  }
  
  public final String b()
  {
    return a.c();
  }
  
  public final StoriesAdapter.StoriesViewType c()
  {
    return StoriesAdapter.StoriesViewType.DEFAULT;
  }
  
  public final StoryGroup d()
  {
    return a;
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {
      return true;
    }
    if (!(paramObject instanceof aia)) {
      return false;
    }
    paramObject = (aia)paramObject;
    return TextUtils.equals(a.c(), a.c());
  }
  
  public int hashCode()
  {
    return a.c().hashCode() + 629;
  }
  
  public final String l()
  {
    return a.c();
  }
  
  public final boolean n()
  {
    return !TextUtils.isEmpty(a.d());
  }
  
  public final boolean o()
  {
    return a.k() > 0;
  }
  
  public final avx p()
  {
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = a.h().iterator();
    while (localIterator.hasNext()) {
      localArrayList.add(nextmStorySnap);
    }
    return new avx(StoriesThumbnailType.ALL_SNAPS, localArrayList, a.c() + "&storyGroup");
  }
}

/* Location:
 * Qualified Name:     aia
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */