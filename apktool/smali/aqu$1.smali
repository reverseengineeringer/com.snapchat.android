.class public final synthetic Laqu$1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laqu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field public static final synthetic a:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 42
    invoke-static {}, Lcom/snapchat/android/location/geofilter/BatteryInfoProvider$BatteryLevel;->values()[Lcom/snapchat/android/location/geofilter/BatteryInfoProvider$BatteryLevel;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Laqu$1;->a:[I

    :try_start_0
    sget-object v0, Laqu$1;->a:[I

    sget-object v1, Lcom/snapchat/android/location/geofilter/BatteryInfoProvider$BatteryLevel;->NO_BATTERY_FILTER:Lcom/snapchat/android/location/geofilter/BatteryInfoProvider$BatteryLevel;

    invoke-virtual {v1}, Lcom/snapchat/android/location/geofilter/BatteryInfoProvider$BatteryLevel;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    sget-object v0, Laqu$1;->a:[I

    sget-object v1, Lcom/snapchat/android/location/geofilter/BatteryInfoProvider$BatteryLevel;->FULL_BATTERY:Lcom/snapchat/android/location/geofilter/BatteryInfoProvider$BatteryLevel;

    invoke-virtual {v1}, Lcom/snapchat/android/location/geofilter/BatteryInfoProvider$BatteryLevel;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method
