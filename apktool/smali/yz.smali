.class public final Lyz;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lyz$a;
    }
.end annotation


# instance fields
.field public final a:[Landroid/graphics/PointF;

.field public final b:Landroid/os/Handler;

.field public final c:F

.field public final d:Lyz$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lyz$a;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p2    # Lyz$a;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/graphics/PointF;

    iput-object v0, p0, Lyz;->a:[Landroid/graphics/PointF;

    .line 32
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lyz;->b:Landroid/os/Handler;

    .line 33
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lyz;->c:F

    .line 34
    iput-object p2, p0, Lyz;->d:Lyz$a;

    .line 35
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 92
    iget-object v0, p0, Lyz;->a:[Landroid/graphics/PointF;

    const/4 v1, 0x0

    aput-object v2, v0, v1

    .line 93
    iget-object v0, p0, Lyz;->a:[Landroid/graphics/PointF;

    const/4 v1, 0x1

    aput-object v2, v0, v1

    .line 94
    iget-object v0, p0, Lyz;->b:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 95
    return-void
.end method
