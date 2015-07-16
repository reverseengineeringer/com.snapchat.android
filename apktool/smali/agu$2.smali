.class final Lagu$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lagu;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lagu;


# direct methods
.method constructor <init>(Lagu;)V
    .locals 0

    .prologue
    .line 326
    iput-object p1, p0, Lagu$2;->a:Lagu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 10

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 329
    iget-object v0, p0, Lagu$2;->a:Lagu;

    iget-object v0, v0, Lagu;->l:Lagu$a;

    if-eqz v0, :cond_0

    .line 330
    iget-object v0, p0, Lagu$2;->a:Lagu;

    iget-object v0, v0, Lagu;->l:Lagu$a;

    iget-object v3, p0, Lagu$2;->a:Lagu;

    iget-object v3, v3, Lagu;->a:Lalc;

    invoke-interface {v0, v3}, Lagu$a;->a(Lalc;)V

    .line 332
    :cond_0
    iget-object v0, p0, Lagu$2;->a:Lagu;

    iget-object v4, v0, Lagu;->b:Lael;

    iget-object v0, p0, Lagu$2;->a:Lagu;

    iget-object v5, v0, Lagu;->j:Lcom/snapchat/android/discover/model/server/DiscoverLinkStatusResult;

    iget-object v0, p0, Lagu$2;->a:Lagu;

    iget-object v0, v0, Lagu;->a:Lalc;

    iget-boolean v0, v0, Lalc;->mLinkToLongform:Z

    iget-object v3, p0, Lagu$2;->a:Lagu;

    invoke-static {v3}, Lagu;->a(Lagu;)Ljava/lang/String;

    move-result-object v6

    iget-object v3, v5, Lcom/snapchat/android/discover/model/server/DiscoverLinkStatusResult;->mLinkStatus:Lcom/snapchat/android/discover/model/server/DiscoverLinkStatusResult$LinkStatus;

    sget-object v7, Lcom/snapchat/android/discover/model/server/DiscoverLinkStatusResult$LinkStatus;->FAILED:Lcom/snapchat/android/discover/model/server/DiscoverLinkStatusResult$LinkStatus;

    if-eq v3, v7, :cond_5

    iget v7, v5, Lcom/snapchat/android/discover/model/server/DiscoverLinkStatusResult;->mAdType:I

    if-nez v7, :cond_9

    sget-object v7, Lcom/snapchat/android/discover/model/server/DiscoverLinkStatusResult$LinkStatus;->ARCHIVED:Lcom/snapchat/android/discover/model/server/DiscoverLinkStatusResult$LinkStatus;

    if-eq v3, v7, :cond_1

    sget-object v7, Lcom/snapchat/android/discover/model/server/DiscoverLinkStatusResult$LinkStatus;->LIVE:Lcom/snapchat/android/discover/model/server/DiscoverLinkStatusResult$LinkStatus;

    if-ne v3, v7, :cond_9

    :cond_1
    iget-object v3, v5, Lcom/snapchat/android/discover/model/server/DiscoverLinkStatusResult;->mDSnapId:Ljava/lang/String;

    iget-object v2, v5, Lcom/snapchat/android/discover/model/server/DiscoverLinkStatusResult;->mEditionId:Ljava/lang/String;

    :goto_0
    if-nez v3, :cond_2

    move v0, v1

    :cond_2
    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    iget-object v8, v5, Lcom/snapchat/android/discover/model/server/DiscoverLinkStatusResult;->mPublisherInternationalName:Ljava/lang/String;

    aput-object v8, v7, v1

    const/4 v1, 0x1

    aput-object v2, v7, v1

    const/4 v1, 0x2

    aput-object v3, v7, v1

    if-eqz v3, :cond_7

    if-eqz v0, :cond_6

    sget-object v1, Lik;->LONG_FORM:Lik;

    :goto_1
    iget-object v7, v5, Lcom/snapchat/android/discover/model/server/DiscoverLinkStatusResult;->mEditionId:Ljava/lang/String;

    iget-object v8, v5, Lcom/snapchat/android/discover/model/server/DiscoverLinkStatusResult;->mDSnapId:Ljava/lang/String;

    new-instance v9, Lhn;

    invoke-direct {v9}, Lhn;-><init>()V

    if-eqz v6, :cond_3

    iput-object v6, v9, Lhn;->publisherId:Ljava/lang/String;

    :cond_3
    if-eqz v8, :cond_4

    iput-object v8, v9, Lhn;->dsnapId:Ljava/lang/String;

    :cond_4
    iput-object v7, v9, Lhn;->editionId:Ljava/lang/String;

    iput-object v1, v9, Lhn;->pageSection:Lik;

    invoke-static {v9}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;->a(Lml;)V

    iget-object v1, v4, Lael;->b:Lcom/squareup/otto/Bus;

    new-instance v4, Lafz;

    iget-object v5, v5, Lcom/snapchat/android/discover/model/server/DiscoverLinkStatusResult;->mPublisherInternationalName:Ljava/lang/String;

    invoke-direct {v4, v5, v2, v3, v0}, Lafz;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v1, v4}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 334
    :cond_5
    return-void

    .line 332
    :cond_6
    sget-object v1, Lik;->TOP_SNAP:Lik;

    goto :goto_1

    :cond_7
    if-eqz v6, :cond_8

    sget-object v1, Lik;->SPLASH:Lik;

    goto :goto_1

    :cond_8
    sget-object v1, Lik;->HOME:Lik;

    goto :goto_1

    :cond_9
    move-object v3, v2

    goto :goto_0
.end method
