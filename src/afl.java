import android.content.Context;
import android.support.v7.widget.RecyclerView.a;
import android.support.v7.widget.RecyclerView.b;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import com.snapchat.android.discover.model.ChannelPage;
import com.snapchat.android.discover.model.EditionOpenOrigin;
import com.snapchat.android.discover.ui.ChannelView;
import com.snapchat.android.discover.ui.OpenChannelAnimationView;
import java.util.ArrayList;
import java.util.List;

public final class afl
  extends RecyclerView.a<aer>
{
  final afh c;
  final OpenChannelAnimationView d;
  public final List<ChannelPage> e = new ArrayList();
  protected final View.OnClickListener f = new View.OnClickListener()
  {
    public final void onClick(View paramAnonymousView)
    {
      ChannelView localChannelView = (ChannelView)paramAnonymousView;
      int i = -1;
      if (paramAnonymousView.getTag(2131361793) != null) {
        i = ((Integer)paramAnonymousView.getTag(2131361793)).intValue();
      }
      c.a(localChannelView, d, EditionOpenOrigin.DISCOVER, i);
    }
  };
  private final LayoutInflater g;
  
  public afl(Context paramContext, afh paramafh, OpenChannelAnimationView paramOpenChannelAnimationView)
  {
    c = paramafh;
    g = ((LayoutInflater)paramContext.getSystemService("layout_inflater"));
    d = paramOpenChannelAnimationView;
    if (a.a()) {
      throw new IllegalStateException("Cannot change whether this adapter has stable IDs while the adapter has registered observers.");
    }
    b = true;
  }
  
  public final int a()
  {
    return e.size();
  }
  
  public final long b(int paramInt)
  {
    return paramInt;
  }
}

/* Location:
 * Qualified Name:     afl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */