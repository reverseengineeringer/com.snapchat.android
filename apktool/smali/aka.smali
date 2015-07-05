.class public final Laka;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final LOCATION_CACHE_DISTANCE_MILES:I = 0x5

.field public static final LOCATION_CACHE_LIFETIME_MILLIS:I = 0x124f80

.field public static final METERS_PER_MILE:F = 1609.34f


# instance fields
.field private final mLastLocation:Landroid/location/Location;

.field public final mTempC:Ljava/lang/String;

.field public final mTempF:Ljava/lang/String;

.field private final mTimeLastRequested:J


# direct methods
.method public constructor <init>(Lakx;)V
    .locals 4

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iget-wide v0, p1, Lakx;->mTimestamp:J

    iput-wide v0, p0, Laka;->mTimeLastRequested:J

    .line 22
    iget v0, p1, Lakx;->mFahrenheit:F

    float-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Laka;->mTempF:Ljava/lang/String;

    .line 23
    iget v0, p1, Lakx;->mCelsius:F

    float-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Laka;->mTempC:Ljava/lang/String;

    .line 24
    new-instance v0, Landroid/location/Location;

    const-string v1, ""

    invoke-direct {v0, v1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Laka;->mLastLocation:Landroid/location/Location;

    .line 25
    iget-object v0, p0, Laka;->mLastLocation:Landroid/location/Location;

    iget-wide v2, p1, Lakx;->mLatitude:D

    invoke-virtual {v0, v2, v3}, Landroid/location/Location;->setLatitude(D)V

    .line 26
    iget-object v0, p0, Laka;->mLastLocation:Landroid/location/Location;

    iget-wide v2, p1, Lakx;->mLongitude:D

    invoke-virtual {v0, v2, v3}, Landroid/location/Location;->setLongitude(D)V

    .line 27
    return-void
.end method
