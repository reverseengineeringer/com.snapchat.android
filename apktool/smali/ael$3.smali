.class final Lael$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lael;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lael$c;

.field final synthetic b:Lael;


# direct methods
.method constructor <init>(Lael;Lael$c;)V
    .locals 0

    .prologue
    .line 367
    iput-object p1, p0, Lael$3;->b:Lael;

    iput-object p2, p0, Lael$3;->a:Lael$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 370
    iget-object v0, p0, Lael$3;->a:Lael$c;

    iget-object v0, v0, Lael$c;->d:Lcom/snapchat/android/discover/model/server/DiscoverLinkStatusResult;

    iget-object v0, v0, Lcom/snapchat/android/discover/model/server/DiscoverLinkStatusResult;->mChannelListResponse:Lbku;

    if-eqz v0, :cond_0

    .line 372
    iget-object v0, p0, Lael$3;->b:Lael;

    iget-object v0, v0, Lael;->h:Landroid/content/Context;

    iget-object v1, p0, Lael$3;->a:Lael$c;

    iget-object v1, v1, Lael$c;->d:Lcom/snapchat/android/discover/model/server/DiscoverLinkStatusResult;

    iget-object v1, v1, Lcom/snapchat/android/discover/model/server/DiscoverLinkStatusResult;->mChannelListResponse:Lbku;

    invoke-static {v0, v1}, Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable;->a(Landroid/content/Context;Lbku;)V

    .line 375
    :cond_0
    iget-object v0, p0, Lael$3;->a:Lael$c;

    iget-object v0, v0, Lael$c;->d:Lcom/snapchat/android/discover/model/server/DiscoverLinkStatusResult;

    iget-object v0, v0, Lcom/snapchat/android/discover/model/server/DiscoverLinkStatusResult;->mLinkStatus:Lcom/snapchat/android/discover/model/server/DiscoverLinkStatusResult$LinkStatus;

    sget-object v1, Lcom/snapchat/android/discover/model/server/DiscoverLinkStatusResult$LinkStatus;->ARCHIVED:Lcom/snapchat/android/discover/model/server/DiscoverLinkStatusResult$LinkStatus;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lael$3;->a:Lael$c;

    iget-object v0, v0, Lael$c;->d:Lcom/snapchat/android/discover/model/server/DiscoverLinkStatusResult;

    iget-object v0, v0, Lcom/snapchat/android/discover/model/server/DiscoverLinkStatusResult;->mEditionChunkResponse:Lbkw;

    if-eqz v0, :cond_1

    .line 377
    iget-object v0, p0, Lael$3;->b:Lael;

    iget-object v0, v0, Lael;->h:Landroid/content/Context;

    iget-object v1, p0, Lael$3;->a:Lael$c;

    iget-object v1, v1, Lael$c;->d:Lcom/snapchat/android/discover/model/server/DiscoverLinkStatusResult;

    iget-object v1, v1, Lcom/snapchat/android/discover/model/server/DiscoverLinkStatusResult;->mEditionChunkResponse:Lbkw;

    iget-object v2, p0, Lael$3;->a:Lael$c;

    iget-object v2, v2, Lael$c;->c:Ljava/lang/String;

    iget-object v3, p0, Lael$3;->a:Lael$c;

    iget-object v3, v3, Lael$c;->d:Lcom/snapchat/android/discover/model/server/DiscoverLinkStatusResult;

    iget-object v3, v3, Lcom/snapchat/android/discover/model/server/DiscoverLinkStatusResult;->mEditionId:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/snapchat/android/discover/model/database/table/EditionTable;->a(Landroid/content/Context;Lbkw;Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    :cond_1
    return-void
.end method
