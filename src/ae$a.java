import android.support.v7.widget.RecyclerView.s;

final class ae$a
{
  public RecyclerView.s a;
  public RecyclerView.s b;
  public int c;
  public int d;
  public int e;
  public int f;
  
  private ae$a(RecyclerView.s params1, RecyclerView.s params2)
  {
    a = params1;
    b = params2;
  }
  
  private ae$a(RecyclerView.s params1, RecyclerView.s params2, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    this(params1, params2);
    c = paramInt1;
    d = paramInt2;
    e = paramInt3;
    f = paramInt4;
  }
  
  public final String toString()
  {
    return "ChangeInfo{oldHolder=" + a + ", newHolder=" + b + ", fromX=" + c + ", fromY=" + d + ", toX=" + e + ", toY=" + f + '}';
  }
}

/* Location:
 * Qualified Name:     ae.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */