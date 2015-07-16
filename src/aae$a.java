import com.snapchat.android.controller.stories.StoryLoadingContext;
import com.snapchat.android.model.StoryCollection;
import java.util.ArrayList;
import java.util.List;

public final class aae$a
{
  final List<akl> a = new ArrayList();
  final StoryLoadingContext b;
  public StoryCollection c;
  public boolean d;
  
  public aae$a(@chc StoryLoadingContext paramStoryLoadingContext)
  {
    b = ((StoryLoadingContext)co.a(paramStoryLoadingContext));
  }
  
  public final a a(@chc akl paramakl)
  {
    a.add(co.a(paramakl));
    return this;
  }
  
  public final aae a()
  {
    return new aae(this, (byte)0);
  }
}

/* Location:
 * Qualified Name:     aae.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */