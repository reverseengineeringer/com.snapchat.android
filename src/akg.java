import com.snapchat.android.model.MediaMailingMetadata;
import java.util.ArrayList;

public final class akg
  extends MediaMailingMetadata
{
  public ArrayList<ajy> mPostToStories = new ArrayList();
  private String mPostToStoriesString;
  public boolean mShouldExecutePostStoryTaskAfterUpload = false;
  
  public final MediaMailingMetadata a()
  {
    akg localakg = new akg();
    super.a(localakg);
    mShouldExecutePostStoryTaskAfterUpload = mShouldExecutePostStoryTaskAfterUpload;
    mPostToStoriesString = mPostToStoriesString;
    mPostToStories = new ArrayList(mPostToStories);
    return localakg;
  }
}

/* Location:
 * Qualified Name:     akg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */