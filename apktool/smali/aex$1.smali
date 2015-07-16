.class final Laex$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lafq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laex;->a(Lafq;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lafq;

.field final synthetic b:Laex;


# direct methods
.method constructor <init>(Laex;Lafq;)V
    .locals 0

    .prologue
    .line 304
    iput-object p1, p0, Laex$1;->b:Laex;

    iput-object p2, p0, Laex$1;->a:Lafq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 325
    iget-object v0, p0, Laex$1;->b:Laex;

    sget-object v1, Lcom/snapchat/android/discover/analytics/DiscoverUsageAnalytics$ViewStatus;->ERROR:Lcom/snapchat/android/discover/analytics/DiscoverUsageAnalytics$ViewStatus;

    iput-object v1, v0, Laex;->e:Lcom/snapchat/android/discover/analytics/DiscoverUsageAnalytics$ViewStatus;

    .line 326
    iget-object v0, p0, Laex$1;->a:Lafq;

    invoke-interface {v0, p1}, Lafq;->a(Ljava/lang/String;)V

    .line 327
    return-void
.end method

.method public final b()V
    .locals 3

    .prologue
    .line 312
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Laex$1;->b:Laex;

    iget-object v2, v2, Laex;->d:Lcom/snapchat/android/discover/model/DSnapPage;

    aput-object v2, v0, v1

    .line 313
    iget-object v0, p0, Laex$1;->b:Laex;

    sget-object v1, Lcom/snapchat/android/discover/analytics/DiscoverUsageAnalytics$ViewStatus;->INCOMPLETE:Lcom/snapchat/android/discover/analytics/DiscoverUsageAnalytics$ViewStatus;

    iput-object v1, v0, Laex;->e:Lcom/snapchat/android/discover/analytics/DiscoverUsageAnalytics$ViewStatus;

    .line 316
    iget-object v0, p0, Laex$1;->b:Laex;

    invoke-static {v0}, Laex;->a(Laex;)V

    .line 319
    iget-object v0, p0, Laex$1;->b:Laex;

    iget-object v0, v0, Laex;->a:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 320
    iget-object v0, p0, Laex$1;->b:Laex;

    iget-object v0, v0, Laex;->a:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 322
    :cond_0
    return-void
.end method

.method public final p_()V
    .locals 2

    .prologue
    .line 307
    iget-object v0, p0, Laex$1;->b:Laex;

    sget-object v1, Lcom/snapchat/android/discover/analytics/DiscoverUsageAnalytics$ViewStatus;->COMPLETED:Lcom/snapchat/android/discover/analytics/DiscoverUsageAnalytics$ViewStatus;

    iput-object v1, v0, Laex;->e:Lcom/snapchat/android/discover/analytics/DiscoverUsageAnalytics$ViewStatus;

    .line 308
    iget-object v0, p0, Laex$1;->a:Lafq;

    invoke-interface {v0}, Lafq;->p_()V

    .line 309
    return-void
.end method
