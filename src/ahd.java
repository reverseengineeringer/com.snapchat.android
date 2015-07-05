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

public class ahd
  implements ahb
{
  protected final StoryGroup a;
  
  public ahd(StoryGroup paramStoryGroup)
  {
    a = paramStoryGroup;
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
    if (!(paramObject instanceof ahd)) {
      return false;
    }
    paramObject = (ahd)paramObject;
    return TextUtils.equals(a.c(), a.c());
  }
  
  public final String h()
  {
    return a.c();
  }
  
  public int hashCode()
  {
    return a.c().hashCode() + 629;
  }
  
  public final StoriesSection i()
  {
    return StoriesSection.ME;
  }
  
  public final boolean j()
  {
    return !TextUtils.isEmpty(a.d());
  }
  
  public final String k()
  {
    return a.e();
  }
  
  public final boolean l()
  {
    return a.k() > 0;
  }
  
  public final auz m()
  {
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = a.h().iterator();
    while (localIterator.hasNext()) {
      localArrayList.add(nextmStorySnap);
    }
    return new auz(StoriesThumbnailType.ALL_SNAPS, localArrayList, a.c() + "&storyGroup");
  }
}

/* Location:
 * Qualified Name:     ahd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */