import android.os.Build.VERSION;
import android.os.ConditionVariable;
import java.io.IOException;
import org.json.JSONArray;

public final class bst
  implements bss
{
  private String[] a;
  
  public bst()
  {
    if (Build.VERSION.SDK_INT >= 8) {}
    for (String str = "logcat -t 100 -v time";; str = "logcat -d -v time")
    {
      a = str.split("\\s+");
      return;
    }
  }
  
  private static JSONArray a(String[] paramArrayOfString)
  {
    Object localObject2 = null;
    Object localObject1 = localObject2;
    if (paramArrayOfString != null)
    {
      localObject1 = localObject2;
      if (paramArrayOfString.length > 0)
      {
        int i = 0;
        if (paramArrayOfString.length > 200) {
          i = paramArrayOfString.length - 200;
        }
        localObject1 = new JSONArray();
        while (i < paramArrayOfString.length)
        {
          ((JSONArray)localObject1).put(paramArrayOfString[i]);
          i += 1;
        }
      }
    }
    return (JSONArray)localObject1;
  }
  
  private Process b()
  {
    try
    {
      Process localProcess = new ProcessBuilder(new String[0]).command(a).start();
      return localProcess;
    }
    catch (IOException localIOException)
    {
      new StringBuilder("IOException in createProcess(): ").append(localIOException.getMessage());
      bue.b();
      bue.c();
    }
    return null;
  }
  
  public final JSONArray a()
  {
    for (;;)
    {
      try
      {
        Object localObject1 = b();
        if (localObject1 == null) {
          break label148;
        }
        ConditionVariable localConditionVariable = new ConditionVariable();
        btu localbtu1 = new btu((Process)localObject1, localConditionVariable, btu.a.a);
        btu localbtu2 = new btu((Process)localObject1, null, btu.a.b);
        new buf(localbtu1).start();
        new buf(localbtu2).start();
        localConditionVariable.block(250L);
        ((Process)localObject1).destroy();
        localObject1 = localbtu1.b();
        if (localObject1 != null)
        {
          localObject1 = ((StringBuilder)localObject1).toString();
          if (((String)localObject1).length() > 0)
          {
            localObject1 = ((String)localObject1).split("\n");
            localObject1 = a((String[])localObject1);
            bue.b();
            return (JSONArray)localObject1;
          }
        }
      }
      catch (Throwable localThrowable)
      {
        new StringBuilder("Unanticipated throwable in getLogcat: ").append(localThrowable.getMessage());
        bue.b();
        bue.c();
        return null;
      }
      Object localObject2 = null;
      continue;
      label148:
      localObject2 = null;
    }
  }
}

/* Location:
 * Qualified Name:     bst
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */