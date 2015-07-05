package org.apache.commons.lang3.concurrent;

import java.util.Collections;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;

public class MultiBackgroundInitializer$MultiBackgroundInitializerResults
{
  private final Map<String, ConcurrentException> exceptions;
  private final Map<String, BackgroundInitializer<?>> initializers;
  private final Map<String, Object> resultObjects;
  
  private MultiBackgroundInitializer$MultiBackgroundInitializerResults(Map<String, BackgroundInitializer<?>> paramMap, Map<String, Object> paramMap1, Map<String, ConcurrentException> paramMap2)
  {
    initializers = paramMap;
    resultObjects = paramMap1;
    exceptions = paramMap2;
  }
  
  private BackgroundInitializer<?> checkName(String paramString)
  {
    BackgroundInitializer localBackgroundInitializer = (BackgroundInitializer)initializers.get(paramString);
    if (localBackgroundInitializer == null) {
      throw new NoSuchElementException("No child initializer with name " + paramString);
    }
    return localBackgroundInitializer;
  }
  
  public ConcurrentException getException(String paramString)
  {
    checkName(paramString);
    return (ConcurrentException)exceptions.get(paramString);
  }
  
  public BackgroundInitializer<?> getInitializer(String paramString)
  {
    return checkName(paramString);
  }
  
  public Object getResultObject(String paramString)
  {
    checkName(paramString);
    return resultObjects.get(paramString);
  }
  
  public Set<String> initializerNames()
  {
    return Collections.unmodifiableSet(initializers.keySet());
  }
  
  public boolean isException(String paramString)
  {
    checkName(paramString);
    return exceptions.containsKey(paramString);
  }
  
  public boolean isSuccessful()
  {
    return exceptions.isEmpty();
  }
}

/* Location:
 * Qualified Name:     org.apache.commons.lang3.concurrent.MultiBackgroundInitializer.MultiBackgroundInitializerResults
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */