.class final Lbgt$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbgt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbgt;


# direct methods
.method constructor <init>(Lbgt;)V
    .locals 0

    .prologue
    .line 24
    iput-object p1, p0, Lbgt$2;->this$0:Lbgt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreDraw()Z
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lbgt$2;->this$0:Lbgt;

    invoke-virtual {v0}, Lbgt;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28
    iget-object v0, p0, Lbgt$2;->this$0:Lbgt;

    iget-object v0, v0, Lbgt;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 30
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
