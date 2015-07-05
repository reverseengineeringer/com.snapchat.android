import android.graphics.Bitmap.Config;
import java.util.concurrent.ExecutorService;

public final class avr
{
  private final avq mBitmapPool;
  private final ExecutorService mExecutor;
  private final avr.a.a mTaskFactory;
  
  private avr(avr.a.a parama, avq paramavq, ExecutorService paramExecutorService)
  {
    mTaskFactory = parama;
    mBitmapPool = paramavq;
    mExecutor = paramExecutorService;
  }
  
  public avr(ExecutorService paramExecutorService)
  {
    this(new avr.a.a(), avq.a(), paramExecutorService);
  }
  
  public final void a(int paramInt1, int paramInt2, Bitmap.Config paramConfig)
  {
    new avr.a(mBitmapPool, paramInt1, paramInt2, paramConfig).executeOnExecutor(mExecutor, new Void[0]);
  }
  
  public static final class a
    extends avw
  {
    private avq mBitmapPool;
    
    public a(avq paramavq, int paramInt1, int paramInt2, Bitmap.Config paramConfig)
    {
      super(paramInt2, paramConfig);
      mBitmapPool = paramavq;
    }
    
    public static final class a {}
  }
}

/* Location:
 * Qualified Name:     avr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */