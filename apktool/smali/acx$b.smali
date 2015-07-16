.class public Lacx$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lacx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field mAdType:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ad_type"
    .end annotation
.end field

.field mArchivedChunkResponse:Lbkw;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "chunk"
    .end annotation
.end field

.field mChannelListResponse:Lbku;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "channel_list"
    .end annotation
.end field

.field mDSnapId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "dsnap_id"
    .end annotation
.end field

.field mHash:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "hash"
    .end annotation
.end field

.field mLinkableState:Lcom/snapchat/android/discover/model/server/DiscoverLinkStatusResult$LinkStatus;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "linkable_state"
    .end annotation
.end field

.field mPublishedTimestamp:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "publish_ts"
    .end annotation
.end field

.field mReason:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "reason"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
