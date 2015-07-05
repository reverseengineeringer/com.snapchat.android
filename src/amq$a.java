import com.google.gson.annotations.SerializedName;
import com.snapchat.android.Timber;
import java.util.List;
import java.util.Map;

@tn
public final class amq$a
  extends pl
{
  @SerializedName("json")
  final Map<String, akw> a;
  @SerializedName("added_friends_timestamp")
  final Long b;
  @SerializedName("events")
  final List<akq> c;
  
  amq$a(Map<String, akw> paramMap)
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

/* Location:
 * Qualified Name:     amq.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */