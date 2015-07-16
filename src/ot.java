import com.snapchat.videotranscoder.task.Task.Status;

public final class ot
  extends Exception
{
  public ot(Task.Status paramStatus)
  {
    super(paramStatus.name());
  }
}

/* Location:
 * Qualified Name:     ot
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */