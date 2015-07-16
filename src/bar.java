import android.content.Context;
import android.widget.Toast;
import com.snapchat.android.SnapchatApplication;
import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public final class bar
{
  public static final String MANIPHEST_TICKET_FILE_PREFIX = "snapchat_shake2report_ticket_";
  private static final String TAG = "ManiphestAdapter";
  private static AtomicBoolean sCurrentlySendingReports = new AtomicBoolean(false);
  private int MAX_NUMBER_OF_UPLOAD_TRIES = 4;
  
  public static int a(Context paramContext)
  {
    paramContext = new ArrayList(Arrays.asList(paramContext.fileList()));
    int i = 0;
    while (i < 10)
    {
      if (!paramContext.contains(b(i))) {
        return i;
      }
      i += 1;
    }
    return -1;
  }
  
  private boolean a(File paramFile, StringBuilder paramStringBuilder, String paramString1, String paramString2)
  {
    boolean bool2 = false;
    int i;
    if (paramFile != null)
    {
      paramFile = new qf(paramString1, paramFile);
      i = 0;
    }
    for (;;)
    {
      boolean bool1;
      if (i < MAX_NUMBER_OF_UPLOAD_TRIES)
      {
        paramString1 = paramFile.executeSynchronously();
        if (mResponseCode == 200) {
          paramStringBuilder.append(paramString2).append(paramString1.e()).append("\n");
        }
      }
      else
      {
        bool1 = true;
      }
      do
      {
        return bool1;
        bool1 = bool2;
      } while (i == MAX_NUMBER_OF_UPLOAD_TRIES - 1);
      bhp.a(Math.pow(2.0D, i) * 1000L);
      i += 1;
    }
  }
  
  private boolean a(String paramString, StringBuilder paramStringBuilder)
  {
    boolean bool2 = false;
    paramStringBuilder = new bar.a(paramStringBuilder.toString());
    int i = 0;
    for (;;)
    {
      if (i < MAX_NUMBER_OF_UPLOAD_TRIES)
      {
        us localus = paramStringBuilder.executeSynchronously();
        if (mResponseCode != 200) {
          break label87;
        }
        new StringBuilder("Maniphest Ticket Creation Response: ").append(localus.e());
        if (paramString != null) {
          new bar.b(paramString, localus.e()).executeSynchronously();
        }
      }
      boolean bool1 = true;
      label87:
      do
      {
        return bool1;
        bool1 = bool2;
      } while (i == MAX_NUMBER_OF_UPLOAD_TRIES - 1);
      bhp.a(Math.pow(2.0D, i) * 1000L);
      i += 1;
    }
  }
  
  private static String b(int paramInt)
  {
    return "snapchat_shake2report_ticket_" + paramInt + ".txt";
  }
  
  public final void a(final File paramFile, StringBuilder paramStringBuilder, File[] paramArrayOfFile, String paramString1, String paramString2)
  {
    boolean bool = a(paramFile, paramStringBuilder, "", "Screenshot: ");
    int k = paramArrayOfFile.length;
    int i = 1;
    int j = 0;
    if (j < k)
    {
      File localFile = paramArrayOfFile[j];
      StringBuilder localStringBuilder = new StringBuilder();
      paramFile = localFile.getName();
      paramFile = Pattern.compile("snapchat_shake2report_" + "([a-zA-Z_0-9]+)" + ".txt").matcher(paramFile);
      if (paramFile.find())
      {
        paramFile = paramFile.group(1);
        label96:
        if ((!a(localFile, paramStringBuilder, "", paramFile + ": ")) || (i == 0)) {
          break label145;
        }
      }
      label145:
      for (i = 1;; i = 0)
      {
        j += 1;
        break;
        paramFile = "";
        break label96;
      }
    }
    if ((bool) && (i != 0)) {
      if (a(paramString1, paramStringBuilder))
      {
        paramFile = "Successfully sent shake2report!";
        SnapchatApplication.b().deleteFile(paramString2);
      }
    }
    for (;;)
    {
      bhp.a(new Runnable()
      {
        public final void run()
        {
          Toast.makeText(SnapchatApplication.b(), paramFile, 1).show();
        }
      });
      return;
      paramFile = "Failed to create shake2report ticket. Please try again on good network";
      continue;
      paramFile = "one or more files failed to upload to shake2report :( Please try again?";
    }
  }
  
  static final class a
    extends ul
  {
    private final String mRequestBody;
    
    public a(String paramString)
    {
      mRequestBody = paramString;
    }
    
    public final Object getRequestPayload()
    {
      return mRequestBody.getBytes();
    }
    
    public final String getUrl()
    {
      return "";
    }
  }
  
  static final class b
    extends tx
  {
    private final String mRecipient;
    private final String mTaskId;
    
    public b(String paramString1, String paramString2)
    {
      mRecipient = paramString1;
      mTaskId = paramString2;
    }
    
    public final String getBaseUrl()
    {
      return "https://feelinsonice-hrd.appspot.com";
    }
    
    protected final String getPath()
    {
      return "/debug/request_client_log?recipientUsername=" + mRecipient + "&taskId=" + mTaskId;
    }
    
    public final Object getRequestPayload()
    {
      return new qc();
    }
  }
}

/* Location:
 * Qualified Name:     bar
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */