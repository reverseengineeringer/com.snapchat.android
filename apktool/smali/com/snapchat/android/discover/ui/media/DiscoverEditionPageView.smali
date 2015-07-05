.class public abstract Lcom/snapchat/android/discover/ui/media/DiscoverEditionPageView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/discover/ui/media/DiscoverEditionPageView$a;
    }
.end annotation


# instance fields
.field public final l:Ladf;

.field public final m:Laby;

.field public final n:Labq;

.field public final o:Lcom/snapchat/android/discover/analytics/DiscoverUsageAnalytics;

.field protected final p:Lazm;

.field public final q:Lbgk;

.field public final r:Lcom/squareup/otto/Bus;

.field public s:Lcom/snapchat/android/discover/ui/media/DiscoverEditionPageView$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 10

    .prologue
    .line 42
    invoke-static {}, Laby;->a()Laby;

    move-result-object v3

    invoke-static {}, Labq;->a()Labq;

    move-result-object v4

    new-instance v5, Lcom/snapchat/android/discover/analytics/DiscoverUsageAnalytics;

    invoke-direct {v5}, Lcom/snapchat/android/discover/analytics/DiscoverUsageAnalytics;-><init>()V

    invoke-static {}, Ladf;->a()Ladf;

    move-result-object v6

    invoke-static {}, Lazm;->a()Lazm;

    move-result-object v7

    new-instance v8, Lbgk;

    invoke-direct {v8}, Lbgk;-><init>()V

    invoke-static {}, Lban;->a()Lcom/squareup/otto/Bus;

    move-result-object v9

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v9}, Lcom/snapchat/android/discover/ui/media/DiscoverEditionPageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Laby;Labq;Lcom/snapchat/android/discover/analytics/DiscoverUsageAnalytics;Ladf;Lazm;Lbgk;Lcom/squareup/otto/Bus;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Laby;Labq;Lcom/snapchat/android/discover/analytics/DiscoverUsageAnalytics;Ladf;Lazm;Lbgk;Lcom/squareup/otto/Bus;)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    iput-object p3, p0, Lcom/snapchat/android/discover/ui/media/DiscoverEditionPageView;->m:Laby;

    .line 52
    iput-object p4, p0, Lcom/snapchat/android/discover/ui/media/DiscoverEditionPageView;->n:Labq;

    .line 53
    iput-object p5, p0, Lcom/snapchat/android/discover/ui/media/DiscoverEditionPageView;->o:Lcom/snapchat/android/discover/analytics/DiscoverUsageAnalytics;

    .line 54
    iput-object p6, p0, Lcom/snapchat/android/discover/ui/media/DiscoverEditionPageView;->l:Ladf;

    .line 55
    iput-object p7, p0, Lcom/snapchat/android/discover/ui/media/DiscoverEditionPageView;->p:Lazm;

    .line 56
    iput-object p8, p0, Lcom/snapchat/android/discover/ui/media/DiscoverEditionPageView;->q:Lbgk;

    .line 57
    iput-object p9, p0, Lcom/snapchat/android/discover/ui/media/DiscoverEditionPageView;->r:Lcom/squareup/otto/Bus;

    .line 58
    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method public abstract a(I)V
.end method

.method public abstract c()Z
.end method

.method public abstract d()Z
.end method

.method public abstract e()Z
.end method

.method public abstract f()Z
.end method

.method public abstract g()Z
.end method

.method public q_()V
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/android/discover/ui/media/DiscoverEditionPageView;->s:Lcom/snapchat/android/discover/ui/media/DiscoverEditionPageView$a;

    .line 92
    return-void
.end method

.method public setAutoAdvanceListener(Lcom/snapchat/android/discover/ui/media/DiscoverEditionPageView$a;)V
    .locals 0
    .param p1    # Lcom/snapchat/android/discover/ui/media/DiscoverEditionPageView$a;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 64
    iput-object p1, p0, Lcom/snapchat/android/discover/ui/media/DiscoverEditionPageView;->s:Lcom/snapchat/android/discover/ui/media/DiscoverEditionPageView$a;

    .line 65
    return-void
.end method
