package android.support.v4.app;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager.NameNotFoundException;
import android.os.Build.VERSION;
import android.support.v4.content.ContextCompat;
import java.util.ArrayList;
import java.util.Iterator;

public final class TaskStackBuilder
  implements Iterable<Intent>
{
  private static final TaskStackBuilderImpl IMPL = new TaskStackBuilderImplBase();
  private static final String TAG = "TaskStackBuilder";
  private final ArrayList<Intent> mIntents = new ArrayList();
  private final Context mSourceContext;
  
  static
  {
    if (Build.VERSION.SDK_INT >= 11)
    {
      IMPL = new TaskStackBuilderImplHoneycomb();
      return;
    }
  }
  
  private TaskStackBuilder(Context paramContext)
  {
    mSourceContext = paramContext;
  }
  
  private TaskStackBuilder addNextIntent(Intent paramIntent)
  {
    mIntents.add(paramIntent);
    return this;
  }
  
  private TaskStackBuilder addNextIntentWithParentStack(Intent paramIntent)
  {
    ComponentName localComponentName2 = paramIntent.getComponent();
    ComponentName localComponentName1 = localComponentName2;
    if (localComponentName2 == null) {
      localComponentName1 = paramIntent.resolveActivity(mSourceContext.getPackageManager());
    }
    if (localComponentName1 != null) {
      addParentStack(localComponentName1);
    }
    addNextIntent(paramIntent);
    return this;
  }
  
  private TaskStackBuilder addParentStack(Activity paramActivity)
  {
    Object localObject = null;
    if ((paramActivity instanceof SupportParentable)) {
      localObject = ((SupportParentable)paramActivity).getSupportParentActivityIntent();
    }
    if (localObject == null) {}
    for (paramActivity = NavUtils.getParentActivityIntent(paramActivity);; paramActivity = (Activity)localObject)
    {
      if (paramActivity != null)
      {
        ComponentName localComponentName = paramActivity.getComponent();
        localObject = localComponentName;
        if (localComponentName == null) {
          localObject = paramActivity.resolveActivity(mSourceContext.getPackageManager());
        }
        addParentStack((ComponentName)localObject);
        addNextIntent(paramActivity);
      }
      return this;
    }
  }
  
  private TaskStackBuilder addParentStack(ComponentName paramComponentName)
  {
    int i = mIntents.size();
    try
    {
      for (paramComponentName = NavUtils.getParentActivityIntent(mSourceContext, paramComponentName); paramComponentName != null; paramComponentName = NavUtils.getParentActivityIntent(mSourceContext, paramComponentName.getComponent())) {
        mIntents.add(i, paramComponentName);
      }
      return this;
    }
    catch (PackageManager.NameNotFoundException paramComponentName)
    {
      throw new IllegalArgumentException(paramComponentName);
    }
  }
  
  private TaskStackBuilder addParentStack(Class<?> paramClass)
  {
    return addParentStack(new ComponentName(mSourceContext, paramClass));
  }
  
  private static TaskStackBuilder create(Context paramContext)
  {
    return new TaskStackBuilder(paramContext);
  }
  
  private Intent editIntentAt(int paramInt)
  {
    return (Intent)mIntents.get(paramInt);
  }
  
  private static TaskStackBuilder from(Context paramContext)
  {
    return new TaskStackBuilder(paramContext);
  }
  
  private Intent getIntent(int paramInt)
  {
    return (Intent)mIntents.get(paramInt);
  }
  
  private int getIntentCount()
  {
    return mIntents.size();
  }
  
  private Intent[] getIntents()
  {
    Intent[] arrayOfIntent = new Intent[mIntents.size()];
    if (arrayOfIntent.length == 0) {
      return arrayOfIntent;
    }
    arrayOfIntent[0] = new Intent((Intent)mIntents.get(0)).addFlags(268484608);
    int i = 1;
    while (i < arrayOfIntent.length)
    {
      arrayOfIntent[i] = new Intent((Intent)mIntents.get(i));
      i += 1;
    }
    return arrayOfIntent;
  }
  
  private PendingIntent getPendingIntent(int paramInt1, int paramInt2)
  {
    if (mIntents.isEmpty()) {
      throw new IllegalStateException("No intents added to TaskStackBuilder; cannot getPendingIntent");
    }
    Intent[] arrayOfIntent = (Intent[])mIntents.toArray(new Intent[mIntents.size()]);
    arrayOfIntent[0] = new Intent(arrayOfIntent[0]).addFlags(268484608);
    return IMPL.getPendingIntent$3140f641(mSourceContext, arrayOfIntent, paramInt1, paramInt2);
  }
  
  private PendingIntent getPendingIntent$669578cb(int paramInt1, int paramInt2)
  {
    if (mIntents.isEmpty()) {
      throw new IllegalStateException("No intents added to TaskStackBuilder; cannot getPendingIntent");
    }
    Intent[] arrayOfIntent = (Intent[])mIntents.toArray(new Intent[mIntents.size()]);
    arrayOfIntent[0] = new Intent(arrayOfIntent[0]).addFlags(268484608);
    return IMPL.getPendingIntent$3140f641(mSourceContext, arrayOfIntent, paramInt1, paramInt2);
  }
  
  private void startActivities()
  {
    if (mIntents.isEmpty()) {
      throw new IllegalStateException("No intents added to TaskStackBuilder; cannot startActivities");
    }
    Object localObject = (Intent[])mIntents.toArray(new Intent[mIntents.size()]);
    localObject[0] = new Intent(localObject[0]).addFlags(268484608);
    if (!ContextCompat.startActivities$5b3ef247(mSourceContext, (Intent[])localObject))
    {
      localObject = new Intent(localObject[(localObject.length - 1)]);
      ((Intent)localObject).addFlags(268435456);
      mSourceContext.startActivity((Intent)localObject);
    }
  }
  
  private void startActivities$79e5e33f()
  {
    if (mIntents.isEmpty()) {
      throw new IllegalStateException("No intents added to TaskStackBuilder; cannot startActivities");
    }
    Object localObject = (Intent[])mIntents.toArray(new Intent[mIntents.size()]);
    localObject[0] = new Intent(localObject[0]).addFlags(268484608);
    if (!ContextCompat.startActivities$5b3ef247(mSourceContext, (Intent[])localObject))
    {
      localObject = new Intent(localObject[(localObject.length - 1)]);
      ((Intent)localObject).addFlags(268435456);
      mSourceContext.startActivity((Intent)localObject);
    }
  }
  
  public final Iterator<Intent> iterator()
  {
    return mIntents.iterator();
  }
  
  public static abstract interface SupportParentable
  {
    public abstract Intent getSupportParentActivityIntent();
  }
  
  static abstract interface TaskStackBuilderImpl
  {
    public abstract PendingIntent getPendingIntent$3140f641(Context paramContext, Intent[] paramArrayOfIntent, int paramInt1, int paramInt2);
  }
  
  static final class TaskStackBuilderImplBase
    implements TaskStackBuilder.TaskStackBuilderImpl
  {
    public final PendingIntent getPendingIntent$3140f641(Context paramContext, Intent[] paramArrayOfIntent, int paramInt1, int paramInt2)
    {
      paramArrayOfIntent = new Intent(paramArrayOfIntent[(paramArrayOfIntent.length - 1)]);
      paramArrayOfIntent.addFlags(268435456);
      return PendingIntent.getActivity(paramContext, paramInt1, paramArrayOfIntent, paramInt2);
    }
  }
  
  static final class TaskStackBuilderImplHoneycomb
    implements TaskStackBuilder.TaskStackBuilderImpl
  {
    public final PendingIntent getPendingIntent$3140f641(Context paramContext, Intent[] paramArrayOfIntent, int paramInt1, int paramInt2)
    {
      paramArrayOfIntent[0] = new Intent(paramArrayOfIntent[0]).addFlags(268484608);
      return TaskStackBuilderHoneycomb.getActivitiesPendingIntent(paramContext, paramInt1, paramArrayOfIntent, paramInt2);
    }
  }
  
  static final class TaskStackBuilderImplJellybean
    implements TaskStackBuilder.TaskStackBuilderImpl
  {
    public final PendingIntent getPendingIntent$3140f641(Context paramContext, Intent[] paramArrayOfIntent, int paramInt1, int paramInt2)
    {
      paramArrayOfIntent[0] = new Intent(paramArrayOfIntent[0]).addFlags(268484608);
      return TaskStackBuilderJellybean.getActivitiesPendingIntent$21f43e81(paramContext, paramInt1, paramArrayOfIntent, paramInt2);
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v4.app.TaskStackBuilder
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */