package org.apache.http.params;

import java.util.HashSet;
import java.util.Set;
import org.apache.http.util.Args;

@Deprecated
public final class DefaultedHttpParams
  extends AbstractHttpParams
{
  private final HttpParams defaults;
  private final HttpParams local;
  
  public DefaultedHttpParams(HttpParams paramHttpParams1, HttpParams paramHttpParams2)
  {
    local = ((HttpParams)Args.notNull(paramHttpParams1, "Local HTTP parameters"));
    defaults = paramHttpParams2;
  }
  
  private Set<String> getNames(HttpParams paramHttpParams)
  {
    if ((paramHttpParams instanceof HttpParamsNames)) {
      return ((HttpParamsNames)paramHttpParams).getNames();
    }
    throw new UnsupportedOperationException("HttpParams instance does not implement HttpParamsNames");
  }
  
  public final HttpParams copy()
  {
    return new DefaultedHttpParams(local.copy(), defaults);
  }
  
  public final Set<String> getDefaultNames()
  {
    return new HashSet(getNames(defaults));
  }
  
  public final HttpParams getDefaults()
  {
    return defaults;
  }
  
  public final Set<String> getLocalNames()
  {
    return new HashSet(getNames(local));
  }
  
  public final Set<String> getNames()
  {
    HashSet localHashSet = new HashSet(getNames(defaults));
    localHashSet.addAll(getNames(local));
    return localHashSet;
  }
  
  public final Object getParameter(String paramString)
  {
    Object localObject2 = local.getParameter(paramString);
    Object localObject1 = localObject2;
    if (localObject2 == null)
    {
      localObject1 = localObject2;
      if (defaults != null) {
        localObject1 = defaults.getParameter(paramString);
      }
    }
    return localObject1;
  }
  
  public final boolean removeParameter(String paramString)
  {
    return local.removeParameter(paramString);
  }
  
  public final HttpParams setParameter(String paramString, Object paramObject)
  {
    return local.setParameter(paramString, paramObject);
  }
}

/* Location:
 * Qualified Name:     org.apache.http.params.DefaultedHttpParams
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */