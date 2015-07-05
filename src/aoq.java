import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import org.lucasr.twowayview.TwoWayView;
import org.lucasr.twowayview.TwoWayView.OnScrollListener;

public abstract class aoq
  implements ahb
{
  public final Context a;
  protected TwoWayView b;
  
  public aoq(Context paramContext)
  {
    a = paramContext;
  }
  
  @cgb
  public abstract View a(@cgc View paramView, ViewGroup paramViewGroup, @cgb LayoutInflater paramLayoutInflater);
  
  @cgc
  public final String a()
  {
    return null;
  }
  
  public final void a(@cgb View paramView)
  {
    paramView = (TwoWayView)paramView;
    paramView.setAdapter(e());
    paramView.setOnScrollListener(new TwoWayView.OnScrollListener()
    {
      public final void onScroll(TwoWayView paramAnonymousTwoWayView, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3) {}
      
      public final void onScrollStateChanged(TwoWayView paramAnonymousTwoWayView, int paramAnonymousInt)
      {
        if (paramAnonymousInt != 0) {
          return;
        }
        d();
      }
    });
    b = paramView;
  }
  
  public abstract void b();
  
  public abstract void d();
  
  @cgb
  public abstract BaseAdapter e();
  
  public abstract void f();
  
  public abstract void g();
  
  public final boolean j()
  {
    return false;
  }
  
  @cgb
  public final String k()
  {
    return "";
  }
  
  public final boolean l()
  {
    return false;
  }
  
  public final auz m()
  {
    return null;
  }
  
  public abstract boolean m_();
  
  public final void n()
  {
    if (b != null)
    {
      b.setSelection(0);
      View localView = b.getChildAt(0);
      if (localView != null) {
        localView.requestFocus();
      }
    }
  }
}

/* Location:
 * Qualified Name:     aoq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */