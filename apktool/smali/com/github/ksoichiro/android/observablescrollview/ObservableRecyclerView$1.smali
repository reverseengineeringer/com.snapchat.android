.class final Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->onTouchEvent(Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/ViewGroup;

.field final synthetic b:Landroid/view/MotionEvent;

.field final synthetic c:Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;


# direct methods
.method constructor <init>(Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;Landroid/view/ViewGroup;Landroid/view/MotionEvent;)V
    .locals 0

    .prologue
    .line 244
    iput-object p1, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView$1;->c:Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;

    iput-object p2, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView$1;->a:Landroid/view/ViewGroup;

    iput-object p3, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView$1;->b:Landroid/view/MotionEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 247
    iget-object v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView$1;->a:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView$1;->b:Landroid/view/MotionEvent;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 248
    return-void
.end method
