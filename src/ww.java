import com.snapchat.android.Timber;
import com.snapchat.videotranscoder.task.Task.DoneCallback;
import com.snapchat.videotranscoder.task.Task.Status;
import com.snapchat.videotranscoder.task.TranscodingConfiguration;

public final class ww
  implements Task.DoneCallback
{
  private final ajm a;
  private final oh b;
  private final wz c;
  private final azo d;
  private final TranscodingConfiguration e;
  
  public ww(wz paramwz, ajm paramajm, TranscodingConfiguration paramTranscodingConfiguration, oh paramoh)
  {
    this(paramwz, paramajm, paramTranscodingConfiguration, paramoh, new azo());
  }
  
  private ww(wz paramwz, ajm paramajm, TranscodingConfiguration paramTranscodingConfiguration, oh paramoh, azo paramazo)
  {
    a = paramajm;
    b = paramoh;
    e = paramTranscodingConfiguration;
    c = paramwz;
    d = paramazo;
  }
  
  public final void done(Task.Status paramStatus)
  {
    b.a(a, e, paramStatus);
    c.a(a, paramStatus);
    if (paramStatus != Task.Status.FINISHED)
    {
      d.a(new oc(paramStatus));
      Timber.f("TranscodingDone", "Transcoding failed. Status : " + paramStatus, new Object[0]);
    }
  }
}

/* Location:
 * Qualified Name:     ww
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */