package org.apache.http.entity;

import java.io.OutputStream;

public abstract interface ContentProducer
{
  public abstract void writeTo(OutputStream paramOutputStream);
}

/* Location:
 * Qualified Name:     org.apache.http.entity.ContentProducer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */