.class final Ladl$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ladl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ladl$c;

.field final synthetic b:Ladl;


# direct methods
.method constructor <init>(Ladl;Ladl$c;)V
    .locals 0

    .prologue
    .line 367
    iput-object p1, p0, Ladl$3;->b:Ladl;

    iput-object p2, p0, Ladl$3;->a:Ladl$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 370
    const-string v0, "DiscoverDeepLinkController"

    const-string v1, "DISCOVER-LINK: Saving channel and chunk to DB."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 371
    iget-object v0, p0, Ladl$3;->a:Ladl$c;

    iget-object v0, v0, Ladl$c;->d:Lcom/snapchat/android/discover/model/server/DiscoverLinkStatusResult;

    iget-object v0, v0, Lcom/snapchat/android/discover/model/server/DiscoverLinkStatusResult;->mChannelListResponse:Lbjt;

    if-eqz v0, :cond_0

    .line 372
    iget-object v0, p0, Ladl$3;->b:Ladl;

    iget-object v0, v0, Ladl;->h:Landroid/content/Context;

    iget-object v1, p0, Ladl$3;->a:Ladl$c;

    iget-object v1, v1, Ladl$c;->d:Lcom/snapchat/android/discover/model/server/DiscoverLinkStatusResult;

    iget-object v1, v1, Lcom/snapchat/android/discover/model/server/DiscoverLinkStatusResult;->mChannelListResponse:Lbjt;

    invoke-static {v0, v1}, Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable;->a(Landroid/content/Context;Lbjt;)V

    .line 375
    :cond_0
    iget-object v0, p0, Ladl$3;->a:Ladl$c;

    iget-object v0, v0, Ladl$c;->d:Lcom/snapchat/android/discover/model/server/DiscoverLinkStatusResult;

    iget-object v0, v0, Lcom/snapchat/android/discover/model/server/DiscoverLinkStatusResult;->mLinkStatus:Lcom/snapchat/android/discover/model/server/DiscoverLinkStatusResult$LinkStatus;

    sget-object v1, Lcom/snapchat/android/discover/model/server/DiscoverLinkStatusResult$LinkStatus;->ARCHIVED:Lcom/snapchat/android/discover/model/server/DiscoverLinkStatusResult$LinkStatus;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Ladl$3;->a:Ladl$c;

    iget-object v0, v0, Ladl$c;->d:Lcom/snapchat/android/discover/model/server/DiscoverLinkStatusResult;

    iget-object v0, v0, Lcom/snapchat/android/discover/model/server/DiscoverLinkStatusResult;->mEditionChunkResponse:Lbjv;

    if-eqz v0, :cond_1

    .line 377
    iget-object v0, p0, Ladl$3;->b:Ladl;

    iget-object v0, v0, Ladl;->h:Landroid/content/Context;

    iget-object v1, p0, Ladl$3;->a:Ladl$c;

    iget-object v1, v1, Ladl$c;->d:Lcom/snapchat/android/discover/model/server/DiscoverLinkStatusResult;

    iget-object v1, v1, Lcom/snapchat/android/discover/model/server/DiscoverLinkStatusResult;->mEditionChunkResponse:Lbjv;

    iget-object v2, p0, Ladl$3;->a:Ladl$c;

    iget-object v2, v2, Ladl$c;->c:Ljava/lang/String;

    iget-object v3, p0, Ladl$3;->a:Ladl$c;

    iget-object v3, v3, Ladl$c;->d:Lcom/snapchat/android/discover/model/server/DiscoverLinkStatusResult;

    iget-object v3, v3, Lcom/snapchat/android/discover/model/server/DiscoverLinkStatusResult;->mEditionId:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/snapchat/android/discover/model/database/table/EditionTable;->a(Landroid/content/Context;Lbjv;Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    :cond_1
    return-void
.end method
