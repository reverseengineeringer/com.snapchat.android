.class public final Labx;
.super Ltg;
.source "SourceFile"

# interfaces
.implements Lts$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Labx$b;,
        Labx$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ltg;",
        "Lts$b",
        "<",
        "Labx$b;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ValidateDSnapTask"


# instance fields
.field private final mCallback:Labx$a;

.field private final mDSnapId:Ljava/lang/String;

.field private final mEditionId:Ljava/lang/String;

.field private final mId:Ljava/lang/String;

.field private final mPublisherInternationalName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Labx$a;)V
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p5    # Labx$a;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 41
    invoke-direct {p0}, Ltg;-><init>()V

    .line 42
    iput-object p1, p0, Labx;->mId:Ljava/lang/String;

    .line 43
    iput-object p2, p0, Labx;->mDSnapId:Ljava/lang/String;

    .line 44
    iput-object p3, p0, Labx;->mEditionId:Ljava/lang/String;

    .line 45
    iput-object p4, p0, Labx;->mPublisherInternationalName:Ljava/lang/String;

    .line 46
    iput-object p5, p0, Labx;->mCallback:Labx$a;

    .line 48
    const-class v0, Labx$b;

    invoke-virtual {p0, v0, p0}, Labx;->a(Ljava/lang/Class;Lts$b;)V

    .line 49
    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;Luc;)V
    .locals 12

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 23
    check-cast p1, Labx$b;

    invoke-virtual {p2}, Luc;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p1, Labx$b;->mLinkableState:Lcom/snapchat/android/discover/model/server/DiscoverLinkStatusResult$LinkStatus;

    if-eqz v0, :cond_0

    iget-wide v0, p1, Labx$b;->mPublishedTimestamp:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-object v1, p0, Labx;->mCallback:Labx$a;

    iget-object v2, p0, Labx;->mId:Ljava/lang/String;

    iget-object v3, p0, Labx;->mPublisherInternationalName:Ljava/lang/String;

    iget-object v4, p0, Labx;->mEditionId:Ljava/lang/String;

    iget-object v5, p0, Labx;->mDSnapId:Ljava/lang/String;

    iget-wide v6, p1, Labx$b;->mPublishedTimestamp:J

    iget-object v8, p1, Labx$b;->mLinkableState:Lcom/snapchat/android/discover/model/server/DiscoverLinkStatusResult$LinkStatus;

    iget v9, p1, Labx$b;->mAdType:I

    iget-object v10, p1, Labx$b;->mChannelListResponse:Lbjt;

    iget-object v11, p1, Labx$b;->mArchivedChunkResponse:Lbjv;

    invoke-interface/range {v1 .. v11}, Labx$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcom/snapchat/android/discover/model/server/DiscoverLinkStatusResult$LinkStatus;ILbjt;Lbjv;)V

    :goto_0
    return-void

    :cond_0
    if-eqz p1, :cond_1

    const-string v0, "ValidateDSnapTask"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Could not parse validation on "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Labx$b;->mDSnapId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for reason "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Labx$b;->mReason:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v9, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    iget-object v1, p0, Labx;->mCallback:Labx$a;

    iget-object v2, p0, Labx;->mId:Ljava/lang/String;

    iget-object v3, p0, Labx;->mPublisherInternationalName:Ljava/lang/String;

    iget-object v4, p0, Labx;->mEditionId:Ljava/lang/String;

    iget-object v5, p0, Labx;->mDSnapId:Ljava/lang/String;

    const-wide/16 v6, -0x1

    sget-object v8, Lcom/snapchat/android/discover/model/server/DiscoverLinkStatusResult$LinkStatus;->FAILED:Lcom/snapchat/android/discover/model/server/DiscoverLinkStatusResult$LinkStatus;

    move-object v11, v10

    invoke-interface/range {v1 .. v11}, Labx$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcom/snapchat/android/discover/model/server/DiscoverLinkStatusResult$LinkStatus;ILbjt;Lbjv;)V

    goto :goto_0
.end method

.method public final b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    return-object v0
.end method

.method public final c()Lcom/snapchat/android/api2/framework/HttpMethod;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/snapchat/android/api2/framework/HttpMethod;->GET:Lcom/snapchat/android/api2/framework/HttpMethod;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 3

    .prologue
    .line 63
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 64
    const-string v1, "dsnap_id"

    iget-object v2, p0, Labx;->mDSnapId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    const-string v1, "/discover/linkable_check"

    invoke-static {v1, v0}, Latq;->a(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
