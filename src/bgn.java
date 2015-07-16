import java.util.concurrent.LinkedBlockingQueue;
import javax.inject.Provider;

public final class bgn<T>
{
  public final int mCapacity;
  public final LinkedBlockingQueue<T> mResources;
  
  private bgn(LinkedBlockingQueue<T> paramLinkedBlockingQueue)
  {
    mResources = paramLinkedBlockingQueue;
    mCapacity = paramLinkedBlockingQueue.size();
  }
  
  public bgn(Provider<T> paramProvider, int paramInt)
  {
    this(a(paramProvider, paramInt));
  }
  
  private static <T> LinkedBlockingQueue<T> a(Provider<T> paramProvider, int paramInt)
  {
    LinkedBlockingQueue localLinkedBlockingQueue = new LinkedBlockingQueue(paramInt);
    int i = 0;
    while (i < paramInt)
    {
      localLinkedBlockingQueue.offer(paramProvider.get());
      i += 1;
    }
    return localLinkedBlockingQueue;
  }
  
  public final void a(T paramT)
  {
    mResources.offer(paramT);
  }
}

/* Location:
 * Qualified Name:     bgn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */