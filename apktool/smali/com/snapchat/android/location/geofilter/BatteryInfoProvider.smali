.class public final Lcom/snapchat/android/location/geofilter/BatteryInfoProvider;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/location/geofilter/BatteryInfoProvider$BatteryLevel;
    }
.end annotation


# instance fields
.field private a:Lcom/snapchat/android/location/geofilter/BatteryInfoProvider$BatteryLevel;

.field private b:Landroid/content/Intent;

.field private c:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/location/geofilter/BatteryInfoProvider;->b:Landroid/content/Intent;

    .line 40
    sget-object v0, Lcom/snapchat/android/location/geofilter/BatteryInfoProvider$BatteryLevel;->NO_BATTERY_FILTER:Lcom/snapchat/android/location/geofilter/BatteryInfoProvider$BatteryLevel;

    iput-object v0, p0, Lcom/snapchat/android/location/geofilter/BatteryInfoProvider;->a:Lcom/snapchat/android/location/geofilter/BatteryInfoProvider$BatteryLevel;

    .line 41
    return-void
.end method


# virtual methods
.method public final a()Lcom/snapchat/android/location/geofilter/BatteryInfoProvider$BatteryLevel;
    .locals 4

    .prologue
    const/4 v0, -0x1

    .line 49
    iget-object v1, p0, Lcom/snapchat/android/location/geofilter/BatteryInfoProvider;->b:Landroid/content/Intent;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/snapchat/android/location/geofilter/BatteryInfoProvider;->b:Landroid/content/Intent;

    const-string v2, "level"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/snapchat/android/location/geofilter/BatteryInfoProvider;->b:Landroid/content/Intent;

    const-string v3, "scale"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    if-lez v2, :cond_0

    mul-int/lit8 v0, v1, 0x64

    div-int/2addr v0, v2

    :cond_0
    iput v0, p0, Lcom/snapchat/android/location/geofilter/BatteryInfoProvider;->c:I

    :cond_1
    iget v0, p0, Lcom/snapchat/android/location/geofilter/BatteryInfoProvider;->c:I

    if-lez v0, :cond_2

    iget v0, p0, Lcom/snapchat/android/location/geofilter/BatteryInfoProvider;->c:I

    const/16 v1, 0xa

    if-gt v0, v1, :cond_2

    sget-object v0, Lcom/snapchat/android/location/geofilter/BatteryInfoProvider$BatteryLevel;->LOW_BATTERY:Lcom/snapchat/android/location/geofilter/BatteryInfoProvider$BatteryLevel;

    iput-object v0, p0, Lcom/snapchat/android/location/geofilter/BatteryInfoProvider;->a:Lcom/snapchat/android/location/geofilter/BatteryInfoProvider$BatteryLevel;

    .line 50
    :goto_0
    iget-object v0, p0, Lcom/snapchat/android/location/geofilter/BatteryInfoProvider;->a:Lcom/snapchat/android/location/geofilter/BatteryInfoProvider$BatteryLevel;

    return-object v0

    .line 49
    :cond_2
    iget v0, p0, Lcom/snapchat/android/location/geofilter/BatteryInfoProvider;->c:I

    const/16 v1, 0x5a

    if-lt v0, v1, :cond_3

    iget v0, p0, Lcom/snapchat/android/location/geofilter/BatteryInfoProvider;->c:I

    const/16 v1, 0x64

    if-gt v0, v1, :cond_3

    sget-object v0, Lcom/snapchat/android/location/geofilter/BatteryInfoProvider$BatteryLevel;->FULL_BATTERY:Lcom/snapchat/android/location/geofilter/BatteryInfoProvider$BatteryLevel;

    iput-object v0, p0, Lcom/snapchat/android/location/geofilter/BatteryInfoProvider;->a:Lcom/snapchat/android/location/geofilter/BatteryInfoProvider$BatteryLevel;

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/snapchat/android/location/geofilter/BatteryInfoProvider$BatteryLevel;->NO_BATTERY_FILTER:Lcom/snapchat/android/location/geofilter/BatteryInfoProvider$BatteryLevel;

    iput-object v0, p0, Lcom/snapchat/android/location/geofilter/BatteryInfoProvider;->a:Lcom/snapchat/android/location/geofilter/BatteryInfoProvider$BatteryLevel;

    goto :goto_0
.end method
