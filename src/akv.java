import com.snapchat.android.model.StoryGroup;
import java.util.List;
import java.util.Map;

public final class akv
{
  @cgc
  public List<StoryGroup> group_stories;
  @cgc
  public oq.b json;
  @cgc
  public Map<String, akv.a> snaps;
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
 * Qualified Name:     akv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */