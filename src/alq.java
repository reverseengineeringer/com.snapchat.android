import com.snapchat.android.model.StoryGroup;
import java.util.List;
import java.util.Map;

public final class alq
{
  @chd
  public List<StoryGroup> group_stories;
  @chd
  public ph.b json;
  @chd
  public Map<String, alq.a> snaps;
  public boolean success;
  
  public final String toString()
  {
    return "SnapOrStoryDoublePostResponse{success=" + success + ", snaps=" + snaps + ", json=" + json + '}';
  }
  
  public static final class a
  {
    public String id;
    public long timestamp;
    
    public final String toString()
    {
      return "SnapData{id='" + id + '\'' + ", timestamp=" + timestamp + '}';
    }
  }
}

/* Location:
 * Qualified Name:     alq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */