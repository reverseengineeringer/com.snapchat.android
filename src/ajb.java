import android.content.res.Resources;
import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.model.StoryGroup;
import com.snapchat.android.model.StorySnapLogbook;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class ajb
  extends StoryGroup
{
  public static final String MY_STORY_ID = "my_story_ads79sdf";
  private static ajb sInstance;
  
  protected ajb()
  {
    mStoryId = "my_story_ads79sdf";
    mDisplayName = SnapchatApplication.b().getResources().getString(2131493240);
    mStorySnapLogbooks = new ArrayList();
  }
  
  public static ajb a()
  {
    try
    {
      if (sInstance == null) {
        sInstance = new ajb();
      }
      ajb localajb = sInstance;
      return localajb;
    }
    finally {}
  }
  
  public static void b()
  {
    try
    {
      sInstance = null;
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public final void a(List<StorySnapLogbook> paramList)
  {
    mStorySnapLogbooks.clear();
    Iterator localIterator = paramList.iterator();
    while (localIterator.hasNext())
    {
      StorySnapLogbook localStorySnapLogbook = (StorySnapLogbook)localIterator.next();
      mStoryId = "my_story_ads79sdf";
      mStorySnap.mStoryId = "my_story_ads79sdf";
    }
    mStorySnapLogbooks.addAll(paramList);
  }
}

/* Location:
 * Qualified Name:     ajb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */