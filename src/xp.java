import com.snapchat.videotranscoder.task.Task.Status;
import java.io.File;

@bxs
public final class xp
{
  public final Object a = new Object();
  public int b = 5;
  private final aya c;
  private Task.Status d = Task.Status.INVALID;
  private String e;
  
  public xp()
  {
    this(aya.a());
  }
  
  private xp(aya paramaya)
  {
    c = paramaya;
  }
  
  private boolean f()
  {
    for (;;)
    {
      synchronized (a)
      {
        if (d != Task.Status.RUNNING)
        {
          if (d != Task.Status.CONFIGURED) {
            break label44;
          }
          break label39;
          return bool;
        }
      }
      label39:
      boolean bool = true;
      continue;
      label44:
      bool = false;
    }
  }
  
  public final int a()
  {
    synchronized (a)
    {
      int i = b;
      return 5 - i;
    }
  }
  
  public final void a(Task.Status paramStatus)
  {
    synchronized (a)
    {
      d = paramStatus;
      return;
    }
  }
  
  public final boolean a(boolean paramBoolean)
  {
    boolean bool = false;
    Object localObject1 = a;
    if (paramBoolean) {}
    for (;;)
    {
      try
      {
        if (d != Task.Status.INVALID) {
          break label61;
        }
        i = 1;
        if (!f())
        {
          paramBoolean = bool;
          if (i == 0) {
            return paramBoolean;
          }
        }
      }
      finally {}
      paramBoolean = true;
      continue;
      label61:
      int i = 0;
    }
  }
  
  public final String b()
  {
    synchronized (a)
    {
      if ((e == null) || (e.length() == 0))
      {
        localObject2 = c.b();
        if (localObject2 != null) {
          e = ((File)localObject2).getPath();
        }
      }
      Object localObject2 = e;
      return (String)localObject2;
    }
  }
  
  public final Task.Status c()
  {
    synchronized (a)
    {
      Task.Status localStatus = d;
      return localStatus;
    }
  }
  
  public final boolean d()
  {
    for (;;)
    {
      synchronized (a)
      {
        if (b > 0)
        {
          bool = true;
          return bool;
        }
      }
      boolean bool = false;
    }
  }
  
  public final boolean e()
  {
    for (;;)
    {
      synchronized (a)
      {
        if (d != Task.Status.CONFIG_ERROR)
        {
          if (d != Task.Status.FAILED) {
            break label44;
          }
          break label39;
          return bool;
        }
      }
      label39:
      boolean bool = true;
      continue;
      label44:
      bool = false;
    }
  }
}

/* Location:
 * Qualified Name:     xp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */