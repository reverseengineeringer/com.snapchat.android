import com.snapchat.videotranscoder.task.Task.Status;

public final class oc
  extends Exception
{
  public oc(Task.Status paramStatus)
  {
    super(paramStatus.name());
  }
}

/* Location:
 * Qualified Name:     oc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */