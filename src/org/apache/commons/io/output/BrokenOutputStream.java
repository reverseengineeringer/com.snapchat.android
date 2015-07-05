package org.apache.commons.io.output;

import java.io.IOException;
import java.io.OutputStream;

public class BrokenOutputStream
  extends OutputStream
{
  private final IOException exception;
  
  public BrokenOutputStream()
  {
    this(new IOException("Broken output stream"));
  }
  
  public BrokenOutputStream(IOException paramIOException)
  {
    exception = paramIOException;
  }
  
  public void close()
  {
    throw exception;
  }
  
  public void flush()
  {
    throw exception;
  }
  
  public void write(int paramInt)
  {
    throw exception;
  }
}

/* Location:
 * Qualified Name:     org.apache.commons.io.output.BrokenOutputStream
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */