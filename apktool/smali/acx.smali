.class public final Lacx;
.super Ltw;
.source "SourceFile"

# interfaces
.implements Lui$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lacx$b;,
        Lacx$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ltw;",
        "Lui$b",
        "<",
        "Lacx$b;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ValidateDSnapTask"


# instance fields
.field private final mCallback:Lacx$a;

.field private final mDSnapId:Ljava/lang/String;

.field private final mDiscoverEndpointManager:Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;

.field private final mEditionId:Ljava/lang/String;

.field private final mId:Ljava/lang/String;

.field private final mPublisherInternationalName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lacx$a;)V
    .locals 7
    .param p2    # Ljava/lang/String;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p5    # Lacx$a;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 47
    invoke-static {}, Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;->a()Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lacx;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lacx$a;Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;)V

    .line 48
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lacx$a;Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;)V
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p5    # Lacx$a;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 52
    invoke-direct {p0}, Ltw;-><init>()V

    .line 53
    iput-object p1, p0, Lacx;->mId:Ljava/lang/String;

    .line 54
    iput-object p2, p0, Lacx;->mDSnapId:Ljava/lang/String;

    .line 55
    iput-object p3, p0, Lacx;->mEditionId:Ljava/lang/String;

    .line 56
    iput-object p4, p0, Lacx;->mPublisherInternationalName:Ljava/lang/String;

    .line 57
    iput-object p5, p0, Lacx;->mCallback:Lacx$a;

    .line 58
    iput-object p6, p0, Lacx;->mDiscoverEndpointManager:Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;

    .line 60
    const-class v0, Lacx$b;

    invoke-virtual {p0, v0, p0}, Lacx;->registerCallback(Ljava/lang/Class;Lui$b;)V

    .line 61
    return-void
.end method


# virtual methods
.method public final getMethod()Lcom/snapchat/android/api2/framework/HttpMethod;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/snapchat/android/api2/framework/HttpMethod;->GET:Lcom/snapchat/android/api2/framework/HttpMethod;

    return-object v0
.end method

.method public final getPath()Ljava/lang/String;
    .locals 4

    .prologue
    .line 75
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 76
    const-string v0, "dsnap_id"

    iget-object v2, p0, Lacx;->mDSnapId:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lacx;->mDiscoverEndpointManager:Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;

    invoke-virtual {v0}, Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;->b()Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x0

    if-eqz v2, :cond_0

    const-string v3, "region="

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_0

    add-int/lit8 v0, v3, 0x7

    const/16 v3, 0x26

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    if-lez v3, :cond_2

    invoke-virtual {v2, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 79
    :cond_0
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 80
    const-string v2, "region"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    :cond_1
    const-string v0, "/discover/linkable_check"

    invoke-static {v0, v1}, Lauo;->a(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 78
    :cond_2
    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final getRequestPayload()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x0

    return-object v0
.end method

.method public final synthetic onJsonResult(Ljava/lang/Object;Lus;)V
    .locals 12

    .prologue
    const/4 v10, 0x0

    .line 27
    check-cast p1, Lacx$b;

    invoke-virtual {p2}, Lus;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p1, Lacx$b;->mLinkableState:Lcom/snapchat/android/discover/model/server/DiscoverLinkStatusResult$LinkStatus;

    if-eqz v0, :cond_0

    iget-wide v0, p1, Lacx$b;->mPublishedTimestamp:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-object v1, p0, Lacx;->mCallback:Lacx$a;

    iget-object v2, p0, Lacx;->mId:Ljava/lang/String;

    iget-object v3, p0, Lacx;->mPublisherInternationalName:Ljava/lang/String;

    iget-object v4, p0, Lacx;->mEditionId:Ljava/lang/String;

    iget-object v5, p0, Lacx;->mDSnapId:Ljava/lang/String;

    iget-wide v6, p1, Lacx$b;->mPublishedTimestamp:J

    iget-object v8, p1, Lacx$b;->mLinkableState:Lcom/snapchat/android/discover/model/server/DiscoverLinkStatusResult$LinkStatus;

    iget v9, p1, Lacx$b;->mAdType:I

    iget-object v10, p1, Lacx$b;->mChannelListResponse:Lbku;

    iget-object v11, p1, Lacx$b;->mArchivedChunkResponse:Lbkw;

    invoke-interface/range {v1 .. v11}, Lacx$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcom/snapchat/android/discover/model/server/DiscoverLinkStatusResult$LinkStatus;ILbku;Lbkw;)V

    :goto_0
    return-void

    :cond_0
    if-eqz p1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Could not parse validation on "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lacx$b;->mDSnapId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " for reason "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lacx$b;->mReason:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget-object v1, p0, Lacx;->mCallback:Lacx$a;

    iget-object v2, p0, Lacx;->mId:Ljava/lang/String;

    iget-object v3, p0, Lacx;->mPublisherInternationalName:Ljava/lang/String;

    iget-object v4, p0, Lacx;->mEditionId:Ljava/lang/String;

    iget-object v5, p0, Lacx;->mDSnapId:Ljava/lang/String;

    const-wide/16 v6, -0x1

    sget-object v8, Lcom/snapchat/android/discover/model/server/DiscoverLinkStatusResult$LinkStatus;->FAILED:Lcom/snapchat/android/discover/model/server/DiscoverLinkStatusResult$LinkStatus;

    const/4 v9, 0x0

    move-object v11, v10

    invoke-interface/range {v1 .. v11}, Lacx$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcom/snapchat/android/discover/model/server/DiscoverLinkStatusResult$LinkStatus;ILbku;Lbkw;)V

    goto :goto_0
.end method
