import com.snapchat.android.model.Friend;
import java.util.ArrayList;
import java.util.List;

public final class apc
{
  protected int a = 0;
  private final List<Friend> b = new ArrayList();
  
  public apc(List<Friend> paramList)
  {
    b.addAll(paramList);
    a = Math.min(7, b.size());
  }
  
  public final List<Friend> a()
  {
    int i = a;
    return b.subList(0, i);
  }
  
  @chd
  public final List<Friend> b()
  {
    if (!c()) {
      return null;
    }
    int i = a;
    int j = Math.min(b.size(), i + 5);
    a = j;
    return b.subList(i, j);
  }
  
  public final boolean c()
  {
    return a < b.size();
  }
}

/* Location:
 * Qualified Name:     apc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */