import android.view.View;

public final class arr
{
  private static void a(@cgc View paramView, float paramFloat1, float paramFloat2, float paramFloat3)
  {
    if (paramView != null)
    {
      paramView.setVisibility(0);
      paramView.layout((int)paramFloat1, 0, (int)paramFloat2, (int)paramFloat3);
    }
  }
  
  public static void a(arv paramarv, int paramInt1, int paramInt2, float paramFloat, int paramInt3, int paramInt4)
  {
    View localView = paramarv.a(paramInt4).d();
    a(paramarv.a(paramInt3).d(), paramFloat - paramInt1, paramFloat, paramInt2);
    a(localView, paramFloat, paramInt1 + paramFloat, paramInt2);
  }
  
  public static void a(arv paramarv, int paramInt1, int paramInt2, int paramInt3)
  {
    a(paramarv.a(paramInt3).d(), 0.0F, paramInt1, paramInt2);
  }
}

/* Location:
 * Qualified Name:     arr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */