.class final Lafu$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lafu;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lafu;


# direct methods
.method constructor <init>(Lafu;)V
    .locals 0

    .prologue
    .line 326
    iput-object p1, p0, Lafu$2;->a:Lafu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 11

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 329
    iget-object v0, p0, Lafu$2;->a:Lafu;

    iget-object v0, v0, Lafu;->l:Lafu$a;

    if-eqz v0, :cond_0

    .line 330
    iget-object v0, p0, Lafu$2;->a:Lafu;

    iget-object v0, v0, Lafu;->l:Lafu$a;

    iget-object v3, p0, Lafu$2;->a:Lafu;

    iget-object v3, v3, Lafu;->a:Lakh;

    invoke-interface {v0, v3}, Lafu$a;->a(Lakh;)V

    .line 332
    :cond_0
    iget-object v0, p0, Lafu$2;->a:Lafu;

    iget-object v4, v0, Lafu;->b:Ladl;

    iget-object v0, p0, Lafu$2;->a:Lafu;

    iget-object v5, v0, Lafu;->j:Lcom/snapchat/android/discover/model/server/DiscoverLinkStatusResult;

    iget-object v0, p0, Lafu$2;->a:Lafu;

    iget-object v0, v0, Lafu;->a:Lakh;

    iget-boolean v0, v0, Lakh;->mLinkToLongform:Z

    iget-object v3, p0, Lafu$2;->a:Lafu;

    invoke-static {v3}, Lafu;->a(Lafu;)Ljava/lang/String;

    move-result-object v6

    iget-object v3, v5, Lcom/snapchat/android/discover/model/server/DiscoverLinkStatusResult;->mLinkStatus:Lcom/snapchat/android/discover/model/server/DiscoverLinkStatusResult$LinkStatus;

    sget-object v7, Lcom/snapchat/android/discover/model/server/DiscoverLinkStatusResult$LinkStatus;->FAILED:Lcom/snapchat/android/discover/model/server/DiscoverLinkStatusResult$LinkStatus;

    if-ne v3, v7, :cond_1

    const-string v0, "DiscoverDeepLinkController"

    const-string v2, "Trying to go back to Discover when linking failed!"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/snapchat/android/Timber;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 334
    :goto_0
    return-void

    .line 332
    :cond_1
    iget v7, v5, Lcom/snapchat/android/discover/model/server/DiscoverLinkStatusResult;->mAdType:I

    if-nez v7, :cond_9

    sget-object v7, Lcom/snapchat/android/discover/model/server/DiscoverLinkStatusResult$LinkStatus;->ARCHIVED:Lcom/snapchat/android/discover/model/server/DiscoverLinkStatusResult$LinkStatus;

    if-eq v3, v7, :cond_2

    sget-object v7, Lcom/snapchat/android/discover/model/server/DiscoverLinkStatusResult$LinkStatus;->LIVE:Lcom/snapchat/android/discover/model/server/DiscoverLinkStatusResult$LinkStatus;

    if-ne v3, v7, :cond_9

    :cond_2
    iget-object v3, v5, Lcom/snapchat/android/discover/model/server/DiscoverLinkStatusResult;->mDSnapId:Ljava/lang/String;

    iget-object v2, v5, Lcom/snapchat/android/discover/model/server/DiscoverLinkStatusResult;->mEditionId:Ljava/lang/String;

    :goto_1
    if-nez v3, :cond_3

    move v0, v1

    :cond_3
    const-string v7, "DiscoverDeepLinkController"

    const-string v8, "DISCOVER-LINK: Going to Discover! Publisher: %s Edition: %s DSnap: %s"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    iget-object v10, v5, Lcom/snapchat/android/discover/model/server/DiscoverLinkStatusResult;->mPublisherInternationalName:Ljava/lang/String;

    aput-object v10, v9, v1

    const/4 v1, 0x1

    aput-object v2, v9, v1

    const/4 v1, 0x2

    aput-object v3, v9, v1

    invoke-static {v7, v8, v9}, Lcom/snapchat/android/Timber;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v3, :cond_7

    if-eqz v0, :cond_6

    sget-object v1, Lib;->LONG_FORM:Lib;

    :goto_2
    iget-object v7, v5, Lcom/snapchat/android/discover/model/server/DiscoverLinkStatusResult;->mEditionId:Ljava/lang/String;

    iget-object v8, v5, Lcom/snapchat/android/discover/model/server/DiscoverLinkStatusResult;->mDSnapId:Ljava/lang/String;

    new-instance v9, Lhe;

    invoke-direct {v9}, Lhe;-><init>()V

    if-eqz v6, :cond_4

    iput-object v6, v9, Lhe;->publisherId:Ljava/lang/String;

    :cond_4
    if-eqz v8, :cond_5

    iput-object v8, v9, Lhe;->dsnapId:Ljava/lang/String;

    :cond_5
    iput-object v7, v9, Lhe;->editionId:Ljava/lang/String;

    iput-object v1, v9, Lhe;->pageSection:Lib;

    invoke-static {v9}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;->a(Llt;)V

    iget-object v1, v4, Ladl;->b:Lcom/squareup/otto/Bus;

    new-instance v4, Laez;

    iget-object v5, v5, Lcom/snapchat/android/discover/model/server/DiscoverLinkStatusResult;->mPublisherInternationalName:Ljava/lang/String;

    invoke-direct {v4, v5, v2, v3, v0}, Laez;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v1, v4}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    goto :goto_0

    :cond_6
    sget-object v1, Lib;->TOP_SNAP:Lib;

    goto :goto_2

    :cond_7
    if-eqz v6, :cond_8

    sget-object v1, Lib;->SPLASH:Lib;

    goto :goto_2

    :cond_8
    sget-object v1, Lib;->HOME:Lib;

    goto :goto_2

    :cond_9
    move-object v3, v2

    goto :goto_1
.end method
