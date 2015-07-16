import android.text.TextUtils;
import com.snapchat.android.model.Friend;
import com.snapchat.android.model.StoryGroup;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

final class pf$1
  implements Runnable
{
  pf$1(pf parampf, pf.a parama, us paramus, akp paramakp) {}
  
  public final void run()
  {
    pf localpf = this$0;
    pf.a locala = val$response;
    akp localakp = val$user;
    Object localObject2 = akk.a().d().iterator();
    Object localObject1;
    do
    {
      if (!((Iterator)localObject2).hasNext()) {
        break;
      }
      localObject1 = (ajy)((Iterator)localObject2).next();
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
      localObject1 = akk.a();
      localObject2 = mSharedStoryId;
      localObject1 = (StoryGroup)mStories.get(localObject2);
      if ((localObject1 != null) && (!TextUtils.isEmpty(mOurSharedStory))) {
        ((StoryGroup)localObject1).a(mOurSharedStory);
      }
      localObject1 = auk.c(mSharedStoryId, localakp);
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
 * Qualified Name:     pf.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */