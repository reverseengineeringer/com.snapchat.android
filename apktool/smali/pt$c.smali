.class public final Lpt$c;
.super Lpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation

.annotation runtime Ltn;
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

.field final synthetic this$0:Lpt;

.field username:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "username"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lpt;)V
    .locals 2

    .prologue
    .line 90
    iput-object p1, p0, Lpt$c;->this$0:Lpt;

    invoke-direct {p0}, Lpl;-><init>()V

    .line 91
    invoke-static {}, Lajx;->l()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lpt$c;->username:Ljava/lang/String;

    .line 93
    iget-object v0, p0, Lpt$c;->this$0:Lpt;

    iget-object v0, v0, Lpt;->mLocation:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lpt$c;->latitude:Ljava/lang/Double;

    .line 95
    iget-object v0, p0, Lpt$c;->this$0:Lpt;

    iget-object v0, v0, Lpt;->mLocation:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lpt$c;->longitude:Ljava/lang/Double;

    .line 97
    iget-object v0, p0, Lpt$c;->this$0:Lpt;

    iget-object v0, v0, Lpt;->mLocation:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lpt$c;->accuracy:Ljava/lang/Double;

    .line 99
    iget-object v0, p0, Lpt$c;->this$0:Lpt;

    iget-object v0, v0, Lpt;->mPreviousRequestChecksum:Ljava/lang/String;

    iput-object v0, p0, Lpt$c;->mChecksumDict:Ljava/lang/String;

    return-void
.end method
