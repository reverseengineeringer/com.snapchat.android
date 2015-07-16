.class final Lafe$2;
.super Lawh;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lafe;->a(JFZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lafe;

.field private c:Z


# direct methods
.method constructor <init>(Lafe;Z)V
    .locals 1

    .prologue
    .line 211
    iput-object p1, p0, Lafe$2;->b:Lafe;

    iput-boolean p2, p0, Lafe$2;->a:Z

    invoke-direct {p0}, Lawh;-><init>()V

    .line 212
    const/4 v0, 0x0

    iput-boolean v0, p0, Lafe$2;->c:Z

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .prologue
    .line 223
    const/4 v0, 0x1

    iput-boolean v0, p0, Lafe$2;->c:Z

    .line 224
    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .prologue
    .line 216
    iget-boolean v0, p0, Lafe$2;->a:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lafe$2;->c:Z

    if-nez v0, :cond_1

    .line 217
    :cond_0
    iget-object v0, p0, Lafe$2;->b:Lafe;

    invoke-virtual {v0}, Lafe;->b()V

    .line 219
    :cond_1
    return-void
.end method
