package android.support.v4.util;

import java.io.File;
import java.io.FileDescriptor;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;

public final class AtomicFile
{
  private final File mBackupName;
  private final File mBaseName;
  
  private AtomicFile(File paramFile)
  {
    mBaseName = paramFile;
    mBackupName = new File(paramFile.getPath() + ".bak");
  }
  
  private void delete()
  {
    mBaseName.delete();
    mBackupName.delete();
  }
  
  private void failWrite(FileOutputStream paramFileOutputStream)
  {
    if (paramFileOutputStream != null) {
      sync(paramFileOutputStream);
    }
    try
    {
      paramFileOutputStream.close();
      mBaseName.delete();
      mBackupName.renameTo(mBaseName);
      return;
    }
    catch (IOException paramFileOutputStream) {}
  }
  
  private void finishWrite(FileOutputStream paramFileOutputStream)
  {
    if (paramFileOutputStream != null) {
      sync(paramFileOutputStream);
    }
    try
    {
      paramFileOutputStream.close();
      mBackupName.delete();
      return;
    }
    catch (IOException paramFileOutputStream) {}
  }
  
  private File getBaseFile()
  {
    return mBaseName;
  }
  
  private FileInputStream openRead()
  {
    if (mBackupName.exists())
    {
      mBaseName.delete();
      mBackupName.renameTo(mBaseName);
    }
    return new FileInputStream(mBaseName);
  }
  
  private byte[] readFully()
  {
    int i = 0;
    if (mBackupName.exists())
    {
      mBaseName.delete();
      mBackupName.renameTo(mBaseName);
    }
    FileInputStream localFileInputStream = new FileInputStream(mBaseName);
    try
    {
      Object localObject1 = new byte[localFileInputStream.available()];
      int j = localFileInputStream.read((byte[])localObject1, i, localObject1.length - i);
      if (j <= 0) {
        return (byte[])localObject1;
      }
      i = j + i;
      j = localFileInputStream.available();
      if (j > localObject1.length - i)
      {
        byte[] arrayOfByte = new byte[j + i];
        System.arraycopy(localObject1, 0, arrayOfByte, 0, i);
        localObject1 = arrayOfByte;
      }
      for (;;)
      {
        break;
      }
    }
    finally
    {
      localFileInputStream.close();
    }
  }
  
  private FileOutputStream startWrite()
  {
    if (mBaseName.exists())
    {
      if (mBackupName.exists()) {
        break label77;
      }
      if (!mBaseName.renameTo(mBackupName)) {
        new StringBuilder("Couldn't rename file ").append(mBaseName).append(" to backup file ").append(mBackupName);
      }
    }
    for (;;)
    {
      try
      {
        FileOutputStream localFileOutputStream1 = new FileOutputStream(mBaseName);
        return localFileOutputStream1;
      }
      catch (FileNotFoundException localFileNotFoundException1)
      {
        label77:
        if (mBaseName.getParentFile().mkdir()) {
          continue;
        }
        throw new IOException("Couldn't create directory " + mBaseName);
        try
        {
          FileOutputStream localFileOutputStream2 = new FileOutputStream(mBaseName);
          return localFileOutputStream2;
        }
        catch (FileNotFoundException localFileNotFoundException2)
        {
          throw new IOException("Couldn't create " + mBaseName);
        }
      }
      mBaseName.delete();
    }
  }
  
  private static boolean sync(FileOutputStream paramFileOutputStream)
  {
    if (paramFileOutputStream != null) {}
    try
    {
      paramFileOutputStream.getFD().sync();
      return true;
    }
    catch (IOException paramFileOutputStream) {}
    return false;
  }
}

/* Location:
 * Qualified Name:     android.support.v4.util.AtomicFile
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */