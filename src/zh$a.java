import com.snapchat.android.controller.stories.StoryLoadingContext;
import com.snapchat.android.model.StoryCollection;
import java.util.ArrayList;
import java.util.List;

public final class zh$a
{
  final List<ajr> a = new ArrayList();
  final StoryLoadingContext b;
  public StoryCollection c;
  public boolean d;
  
  public zh$a(@cgb StoryLoadingContext paramStoryLoadingContext)
  {
    b = ((StoryLoadingContext)ck.a(paramStoryLoadingContext));
  }
  
  public final a a(@cgb ajr paramajr)
  {
    a.add(ck.a(paramajr));
    return this;
  }
  
  public final zh a()
  {
    return new zh(this, (byte)0);
  }
}

/* Location:
 * Qualified Name:     zh.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */