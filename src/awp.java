import android.graphics.Bitmap.Config;
import java.util.concurrent.ExecutorService;

public final class awp
{
  private final awo mBitmapPool;
  private final ExecutorService mExecutor;
  private final awp.a.a mTaskFactory;
  
  private awp(awp.a.a parama, awo paramawo, ExecutorService paramExecutorService)
  {
    mTaskFactory = parama;
    mBitmapPool = paramawo;
    mExecutor = paramExecutorService;
  }
  
  public awp(ExecutorService paramExecutorService)
  {
    this(new awp.a.a(), awo.a(), paramExecutorService);
  }
  
  public final void a(int paramInt1, int paramInt2, Bitmap.Config paramConfig)
  {
    new awp.a(mBitmapPool, paramInt1, paramInt2, paramConfig).executeOnExecutor(mExecutor, new Void[0]);
  }
  
  public static final class a
    extends awu
  {
    private awo mBitmapPool;
    
    public a(awo paramawo, int paramInt1, int paramInt2, Bitmap.Config paramConfig)
    {
      super(paramInt2, paramConfig);
      mBitmapPool = paramawo;
    }
    
    public static final class a {}
  }
}

/* Location:
 * Qualified Name:     awp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */