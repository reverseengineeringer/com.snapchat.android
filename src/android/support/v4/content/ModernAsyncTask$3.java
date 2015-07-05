package android.support.v4.content;

import java.util.concurrent.Callable;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.FutureTask;

final class ModernAsyncTask$3
  extends FutureTask<Result>
{
  ModernAsyncTask$3(ModernAsyncTask paramModernAsyncTask, Callable paramCallable)
  {
    super(paramCallable);
  }
  
  protected final void done()
  {
    try
    {
      Object localObject = get();
      ModernAsyncTask.access$400(this$0, localObject);
      return;
    }
    catch (ExecutionException localExecutionException)
    {
      throw new RuntimeException("An error occured while executing doInBackground()", localExecutionException.getCause());
    }
    catch (CancellationException localCancellationException)
    {
      ModernAsyncTask.access$400(this$0, null);
      return;
    }
    catch (Throwable localThrowable)
    {
      throw new RuntimeException("An error occured while executing doInBackground()", localThrowable);
    }
    catch (InterruptedException localInterruptedException) {}
  }
}

/* Location:
 * Qualified Name:     android.support.v4.content.ModernAsyncTask.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */