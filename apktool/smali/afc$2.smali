.class final Lafc$2;
.super Lawh;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lafc;->a(JFZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lafc;

.field private c:Z


# direct methods
.method constructor <init>(Lafc;Z)V
    .locals 1

    .prologue
    .line 183
    iput-object p1, p0, Lafc$2;->b:Lafc;

    iput-boolean p2, p0, Lafc$2;->a:Z

    invoke-direct {p0}, Lawh;-><init>()V

    .line 184
    const/4 v0, 0x0

    iput-boolean v0, p0, Lafc$2;->c:Z

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .prologue
    .line 195
    const/4 v0, 0x1

    iput-boolean v0, p0, Lafc$2;->c:Z

    .line 196
    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .prologue
    .line 188
    iget-boolean v0, p0, Lafc$2;->a:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lafc$2;->c:Z

    if-nez v0, :cond_1

    .line 189
    :cond_0
    iget-object v0, p0, Lafc$2;->b:Lafc;

    invoke-virtual {v0}, Lafc;->a()V

    .line 191
    :cond_1
    return-void
.end method
