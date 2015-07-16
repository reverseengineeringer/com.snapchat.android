import android.content.Context;
import android.content.Intent;
import com.google.gson.annotations.SerializedName;
import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.analytics.framework.UpdateSnapsAnalyticsPlatform;
import com.snapchat.android.model.chat.ChatConversation;
import com.snapchat.android.model.chat.ChatFeedItem;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import javax.inject.Inject;

public class ann
  extends ana
{
  protected Map<String, aka> a;
  protected List<all> b;
  @Inject
  protected UpdateSnapsAnalyticsPlatform c;
  
  public ann(Intent paramIntent)
  {
    super(paramIntent);
    SnapchatApplication.b().c().a(this);
  }
  
  public void a(Context paramContext)
  {
    if (h == null) {
      h = akp.a(paramContext);
    }
    super.a(paramContext);
  }
  
  protected String l_()
  {
    return "/bq/update_snaps";
  }
  
  public void onResult(@chc us paramus)
  {
    super.onResult(paramus);
    if (paramus.d())
    {
      paramus = h.mSnapsToBeUpdatedOnServer;
      Iterator localIterator = a.entrySet().iterator();
      while (localIterator.hasNext())
      {
        Object localObject = (Map.Entry)localIterator.next();
        paramus.remove(((Map.Entry)localObject).getKey());
        localObject = (ChatFeedItem)((Map.Entry)localObject).getValue();
        ChatConversation localChatConversation = zi.b(((ChatFeedItem)localObject).j());
        if (localChatConversation != null)
        {
          localObject = localChatConversation.d(((ChatFeedItem)localObject).d());
          if ((localObject != null) && ((localObject instanceof aka))) {
            ((aka)localObject).a(true);
          }
        }
      }
      h.mServerHasMostRecentReplayTime = true;
      return;
    }
    c.a(b);
  }
  
  @ud
  public final class a
    extends qc
  {
    @SerializedName("json")
    final Map<String, alr> a;
    @SerializedName("added_friends_timestamp")
    final Long b;
    @SerializedName("events")
    final List<all> c;
    
    a()
    {
      Map localMap;
      a = localMap;
      akr.a();
      b = Long.valueOf(akr.j());
      c = b;
      int j = localMap.size();
      if (c == null) {}
      for (int i = 0;; i = c.size())
      {
        new StringBuilder("RequestPayload - snapUpdatesCount ").append(j).append(" addedFriendsTimeStamp ").append(b).append(" analyticsEventsCount ").append(i);
        return;
      }
    }
  }
}

/* Location:
 * Qualified Name:     ann
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */