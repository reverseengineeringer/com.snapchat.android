.class final Laec$2;
.super Lavj;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laec;->a(JFZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Laec;

.field private c:Z


# direct methods
.method constructor <init>(Laec;Z)V
    .locals 1

    .prologue
    .line 167
    iput-object p1, p0, Laec$2;->b:Laec;

    iput-boolean p2, p0, Laec$2;->a:Z

    invoke-direct {p0}, Lavj;-><init>()V

    .line 168
    const/4 v0, 0x0

    iput-boolean v0, p0, Laec$2;->c:Z

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .prologue
    .line 179
    const/4 v0, 0x1

    iput-boolean v0, p0, Laec$2;->c:Z

    .line 180
    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .prologue
    .line 172
    iget-boolean v0, p0, Laec$2;->a:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Laec$2;->c:Z

    if-nez v0, :cond_1

    .line 173
    :cond_0
    iget-object v0, p0, Laec$2;->b:Laec;

    iget-object v1, v0, Laec;->a:Landroid/view/ViewGroup;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    const/4 v1, 0x0

    iput-boolean v1, v0, Laec;->e:Z

    const/4 v1, 0x0

    iput-object v1, v0, Laec;->f:Landroid/animation/Animator;

    .line 175
    :cond_1
    return-void
.end method
