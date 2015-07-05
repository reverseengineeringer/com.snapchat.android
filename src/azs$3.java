import com.snapchat.android.SnapchatApplication;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Scanner;
import java.util.concurrent.atomic.AtomicBoolean;

public final class azs$3
  implements Runnable
{
  public azs$3(azs paramazs) {}
  
  public final void run()
  {
    if (azs.a().get()) {
      return;
    }
    azs.a().set(true);
    SnapchatApplication localSnapchatApplication = SnapchatApplication.b();
    ArrayList localArrayList = new ArrayList(Arrays.asList(localSnapchatApplication.fileList()));
    int i = 0;
    while (i < 10) {
      if (localArrayList.contains(azs.a(i)))
      {
        StringBuilder localStringBuilder = new StringBuilder();
        try
        {
          FileInputStream localFileInputStream = localSnapchatApplication.openFileInput(azs.a(i));
          Object localObject = new Scanner(localFileInputStream);
          while (((Scanner)localObject).hasNextLine()) {
            localStringBuilder.append(((Scanner)localObject).nextLine()).append("\n");
          }
          File localFile;
          int j;
          i += 1;
        }
        catch (FileNotFoundException localFileNotFoundException)
        {
          localFileNotFoundException.printStackTrace();
          for (;;)
          {
            localFile = localSnapchatApplication.getFileStreamPath(azg.a(i));
            localObject = new File[azk.LOG_FILE_PREFIXES.length];
            j = 0;
            while (j < localObject.length)
            {
              localObject[j] = localSnapchatApplication.getFileStreamPath(azk.a(azk.LOG_FILE_PREFIXES[j], i));
              j += 1;
            }
            bfo.a((Closeable)localObject);
            bfo.a(localFile);
          }
          this$0.a(localFile, localStringBuilder, (File[])localObject, null, azs.a(i));
        }
      }
    }
    azs.a().set(false);
  }
}

/* Location:
 * Qualified Name:     azs.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */