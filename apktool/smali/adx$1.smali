.class final Ladx$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Laeq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ladx;->a(Laeq;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Laeq;

.field final synthetic b:Ladx;


# direct methods
.method constructor <init>(Ladx;Laeq;)V
    .locals 0

    .prologue
    .line 306
    iput-object p1, p0, Ladx$1;->b:Ladx;

    iput-object p2, p0, Ladx$1;->a:Laeq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 326
    iget-object v0, p0, Ladx$1;->b:Ladx;

    sget-object v1, Lcom/snapchat/android/discover/analytics/DiscoverUsageAnalytics$ViewStatus;->ERROR:Lcom/snapchat/android/discover/analytics/DiscoverUsageAnalytics$ViewStatus;

    iput-object v1, v0, Ladx;->e:Lcom/snapchat/android/discover/analytics/DiscoverUsageAnalytics$ViewStatus;

    .line 327
    iget-object v0, p0, Ladx$1;->a:Laeq;

    invoke-interface {v0, p1}, Laeq;->a(Ljava/lang/String;)V

    .line 328
    return-void
.end method

.method public final b()V
    .locals 5

    .prologue
    .line 314
    const-string v0, "DSnapItemTextureVideoViewAdapter"

    const-string v1, "[%s] onMediaDisplayed called for media player."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Ladx$1;->b:Ladx;

    iget-object v4, v4, Ladx;->d:Lcom/snapchat/android/discover/model/DSnapPage;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 317
    iget-object v0, p0, Ladx$1;->b:Ladx;

    invoke-static {v0}, Ladx;->a(Ladx;)V

    .line 320
    iget-object v0, p0, Ladx$1;->b:Ladx;

    iget-object v0, v0, Ladx;->a:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 321
    iget-object v0, p0, Ladx$1;->b:Ladx;

    iget-object v0, v0, Ladx;->a:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 323
    :cond_0
    return-void
.end method

.method public final r_()V
    .locals 2

    .prologue
    .line 309
    iget-object v0, p0, Ladx$1;->b:Ladx;

    sget-object v1, Lcom/snapchat/android/discover/analytics/DiscoverUsageAnalytics$ViewStatus;->COMPLETED:Lcom/snapchat/android/discover/analytics/DiscoverUsageAnalytics$ViewStatus;

    iput-object v1, v0, Ladx;->e:Lcom/snapchat/android/discover/analytics/DiscoverUsageAnalytics$ViewStatus;

    .line 310
    iget-object v0, p0, Ladx$1;->a:Laeq;

    invoke-interface {v0}, Laeq;->r_()V

    .line 311
    return-void
.end method
