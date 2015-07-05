package android.support.v4.provider;

import android.content.Context;
import android.net.Uri;

final class SingleDocumentFile
  extends DocumentFile
{
  private Context mContext;
  private Uri mUri;
  
  SingleDocumentFile(Context paramContext, Uri paramUri)
  {
    super(null);
    mContext = paramContext;
    mUri = paramUri;
  }
  
  public final boolean canRead()
  {
    return DocumentsContractApi19.canRead(mContext, mUri);
  }
  
  public final boolean canWrite()
  {
    return DocumentsContractApi19.canWrite(mContext, mUri);
  }
  
  public final DocumentFile createDirectory(String paramString)
  {
    throw new UnsupportedOperationException();
  }
  
  public final DocumentFile createFile(String paramString1, String paramString2)
  {
    throw new UnsupportedOperationException();
  }
  
  public final boolean delete()
  {
    return DocumentsContractApi19.delete(mContext, mUri);
  }
  
  public final boolean exists()
  {
    return DocumentsContractApi19.exists(mContext, mUri);
  }
  
  public final String getName()
  {
    return DocumentsContractApi19.getName(mContext, mUri);
  }
  
  public final String getType()
  {
    return DocumentsContractApi19.getType(mContext, mUri);
  }
  
  public final Uri getUri()
  {
    return mUri;
  }
  
  public final boolean isDirectory()
  {
    return DocumentsContractApi19.isDirectory(mContext, mUri);
  }
  
  public final boolean isFile()
  {
    return DocumentsContractApi19.isFile(mContext, mUri);
  }
  
  public final long lastModified()
  {
    return DocumentsContractApi19.lastModified(mContext, mUri);
  }
  
  public final long length()
  {
    return DocumentsContractApi19.length(mContext, mUri);
  }
  
  public final DocumentFile[] listFiles()
  {
    throw new UnsupportedOperationException();
  }
  
  public final boolean renameTo(String paramString)
  {
    throw new UnsupportedOperationException();
  }
}

/* Location:
 * Qualified Name:     android.support.v4.provider.SingleDocumentFile
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */