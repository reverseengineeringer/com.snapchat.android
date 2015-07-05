package android.support.v4.provider;

import android.net.Uri;
import android.webkit.MimeTypeMap;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;

final class RawDocumentFile
  extends DocumentFile
{
  private File mFile;
  
  RawDocumentFile(DocumentFile paramDocumentFile, File paramFile)
  {
    super(paramDocumentFile);
    mFile = paramFile;
  }
  
  private static boolean deleteContents(File paramFile)
  {
    paramFile = paramFile.listFiles();
    boolean bool2 = true;
    boolean bool1 = true;
    if (paramFile != null)
    {
      int j = paramFile.length;
      int i = 0;
      for (;;)
      {
        bool2 = bool1;
        if (i >= j) {
          break;
        }
        File localFile = paramFile[i];
        bool2 = bool1;
        if (localFile.isDirectory()) {
          bool2 = bool1 & deleteContents(localFile);
        }
        bool1 = bool2;
        if (!localFile.delete())
        {
          new StringBuilder("Failed to delete ").append(localFile);
          bool1 = false;
        }
        i += 1;
      }
    }
    return bool2;
  }
  
  private static String getTypeForName(String paramString)
  {
    int i = paramString.lastIndexOf('.');
    if (i >= 0)
    {
      paramString = paramString.substring(i + 1).toLowerCase();
      paramString = MimeTypeMap.getSingleton().getMimeTypeFromExtension(paramString);
      if (paramString != null) {
        return paramString;
      }
    }
    return "application/octet-stream";
  }
  
  public final boolean canRead()
  {
    return mFile.canRead();
  }
  
  public final boolean canWrite()
  {
    return mFile.canWrite();
  }
  
  public final DocumentFile createDirectory(String paramString)
  {
    paramString = new File(mFile, paramString);
    if ((paramString.isDirectory()) || (paramString.mkdir())) {
      return new RawDocumentFile(this, paramString);
    }
    return null;
  }
  
  public final DocumentFile createFile(String paramString1, String paramString2)
  {
    String str = MimeTypeMap.getSingleton().getExtensionFromMimeType(paramString1);
    paramString1 = paramString2;
    if (str != null) {
      paramString1 = paramString2 + "." + str;
    }
    paramString1 = new File(mFile, paramString1);
    try
    {
      paramString1.createNewFile();
      paramString1 = new RawDocumentFile(this, paramString1);
      return paramString1;
    }
    catch (IOException paramString1)
    {
      new StringBuilder("Failed to createFile: ").append(paramString1);
    }
    return null;
  }
  
  public final boolean delete()
  {
    deleteContents(mFile);
    return mFile.delete();
  }
  
  public final boolean exists()
  {
    return mFile.exists();
  }
  
  public final String getName()
  {
    return mFile.getName();
  }
  
  public final String getType()
  {
    Object localObject;
    if (mFile.isDirectory()) {
      localObject = null;
    }
    String str;
    do
    {
      return (String)localObject;
      localObject = mFile.getName();
      int i = ((String)localObject).lastIndexOf('.');
      if (i < 0) {
        break;
      }
      localObject = ((String)localObject).substring(i + 1).toLowerCase();
      str = MimeTypeMap.getSingleton().getMimeTypeFromExtension((String)localObject);
      localObject = str;
    } while (str != null);
    return "application/octet-stream";
  }
  
  public final Uri getUri()
  {
    return Uri.fromFile(mFile);
  }
  
  public final boolean isDirectory()
  {
    return mFile.isDirectory();
  }
  
  public final boolean isFile()
  {
    return mFile.isFile();
  }
  
  public final long lastModified()
  {
    return mFile.lastModified();
  }
  
  public final long length()
  {
    return mFile.length();
  }
  
  public final DocumentFile[] listFiles()
  {
    ArrayList localArrayList = new ArrayList();
    File[] arrayOfFile = mFile.listFiles();
    if (arrayOfFile != null)
    {
      int j = arrayOfFile.length;
      int i = 0;
      while (i < j)
      {
        localArrayList.add(new RawDocumentFile(this, arrayOfFile[i]));
        i += 1;
      }
    }
    return (DocumentFile[])localArrayList.toArray(new DocumentFile[localArrayList.size()]);
  }
  
  public final boolean renameTo(String paramString)
  {
    paramString = new File(mFile.getParentFile(), paramString);
    if (mFile.renameTo(paramString))
    {
      mFile = paramString;
      return true;
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     android.support.v4.provider.RawDocumentFile
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */