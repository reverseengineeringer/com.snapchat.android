package android.support.v4.provider;

import android.content.Context;
import android.net.Uri;

final class TreeDocumentFile
  extends DocumentFile
{
  private Context mContext;
  private Uri mUri;
  
  TreeDocumentFile(DocumentFile paramDocumentFile, Context paramContext, Uri paramUri)
  {
    super(paramDocumentFile);
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
    paramString = DocumentsContractApi21.createDirectory(mContext, mUri, paramString);
    if (paramString != null) {
      return new TreeDocumentFile(this, mContext, paramString);
    }
    return null;
  }
  
  public final DocumentFile createFile(String paramString1, String paramString2)
  {
    paramString1 = DocumentsContractApi21.createFile(mContext, mUri, paramString1, paramString2);
    if (paramString1 != null) {
      return new TreeDocumentFile(this, mContext, paramString1);
    }
    return null;
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
    Uri[] arrayOfUri = DocumentsContractApi21.listFiles(mContext, mUri);
    DocumentFile[] arrayOfDocumentFile = new DocumentFile[arrayOfUri.length];
    int i = 0;
    while (i < arrayOfUri.length)
    {
      arrayOfDocumentFile[i] = new TreeDocumentFile(this, mContext, arrayOfUri[i]);
      i += 1;
    }
    return arrayOfDocumentFile;
  }
  
  public final boolean renameTo(String paramString)
  {
    paramString = DocumentsContractApi21.renameTo(mContext, mUri, paramString);
    if (paramString != null)
    {
      mUri = paramString;
      return true;
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     android.support.v4.provider.TreeDocumentFile
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */