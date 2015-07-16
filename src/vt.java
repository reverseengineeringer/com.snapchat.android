import android.support.v7.widget.RecyclerView.s;
import android.view.MotionEvent;
import android.view.View;

public abstract class vt<T extends vp>
  extends RecyclerView.s
{
  protected boolean p;
  
  public vt(View paramView)
  {
    super(paramView);
  }
  
  public abstract void a(vo paramvo);
  
  public abstract void a(T paramT);
  
  public abstract void a(wa paramwa);
  
  public abstract void a(wa paramwa, MotionEvent paramMotionEvent);
  
  public abstract void a(wa paramwa, boolean paramBoolean);
  
  public abstract boolean a(wa paramwa, float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4);
  
  public abstract float b(wa paramwa);
  
  public abstract void b(int paramInt);
  
  public final void b(boolean paramBoolean)
  {
    p = paramBoolean;
  }
  
  public abstract boolean c(wa paramwa);
  
  public abstract int d(wa paramwa);
  
  public abstract void e(wa paramwa);
  
  public abstract void f(wa paramwa);
  
  public abstract void g(wa paramwa);
  
  public abstract T s();
  
  public final boolean t()
  {
    return p;
  }
}

/* Location:
 * Qualified Name:     vt
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */