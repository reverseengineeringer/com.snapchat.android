import android.content.Context;
import android.content.Intent;
import com.google.gson.annotations.SerializedName;
import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.Timber;
import com.snapchat.android.analytics.framework.UpdateSnapsAnalyticsPlatform;
import com.snapchat.android.model.chat.ChatConversation;
import com.snapchat.android.model.chat.ChatFeedItem;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import javax.inject.Inject;

public class amq
  extends amd
{
  protected Map<String, aje> a;
  protected List<akq> b;
  @Inject
  protected UpdateSnapsAnalyticsPlatform c;
  
  public amq(Intent paramIntent)
  {
    super(paramIntent);
    SnapchatApplication.b().c().a(this);
  }
  
  public void a(Context paramContext)
  {
    if (h == null)
    {
      Timber.c("UpdateSnapOperation", "Load the user data in background because the User object is null", new Object[0]);
      h = ajv.a(paramContext);
    }
    super.a(paramContext);
  }
  
  public void a(@cgb uc paramuc)
  {
    super.a(paramuc);
    if (paramuc.d())
    {
      paramuc = h.mSnapsToBeUpdatedOnServer;
      Iterator localIterator = a.entrySet().iterator();
      while (localIterator.hasNext())
      {
        Object localObject = (Map.Entry)localIterator.next();
        paramuc.remove(((Map.Entry)localObject).getKey());
        localObject = (ChatFeedItem)((Map.Entry)localObject).getValue();
        ChatConversation localChatConversation = ym.b(((ChatFeedItem)localObject).j());
        if (localChatConversation != null)
        {
          localObject = localChatConversation.d(((ChatFeedItem)localObject).d());
          if ((localObject != null) && ((localObject instanceof aje))) {
            ((aje)localObject).a(true);
          }
        }
      }
      h.mServerHasMostRecentReplayTime = true;
      return;
    }
    c.a(b);
  }
  
  protected String e()
  {
    return "/bq/update_snaps";
  }
  
  @tn
  public final class a
    extends pl
  {
    @SerializedName("json")
    final Map<String, akw> a;
    @SerializedName("added_friends_timestamp")
    final Long b;
    @SerializedName("events")
    final List<akq> c;
    
    a()
    {
      Map localMap;
      a = localMap;
      ajx.a();
      b = Long.valueOf(ajx.j());
      c = b;
      int j = localMap.size();
      if (c == null) {}
      for (int i = 0;; i = c.size())
      {
        Timber.c("UpdateSnapOperation", "RequestPayload - snapUpdatesCount " + j + " addedFriendsTimeStamp " + b + " analyticsEventsCount " + i, new Object[0]);
        return;
      }
    }
  }
}

/* Location:
 * Qualified Name:     amq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */