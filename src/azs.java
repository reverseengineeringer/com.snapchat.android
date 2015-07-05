import android.content.Context;
import android.widget.Toast;
import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.Timber;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Scanner;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public final class azs
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
      paramFile = new po(paramString1, paramFile);
      i = 0;
    }
    for (;;)
    {
      boolean bool1;
      if (i < MAX_NUMBER_OF_UPLOAD_TRIES)
      {
        paramString1 = paramFile.i();
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
        Timber.b("ManiphestAdapter", "Oops. couldn't upload file to GCS for S2R, retrying", new Object[0]);
        bool1 = bool2;
      } while (i == MAX_NUMBER_OF_UPLOAD_TRIES - 1);
      bgp.a(Math.pow(2.0D, i) * 1000L);
      i += 1;
    }
  }
  
  private boolean a(String paramString, StringBuilder paramStringBuilder)
  {
    boolean bool2 = false;
    paramStringBuilder = new azs.a(paramStringBuilder.toString());
    int i = 0;
    for (;;)
    {
      if (i < MAX_NUMBER_OF_UPLOAD_TRIES)
      {
        uc localuc = paramStringBuilder.i();
        if (mResponseCode != 200) {
          break label98;
        }
        Timber.b("ManiphestAdapter", "Maniphest Ticket Creation Response: " + localuc.e(), new Object[0]);
        if (paramString != null) {
          new azs.b(paramString, localuc.e()).i();
        }
      }
      boolean bool1 = true;
      label98:
      do
      {
        return bool1;
        Timber.b("ManiphestAdapter", "Oops. couldn't create maniphest ticket. maybe endpoint is down?", new Object[0]);
        bool1 = bool2;
      } while (i == MAX_NUMBER_OF_UPLOAD_TRIES - 1);
      bgp.a(Math.pow(2.0D, i) * 1000L);
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
      bgp.a(new Runnable()
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
    extends tv
  {
    private final String mRequestBody;
    
    public a(String paramString)
    {
      mRequestBody = paramString;
    }
    
    public final Object b()
    {
      return mRequestBody.getBytes();
    }
    
    public final String n_()
    {
      return "";
    }
  }
  
  static final class b
    extends th
  {
    private final String mRecipient;
    private final String mTaskId;
    
    public b(String paramString1, String paramString2)
    {
      mRecipient = paramString1;
      mTaskId = paramString2;
    }
    
    public final Object b()
    {
      return new pl();
    }
    
    protected final String d()
    {
      return "/debug/request_client_log?recipientUsername=" + mRecipient + "&taskId=" + mTaskId;
    }
    
    public final String h()
    {
      return "https://feelinsonice-hrd.appspot.com";
    }
  }
}

/* Location:
 * Qualified Name:     azs
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */