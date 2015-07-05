import android.os.Build.VERSION;
import android.os.Handler;
import android.view.Choreographer;

public final class bp
  extends bf
{
  private bp(bk parambk, bo parambo)
  {
    super(parambk, parambo);
  }
  
  public static bp c()
  {
    bk localbk = new bk();
    if (Build.VERSION.SDK_INT >= 16) {}
    for (Object localObject = new be.a(Choreographer.getInstance());; localObject = new be.b(new Handler())) {
      return new bp(localbk, (bo)localObject);
    }
  }
}

/* Location:
 * Qualified Name:     bp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */