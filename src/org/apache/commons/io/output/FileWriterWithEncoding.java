package org.apache.commons.io.output;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.io.Writer;
import java.nio.charset.Charset;
import java.nio.charset.CharsetEncoder;
import org.apache.commons.io.FileUtils;
import org.apache.commons.io.IOUtils;

public class FileWriterWithEncoding
  extends Writer
{
  private final Writer out;
  
  public FileWriterWithEncoding(File paramFile, String paramString)
  {
    this(paramFile, paramString, false);
  }
  
  public FileWriterWithEncoding(File paramFile, String paramString, boolean paramBoolean)
  {
    out = initWriter(paramFile, paramString, paramBoolean);
  }
  
  public FileWriterWithEncoding(File paramFile, Charset paramCharset)
  {
    this(paramFile, paramCharset, false);
  }
  
  public FileWriterWithEncoding(File paramFile, Charset paramCharset, boolean paramBoolean)
  {
    out = initWriter(paramFile, paramCharset, paramBoolean);
  }
  
  public FileWriterWithEncoding(File paramFile, CharsetEncoder paramCharsetEncoder)
  {
    this(paramFile, paramCharsetEncoder, false);
  }
  
  public FileWriterWithEncoding(File paramFile, CharsetEncoder paramCharsetEncoder, boolean paramBoolean)
  {
    out = initWriter(paramFile, paramCharsetEncoder, paramBoolean);
  }
  
  public FileWriterWithEncoding(String paramString1, String paramString2)
  {
    this(new File(paramString1), paramString2, false);
  }
  
  public FileWriterWithEncoding(String paramString1, String paramString2, boolean paramBoolean)
  {
    this(new File(paramString1), paramString2, paramBoolean);
  }
  
  public FileWriterWithEncoding(String paramString, Charset paramCharset)
  {
    this(new File(paramString), paramCharset, false);
  }
  
  public FileWriterWithEncoding(String paramString, Charset paramCharset, boolean paramBoolean)
  {
    this(new File(paramString), paramCharset, paramBoolean);
  }
  
  public FileWriterWithEncoding(String paramString, CharsetEncoder paramCharsetEncoder)
  {
    this(new File(paramString), paramCharsetEncoder, false);
  }
  
  public FileWriterWithEncoding(String paramString, CharsetEncoder paramCharsetEncoder, boolean paramBoolean)
  {
    this(new File(paramString), paramCharsetEncoder, paramBoolean);
  }
  
  private static Writer initWriter(File paramFile, Object paramObject, boolean paramBoolean)
  {
    if (paramFile == null) {
      throw new NullPointerException("File is missing");
    }
    if (paramObject == null) {
      throw new NullPointerException("Encoding is missing");
    }
    boolean bool = paramFile.exists();
    for (;;)
    {
      try
      {
        localFileOutputStream = new FileOutputStream(paramFile, paramBoolean);
      }
      catch (RuntimeException paramObject)
      {
        localFileOutputStream = null;
        continue;
      }
      catch (IOException paramObject)
      {
        FileOutputStream localFileOutputStream = null;
        continue;
      }
      try
      {
        if ((paramObject instanceof Charset)) {
          return new OutputStreamWriter(localFileOutputStream, (Charset)paramObject);
        }
        if ((paramObject instanceof CharsetEncoder))
        {
          paramObject = new OutputStreamWriter(localFileOutputStream, (CharsetEncoder)paramObject);
          return (Writer)paramObject;
        }
      }
      catch (IOException paramObject)
      {
        IOUtils.closeQuietly(null);
        IOUtils.closeQuietly(localFileOutputStream);
        if (!bool) {
          FileUtils.deleteQuietly(paramFile);
        }
        throw ((Throwable)paramObject);
        paramObject = new OutputStreamWriter(localFileOutputStream, (String)paramObject);
        return (Writer)paramObject;
      }
      catch (RuntimeException paramObject)
      {
        IOUtils.closeQuietly(null);
        IOUtils.closeQuietly(localFileOutputStream);
        if (!bool) {
          FileUtils.deleteQuietly(paramFile);
        }
        throw ((Throwable)paramObject);
      }
    }
  }
  
  public void close()
  {
    out.close();
  }
  
  public void flush()
  {
    out.flush();
  }
  
  public void write(int paramInt)
  {
    out.write(paramInt);
  }
  
  public void write(String paramString)
  {
    out.write(paramString);
  }
  
  public void write(String paramString, int paramInt1, int paramInt2)
  {
    out.write(paramString, paramInt1, paramInt2);
  }
  
  public void write(char[] paramArrayOfChar)
  {
    out.write(paramArrayOfChar);
  }
  
  public void write(char[] paramArrayOfChar, int paramInt1, int paramInt2)
  {
    out.write(paramArrayOfChar, paramInt1, paramInt2);
  }
}

/* Location:
 * Qualified Name:     org.apache.commons.io.output.FileWriterWithEncoding
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */