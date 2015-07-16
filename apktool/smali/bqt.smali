.class public Lbqt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/widget/RecyclerView$i;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbqt$b;,
        Lbqt$a;
    }
.end annotation


# instance fields
.field final a:Landroid/support/v7/widget/RecyclerView;

.field public b:Lbqt$a;

.field private final c:Landroid/view/GestureDetector;

.field private final d:Lbqs;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/RecyclerView;Lbqs;)V
    .locals 4

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lbqt$b;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lbqt$b;-><init>(Lbqt;B)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lbqt;->c:Landroid/view/GestureDetector;

    .line 22
    iput-object p1, p0, Lbqt;->a:Landroid/support/v7/widget/RecyclerView;

    .line 23
    iput-object p2, p0, Lbqt;->d:Lbqs;

    .line 24
    return-void
.end method

.method static synthetic a(Lbqt;)Lbqs;
    .locals 1

    .prologue
    .line 9
    iget-object v0, p0, Lbqt;->d:Lbqs;

    return-object v0
.end method

.method static synthetic b(Lbqt;)Landroid/support/v7/widget/RecyclerView;
    .locals 1

    .prologue
    .line 9
    iget-object v0, p0, Lbqt;->a:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method static synthetic c(Lbqt;)Lbqt$a;
    .locals 1

    .prologue
    .line 9
    iget-object v0, p0, Lbqt;->b:Lbqt$a;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lbqt;->b:Lbqt$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbqt;->c:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
