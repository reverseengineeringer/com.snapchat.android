import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import org.lucasr.twowayview.TwoWayView;
import org.lucasr.twowayview.TwoWayView.OnScrollListener;

public abstract class apm
  implements ahy
{
  protected final Context d;
  public TwoWayView e;
  public int f = -1;
  protected final TwoWayView.OnScrollListener g = new TwoWayView.OnScrollListener()
  {
    public final void onScroll(TwoWayView paramAnonymousTwoWayView, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3)
    {
      paramAnonymousInt1 += paramAnonymousInt2;
      if ((f != -1) && (f == paramAnonymousInt1)) {
        return;
      }
      f = paramAnonymousInt1;
      m();
    }
    
    public final void onScrollStateChanged(TwoWayView paramAnonymousTwoWayView, int paramAnonymousInt)
    {
      if (paramAnonymousInt != 0) {
        return;
      }
      d();
    }
  };
  
  public apm(Context paramContext)
  {
    d = paramContext;
  }
  
  @chc
  public abstract View a(@chd View paramView, ViewGroup paramViewGroup, @chc LayoutInflater paramLayoutInflater);
  
  @chd
  public final String a()
  {
    return null;
  }
  
  public final void a(@chc View paramView)
  {
    paramView = (TwoWayView)paramView;
    paramView.setAdapter(e());
    paramView.setOnScrollListener(g);
    e = paramView;
  }
  
  public abstract void a(ma paramma);
  
  public abstract void b();
  
  public abstract void d();
  
  @chc
  public abstract BaseAdapter e();
  
  public abstract void f();
  
  public abstract void g();
  
  public abstract void h();
  
  public abstract void i();
  
  public abstract void j();
  
  public abstract void k();
  
  public abstract boolean k_();
  
  public abstract void m();
  
  public final boolean n()
  {
    return false;
  }
  
  public final boolean o()
  {
    return false;
  }
  
  public final avx p()
  {
    return null;
  }
}

/* Location:
 * Qualified Name:     apm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */