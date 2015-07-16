.class final Lbqt$b;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbqt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lbqt;


# direct methods
.method private constructor <init>(Lbqt;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lbqt$b;->a:Lbqt;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lbqt;B)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lbqt$b;-><init>(Lbqt;)V

    return-void
.end method


# virtual methods
.method public final onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x1

    return v0
.end method

.method public final onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 8

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 52
    iget-object v0, p0, Lbqt$b;->a:Lbqt;

    invoke-static {v0}, Lbqt;->a(Lbqt;)Lbqs;

    move-result-object v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v5, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v6, v0

    move v1, v2

    :goto_0
    iget-object v0, v4, Lbqs;->a:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    iget-object v0, v4, Lbqs;->a:Landroid/util/SparseArray;

    iget-object v7, v4, Lbqs;->a:Landroid/util/SparseArray;

    invoke-virtual {v7, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    invoke-virtual {v0, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    invoke-virtual {v0, v5, v6}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, v4, Lbqs;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    move v1, v0

    .line 53
    :goto_1
    if-eq v1, v3, :cond_0

    .line 54
    iget-object v0, p0, Lbqt$b;->a:Lbqt;

    invoke-static {v0}, Lbqt;->a(Lbqt;)Lbqs;

    move-result-object v0

    iget-object v3, p0, Lbqt$b;->a:Lbqt;

    invoke-static {v3}, Lbqt;->b(Lbqt;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v3

    invoke-virtual {v0, v3, v1}, Lbqs;->a(Landroid/support/v7/widget/RecyclerView;I)Landroid/view/View;

    move-result-object v3

    .line 55
    iget-object v0, p0, Lbqt$b;->a:Lbqt;

    iget-object v4, v0, Lbqt;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$a;

    move-result-object v4

    instance-of v4, v4, Lbqr;

    if-eqz v4, :cond_3

    iget-object v0, v0, Lbqt;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$a;

    move-result-object v0

    check-cast v0, Lbqr;

    invoke-interface {v0, v1}, Lbqr;->e(I)J

    move-result-wide v0

    .line 56
    iget-object v4, p0, Lbqt$b;->a:Lbqt;

    invoke-static {v4}, Lbqt;->c(Lbqt;)Lbqt$a;

    move-result-object v4

    invoke-interface {v4, v0, v1}, Lbqt$a;->a(J)V

    .line 57
    iget-object v0, p0, Lbqt$b;->a:Lbqt;

    invoke-static {v0}, Lbqt;->b(Lbqt;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->playSoundEffect(I)V

    .line 58
    invoke-virtual {v3, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 59
    const/4 v2, 0x1

    .line 61
    :cond_0
    return v2

    .line 52
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    move v1, v3

    goto :goto_1

    .line 55
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "A RecyclerView with "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v2, Lbqt;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " requires a "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lbqr;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
