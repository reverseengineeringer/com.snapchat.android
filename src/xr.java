import com.snapchat.videotranscoder.task.Task.DoneCallback;
import com.snapchat.videotranscoder.task.Task.Status;
import com.snapchat.videotranscoder.task.TranscodingConfiguration;

public final class xr
  implements Task.DoneCallback
{
  private final aku a;
  private final oy b;
  private final xu c;
  private final ban d;
  private final TranscodingConfiguration e;
  
  public xr(xu paramxu, aku paramaku, TranscodingConfiguration paramTranscodingConfiguration, oy paramoy)
  {
    this(paramxu, paramaku, paramTranscodingConfiguration, paramoy, new ban());
  }
  
  private xr(xu paramxu, aku paramaku, TranscodingConfiguration paramTranscodingConfiguration, oy paramoy, ban paramban)
  {
    a = paramaku;
    b = paramoy;
    e = paramTranscodingConfiguration;
    c = paramxu;
    d = paramban;
  }
  
  public final void done(Task.Status paramStatus)
  {
    b.a(a, e, paramStatus);
    c.a(a, paramStatus);
    if (paramStatus != Task.Status.FINISHED)
    {
      d.a(new ot(paramStatus));
      new StringBuilder("Transcoding failed. Status : ").append(paramStatus);
    }
  }
}

/* Location:
 * Qualified Name:     xr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */