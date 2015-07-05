package org.apache.commons.lang3.exception;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import org.apache.commons.lang3.StringUtils;
import org.apache.commons.lang3.tuple.ImmutablePair;
import org.apache.commons.lang3.tuple.Pair;

public class DefaultExceptionContext
  implements Serializable, ExceptionContext
{
  private static final long serialVersionUID = 20110706L;
  private final List<Pair<String, Object>> contextValues = new ArrayList();
  
  public DefaultExceptionContext addContextValue(String paramString, Object paramObject)
  {
    contextValues.add(new ImmutablePair(paramString, paramObject));
    return this;
  }
  
  public List<Pair<String, Object>> getContextEntries()
  {
    return contextValues;
  }
  
  public Set<String> getContextLabels()
  {
    HashSet localHashSet = new HashSet();
    Iterator localIterator = contextValues.iterator();
    while (localIterator.hasNext()) {
      localHashSet.add(((Pair)localIterator.next()).getKey());
    }
    return localHashSet;
  }
  
  public List<Object> getContextValues(String paramString)
  {
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = contextValues.iterator();
    while (localIterator.hasNext())
    {
      Pair localPair = (Pair)localIterator.next();
      if (StringUtils.equals(paramString, (CharSequence)localPair.getKey())) {
        localArrayList.add(localPair.getValue());
      }
    }
    return localArrayList;
  }
  
  public Object getFirstContextValue(String paramString)
  {
    Iterator localIterator = contextValues.iterator();
    while (localIterator.hasNext())
    {
      Pair localPair = (Pair)localIterator.next();
      if (StringUtils.equals(paramString, (CharSequence)localPair.getKey())) {
        return localPair.getValue();
      }
    }
    return null;
  }
  
  public String getFormattedExceptionMessage(String paramString)
  {
    StringBuilder localStringBuilder = new StringBuilder(256);
    if (paramString != null) {
      localStringBuilder.append(paramString);
    }
    if (contextValues.size() > 0)
    {
      if (localStringBuilder.length() > 0) {
        localStringBuilder.append('\n');
      }
      localStringBuilder.append("Exception Context:\n");
      Iterator localIterator = contextValues.iterator();
      int i = 0;
      if (localIterator.hasNext())
      {
        paramString = (Pair)localIterator.next();
        localStringBuilder.append("\t[");
        i += 1;
        localStringBuilder.append(i);
        localStringBuilder.append(':');
        localStringBuilder.append((String)paramString.getKey());
        localStringBuilder.append("=");
        paramString = paramString.getValue();
        if (paramString == null) {
          localStringBuilder.append("null");
        }
        for (;;)
        {
          localStringBuilder.append("]\n");
          break;
          try
          {
            paramString = paramString.toString();
            localStringBuilder.append(paramString);
          }
          catch (Exception paramString)
          {
            for (;;)
            {
              paramString = "Exception thrown on toString(): " + ExceptionUtils.getStackTrace(paramString);
            }
          }
        }
      }
      localStringBuilder.append("---------------------------------");
    }
    return localStringBuilder.toString();
  }
  
  public DefaultExceptionContext setContextValue(String paramString, Object paramObject)
  {
    Iterator localIterator = contextValues.iterator();
    while (localIterator.hasNext()) {
      if (StringUtils.equals(paramString, (CharSequence)((Pair)localIterator.next()).getKey())) {
        localIterator.remove();
      }
    }
    addContextValue(paramString, paramObject);
    return this;
  }
}

/* Location:
 * Qualified Name:     org.apache.commons.lang3.exception.DefaultExceptionContext
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */