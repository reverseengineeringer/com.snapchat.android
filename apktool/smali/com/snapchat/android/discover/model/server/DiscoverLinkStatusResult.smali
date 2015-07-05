.class public final Lcom/snapchat/android/discover/model/server/DiscoverLinkStatusResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/discover/model/server/DiscoverLinkStatusResult$LinkStatus;
    }
.end annotation


# instance fields
.field public final mAdType:I

.field public final mChannelListResponse:Lbjt;

.field public final mDSnapId:Ljava/lang/String;

.field public final mEditionChunkResponse:Lbjv;

.field public final mEditionId:Ljava/lang/String;

.field public final mLinkStatus:Lcom/snapchat/android/discover/model/server/DiscoverLinkStatusResult$LinkStatus;

.field private final mPublishedTimestamp:J

.field public final mPublisherInternationalName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/snapchat/android/discover/model/server/DiscoverLinkStatusResult$LinkStatus;JILbjt;Lbjv;)V
    .locals 1
    .param p8    # Lbjt;
        .annotation build Lcgc;
        .end annotation
    .end param
    .param p9    # Lbjv;
        .annotation build Lcgc;
        .end annotation
    .end param

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/snapchat/android/discover/model/server/DiscoverLinkStatusResult;->mPublisherInternationalName:Ljava/lang/String;

    .line 45
    iput-object p2, p0, Lcom/snapchat/android/discover/model/server/DiscoverLinkStatusResult;->mEditionId:Ljava/lang/String;

    .line 46
    iput-object p3, p0, Lcom/snapchat/android/discover/model/server/DiscoverLinkStatusResult;->mDSnapId:Ljava/lang/String;

    .line 47
    iput-object p4, p0, Lcom/snapchat/android/discover/model/server/DiscoverLinkStatusResult;->mLinkStatus:Lcom/snapchat/android/discover/model/server/DiscoverLinkStatusResult$LinkStatus;

    .line 48
    iput-wide p5, p0, Lcom/snapchat/android/discover/model/server/DiscoverLinkStatusResult;->mPublishedTimestamp:J

    .line 49
    iput p7, p0, Lcom/snapchat/android/discover/model/server/DiscoverLinkStatusResult;->mAdType:I

    .line 50
    iput-object p8, p0, Lcom/snapchat/android/discover/model/server/DiscoverLinkStatusResult;->mChannelListResponse:Lbjt;

    .line 51
    iput-object p9, p0, Lcom/snapchat/android/discover/model/server/DiscoverLinkStatusResult;->mEditionChunkResponse:Lbjv;

    .line 52
    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v2, 0x27

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DiscoverLinkStatusResult{mPublisherInternationalName=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/snapchat/android/discover/model/server/DiscoverLinkStatusResult;->mPublisherInternationalName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mEditionId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/discover/model/server/DiscoverLinkStatusResult;->mEditionId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDSnapId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/discover/model/server/DiscoverLinkStatusResult;->mDSnapId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mLinkStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/discover/model/server/DiscoverLinkStatusResult;->mLinkStatus:Lcom/snapchat/android/discover/model/server/DiscoverLinkStatusResult$LinkStatus;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mPublishedTimestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/snapchat/android/discover/model/server/DiscoverLinkStatusResult;->mPublishedTimestamp:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAdType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/snapchat/android/discover/model/server/DiscoverLinkStatusResult;->mAdType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
