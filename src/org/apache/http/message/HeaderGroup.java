package org.apache.http.message;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Locale;
import org.apache.http.Header;
import org.apache.http.HeaderIterator;
import org.apache.http.annotation.NotThreadSafe;
import org.apache.http.util.CharArrayBuffer;

@NotThreadSafe
public class HeaderGroup
  implements Serializable, Cloneable
{
  private static final long serialVersionUID = 2608834160639271617L;
  private final List<Header> headers = new ArrayList(16);
  
  public void addHeader(Header paramHeader)
  {
    if (paramHeader == null) {
      return;
    }
    headers.add(paramHeader);
  }
  
  public void clear()
  {
    headers.clear();
  }
  
  public Object clone()
  {
    return super.clone();
  }
  
  public boolean containsHeader(String paramString)
  {
    boolean bool2 = false;
    int i = 0;
    for (;;)
    {
      boolean bool1 = bool2;
      if (i < headers.size())
      {
        if (((Header)headers.get(i)).getName().equalsIgnoreCase(paramString)) {
          bool1 = true;
        }
      }
      else {
        return bool1;
      }
      i += 1;
    }
  }
  
  public HeaderGroup copy()
  {
    HeaderGroup localHeaderGroup = new HeaderGroup();
    headers.addAll(headers);
    return localHeaderGroup;
  }
  
  public Header[] getAllHeaders()
  {
    return (Header[])headers.toArray(new Header[headers.size()]);
  }
  
  public Header getCondensedHeader(String paramString)
  {
    int i = 1;
    Header[] arrayOfHeader = getHeaders(paramString);
    if (arrayOfHeader.length == 0) {
      return null;
    }
    if (arrayOfHeader.length == 1) {
      return arrayOfHeader[0];
    }
    CharArrayBuffer localCharArrayBuffer = new CharArrayBuffer(128);
    localCharArrayBuffer.append(arrayOfHeader[0].getValue());
    while (i < arrayOfHeader.length)
    {
      localCharArrayBuffer.append(", ");
      localCharArrayBuffer.append(arrayOfHeader[i].getValue());
      i += 1;
    }
    return new BasicHeader(paramString.toLowerCase(Locale.ENGLISH), localCharArrayBuffer.toString());
  }
  
  public Header getFirstHeader(String paramString)
  {
    int i = 0;
    while (i < headers.size())
    {
      Header localHeader = (Header)headers.get(i);
      if (localHeader.getName().equalsIgnoreCase(paramString)) {
        return localHeader;
      }
      i += 1;
    }
    return null;
  }
  
  public Header[] getHeaders(String paramString)
  {
    ArrayList localArrayList = new ArrayList();
    int i = 0;
    while (i < headers.size())
    {
      Header localHeader = (Header)headers.get(i);
      if (localHeader.getName().equalsIgnoreCase(paramString)) {
        localArrayList.add(localHeader);
      }
      i += 1;
    }
    return (Header[])localArrayList.toArray(new Header[localArrayList.size()]);
  }
  
  public Header getLastHeader(String paramString)
  {
    int i = headers.size() - 1;
    while (i >= 0)
    {
      Header localHeader = (Header)headers.get(i);
      if (localHeader.getName().equalsIgnoreCase(paramString)) {
        return localHeader;
      }
      i -= 1;
    }
    return null;
  }
  
  public HeaderIterator iterator()
  {
    return new BasicListHeaderIterator(headers, null);
  }
  
  public HeaderIterator iterator(String paramString)
  {
    return new BasicListHeaderIterator(headers, paramString);
  }
  
  public void removeHeader(Header paramHeader)
  {
    if (paramHeader == null) {
      return;
    }
    headers.remove(paramHeader);
  }
  
  public void setHeaders(Header[] paramArrayOfHeader)
  {
    clear();
    if (paramArrayOfHeader == null) {
      return;
    }
    Collections.addAll(headers, paramArrayOfHeader);
  }
  
  public String toString()
  {
    return headers.toString();
  }
  
  public void updateHeader(Header paramHeader)
  {
    if (paramHeader == null) {
      return;
    }
    int i = 0;
    while (i < headers.size())
    {
      if (((Header)headers.get(i)).getName().equalsIgnoreCase(paramHeader.getName()))
      {
        headers.set(i, paramHeader);
        return;
      }
      i += 1;
    }
    headers.add(paramHeader);
  }
}

/* Location:
 * Qualified Name:     org.apache.http.message.HeaderGroup
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */