import android.content.Context;
import android.database.Cursor;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import com.snapchat.android.discover.ui.OpenChannelAnimationView;
import com.snapchat.android.fragments.stories.StoriesAdapter.StoriesViewType;
import com.snapchat.android.stories.StoriesSection;

public final class acy
  extends aoq
{
  private final acz c;
  
  public acy(Context paramContext, aeh paramaeh, OpenChannelAnimationView paramOpenChannelAnimationView)
  {
    super(paramContext);
    c = new acz(a, paramaeh, paramOpenChannelAnimationView);
  }
  
  @cgb
  public final View a(@cgc View paramView, ViewGroup paramViewGroup, @cgb LayoutInflater paramLayoutInflater)
  {
    View localView;
    if (paramView != null)
    {
      localView = paramView;
      if (paramView.getTag() == StoriesAdapter.StoriesViewType.DISCOVER) {}
    }
    else
    {
      localView = paramLayoutInflater.inflate(2130968656, paramViewGroup, false);
      a(localView);
      localView.setTag(StoriesAdapter.StoriesViewType.DISCOVER);
    }
    return localView;
  }
  
  public final void a(Cursor paramCursor, boolean paramBoolean)
  {
    c.a(paramCursor, paramBoolean);
  }
  
  public final void b() {}
  
  public final StoriesAdapter.StoriesViewType c()
  {
    return StoriesAdapter.StoriesViewType.DISCOVER;
  }
  
  public final void d() {}
  
  @cgb
  public final BaseAdapter e()
  {
    return c;
  }
  
  public final void f() {}
  
  public final void g() {}
  
  public final String h()
  {
    return "discover&";
  }
  
  public final StoriesSection i()
  {
    return StoriesSection.DISCOVER;
  }
  
  public final boolean m_()
  {
    return c.isEmpty();
  }
}

/* Location:
 * Qualified Name:     acy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */