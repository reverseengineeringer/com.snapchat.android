import com.snapchat.android.model.MediaMailingMetadata;
import java.util.ArrayList;

public final class ajk
  extends MediaMailingMetadata
{
  public ArrayList<ajc> mPostToStories = new ArrayList();
  private String mPostToStoriesString;
  public boolean mShouldExecutePostStoryTaskAfterUpload = false;
  
  public final MediaMailingMetadata a()
  {
    ajk localajk = new ajk();
    super.a(localajk);
    mShouldExecutePostStoryTaskAfterUpload = mShouldExecutePostStoryTaskAfterUpload;
    mPostToStoriesString = mPostToStoriesString;
    mPostToStories = new ArrayList(mPostToStories);
    return localajk;
  }
}

/* Location:
 * Qualified Name:     ajk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */