package org.apache.http.message;

import org.apache.http.HeaderElement;
import org.apache.http.NameValuePair;
import org.apache.http.annotation.NotThreadSafe;
import org.apache.http.util.Args;
import org.apache.http.util.LangUtils;

@NotThreadSafe
public class BasicHeaderElement
  implements Cloneable, HeaderElement
{
  private final String name;
  private final NameValuePair[] parameters;
  private final String value;
  
  public BasicHeaderElement(String paramString1, String paramString2)
  {
    this(paramString1, paramString2, null);
  }
  
  public BasicHeaderElement(String paramString1, String paramString2, NameValuePair[] paramArrayOfNameValuePair)
  {
    name = ((String)Args.notNull(paramString1, "Name"));
    value = paramString2;
    if (paramArrayOfNameValuePair != null)
    {
      parameters = paramArrayOfNameValuePair;
      return;
    }
    parameters = new NameValuePair[0];
  }
  
  public Object clone()
  {
    return super.clone();
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {}
    do
    {
      return true;
      if (!(paramObject instanceof HeaderElement)) {
        break;
      }
      paramObject = (BasicHeaderElement)paramObject;
    } while ((name.equals(name)) && (LangUtils.equals(value, value)) && (LangUtils.equals(parameters, parameters)));
    return false;
    return false;
  }
  
  public String getName()
  {
    return name;
  }
  
  public NameValuePair getParameter(int paramInt)
  {
    return parameters[paramInt];
  }
  
  public NameValuePair getParameterByName(String paramString)
  {
    Args.notNull(paramString, "Name");
    NameValuePair[] arrayOfNameValuePair = parameters;
    int j = arrayOfNameValuePair.length;
    int i = 0;
    while (i < j)
    {
      NameValuePair localNameValuePair = arrayOfNameValuePair[i];
      if (localNameValuePair.getName().equalsIgnoreCase(paramString)) {
        return localNameValuePair;
      }
      i += 1;
    }
    return null;
  }
  
  public int getParameterCount()
  {
    return parameters.length;
  }
  
  public NameValuePair[] getParameters()
  {
    return (NameValuePair[])parameters.clone();
  }
  
  public String getValue()
  {
    return value;
  }
  
  public int hashCode()
  {
    int j = LangUtils.hashCode(LangUtils.hashCode(17, name), value);
    NameValuePair[] arrayOfNameValuePair = parameters;
    int k = arrayOfNameValuePair.length;
    int i = 0;
    while (i < k)
    {
      j = LangUtils.hashCode(j, arrayOfNameValuePair[i]);
      i += 1;
    }
    return j;
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(name);
    if (value != null)
    {
      localStringBuilder.append("=");
      localStringBuilder.append(value);
    }
    NameValuePair[] arrayOfNameValuePair = parameters;
    int j = arrayOfNameValuePair.length;
    int i = 0;
    while (i < j)
    {
      NameValuePair localNameValuePair = arrayOfNameValuePair[i];
      localStringBuilder.append("; ");
      localStringBuilder.append(localNameValuePair);
      i += 1;
    }
    return localStringBuilder.toString();
  }
}

/* Location:
 * Qualified Name:     org.apache.http.message.BasicHeaderElement
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */