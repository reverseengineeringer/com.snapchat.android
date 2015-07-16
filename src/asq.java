import android.view.View;

public final class asq
{
  private static void a(@chd View paramView, float paramFloat1, float paramFloat2, float paramFloat3)
  {
    if (paramView != null)
    {
      paramView.setVisibility(0);
      paramView.layout((int)paramFloat1, 0, (int)paramFloat2, (int)paramFloat3);
    }
  }
  
  public static void a(asu paramasu, int paramInt1, int paramInt2, float paramFloat, int paramInt3, int paramInt4)
  {
    View localView = paramasu.a(paramInt4).d();
    a(paramasu.a(paramInt3).d(), paramFloat - paramInt1, paramFloat, paramInt2);
    a(localView, paramFloat, paramInt1 + paramFloat, paramInt2);
  }
  
  public static void a(asu paramasu, int paramInt1, int paramInt2, int paramInt3)
  {
    a(paramasu.a(paramInt3).d(), 0.0F, paramInt1, paramInt2);
  }
}

/* Location:
 * Qualified Name:     asq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */