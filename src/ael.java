import android.content.Context;
import android.database.Cursor;
import android.support.v7.widget.RecyclerView.a;
import android.support.v7.widget.RecyclerView.b;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import com.snapchat.android.discover.model.EditionOpenOrigin;
import com.snapchat.android.discover.ui.ChannelView;
import com.snapchat.android.discover.ui.OpenChannelAnimationView;

public final class ael
  extends RecyclerView.a<adr>
{
  final aeh c;
  final OpenChannelAnimationView d;
  protected final View.OnClickListener e = new View.OnClickListener()
  {
    public final void onClick(View paramAnonymousView)
    {
      paramAnonymousView = (ChannelView)paramAnonymousView;
      c.a(paramAnonymousView, d, EditionOpenOrigin.DISCOVER);
    }
  };
  private final adj f;
  private final LayoutInflater g;
  private Cursor h;
  
  private ael(Context paramContext, aeh paramaeh, adj paramadj, OpenChannelAnimationView paramOpenChannelAnimationView)
  {
    c = paramaeh;
    g = ((LayoutInflater)paramContext.getSystemService("layout_inflater"));
    f = paramadj;
    h = null;
    d = paramOpenChannelAnimationView;
    if (a.a()) {
      throw new IllegalStateException("Cannot change whether this adapter has stable IDs while the adapter has registered observers.");
    }
    b = true;
  }
  
  public ael(Context paramContext, aeh paramaeh, OpenChannelAnimationView paramOpenChannelAnimationView)
  {
    this(paramContext, paramaeh, adj.a(), paramOpenChannelAnimationView);
  }
  
  public final int a()
  {
    if (h == null) {
      return 0;
    }
    return h.getCount();
  }
  
  public final Cursor a(Cursor paramCursor)
  {
    Object localObject;
    if (paramCursor == h) {
      localObject = null;
    }
    Cursor localCursor;
    do
    {
      return (Cursor)localObject;
      localCursor = h;
      h = paramCursor;
      localObject = localCursor;
    } while (paramCursor == null);
    a.b();
    return localCursor;
  }
  
  public final long b(int paramInt)
  {
    return paramInt;
  }
}

/* Location:
 * Qualified Name:     ael
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */