import android.support.v7.widget.RecyclerView.s;
import android.view.View;

public abstract class ux<T extends ut>
  extends RecyclerView.s
{
  protected boolean m;
  
  public ux(View paramView)
  {
    super(paramView);
  }
  
  public abstract void a(T paramT);
  
  public abstract void a(ve paramve);
  
  public abstract void a(ve paramve, boolean paramBoolean);
  
  public abstract boolean a(ve paramve, float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4);
  
  public abstract float b(ve paramve);
  
  public final void b(boolean paramBoolean)
  {
    m = paramBoolean;
  }
  
  public abstract boolean c(ve paramve);
  
  public abstract int d(ve paramve);
  
  public abstract void e(ve paramve);
  
  public abstract void f(ve paramve);
  
  public abstract void g(ve paramve);
  
  public abstract T q();
}

/* Location:
 * Qualified Name:     ux
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */