.class public final Lqk$c;
.super Lqc;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lqk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation

.annotation runtime Lud;
.end annotation


# instance fields
.field accuracy:Ljava/lang/Double;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "loc_accuracy_in_meters"
    .end annotation
.end field

.field latitude:Ljava/lang/Double;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "lat"
    .end annotation
.end field

.field longitude:Ljava/lang/Double;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "long"
    .end annotation
.end field

.field mChecksumDict:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "checksums_dict"
    .end annotation
.end field

.field final synthetic this$0:Lqk;

.field username:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "username"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lqk;)V
    .locals 2

    .prologue
    .line 90
    iput-object p1, p0, Lqk$c;->this$0:Lqk;

    invoke-direct {p0}, Lqc;-><init>()V

    .line 91
    invoke-static {}, Lakr;->l()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lqk$c;->username:Ljava/lang/String;

    .line 93
    iget-object v0, p0, Lqk$c;->this$0:Lqk;

    iget-object v0, v0, Lqk;->mLocation:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lqk$c;->latitude:Ljava/lang/Double;

    .line 95
    iget-object v0, p0, Lqk$c;->this$0:Lqk;

    iget-object v0, v0, Lqk;->mLocation:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lqk$c;->longitude:Ljava/lang/Double;

    .line 97
    iget-object v0, p0, Lqk$c;->this$0:Lqk;

    iget-object v0, v0, Lqk;->mLocation:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lqk$c;->accuracy:Ljava/lang/Double;

    .line 99
    iget-object v0, p0, Lqk$c;->this$0:Lqk;

    iget-object v0, v0, Lqk;->mPreviousRequestChecksum:Ljava/lang/String;

    iput-object v0, p0, Lqk$c;->mChecksumDict:Ljava/lang/String;

    return-void
.end method
