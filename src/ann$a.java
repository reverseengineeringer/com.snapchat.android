import com.google.gson.annotations.SerializedName;
import java.util.List;
import java.util.Map;

@ud
public final class ann$a
  extends qc
{
  @SerializedName("json")
  final Map<String, alr> a;
  @SerializedName("added_friends_timestamp")
  final Long b;
  @SerializedName("events")
  final List<all> c;
  
  ann$a(Map<String, alr> paramMap)
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

/* Location:
 * Qualified Name:     ann.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */