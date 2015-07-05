import android.text.TextUtils;
import com.snapchat.android.model.Friend;
import com.snapchat.android.model.StoryGroup;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

final class oo$1
  implements Runnable
{
  oo$1(oo paramoo, oo.a parama, uc paramuc, ajv paramajv) {}
  
  public final void run()
  {
    oo localoo = this$0;
    oo.a locala = val$response;
    ajv localajv = val$user;
    Object localObject2 = ajq.a().d().iterator();
    Object localObject1;
    do
    {
      if (!((Iterator)localObject2).hasNext()) {
        break;
      }
      localObject1 = (ajc)((Iterator)localObject2).next();
    } while (!TextUtils.equals(mStoryId, mSharedStoryId));
    for (;;)
    {
      if (localObject1 != null)
      {
        if (!TextUtils.isEmpty(mLocalPostTitle)) {
          mCustomTitle = mLocalViewTitle;
        }
        if (!TextUtils.isEmpty(mLocalPostBody)) {
          mCustomDescription = mLocalPostBody;
        }
      }
      localObject1 = ajq.a();
      localObject2 = mSharedStoryId;
      localObject1 = (StoryGroup)mStories.get(localObject2);
      if ((localObject1 != null) && (!TextUtils.isEmpty(mOurSharedStory))) {
        ((StoryGroup)localObject1).a(mOurSharedStory);
      }
      localObject1 = atm.c(mSharedStoryId, localajv);
      if (localObject1 != null)
      {
        if (TextUtils.isEmpty(mFriend)) {
          break label202;
        }
        mCustomDescription = mFriend;
      }
      for (;;)
      {
        if (!TextUtils.isEmpty(mLocalViewTitle)) {
          mCustomTitle = mLocalViewTitle;
        }
        return;
        label202:
        if (!TextUtils.isEmpty(mLocalViewBody)) {
          mCustomDescription = mLocalViewBody;
        }
      }
      localObject1 = null;
    }
  }
}

/* Location:
 * Qualified Name:     oo.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */