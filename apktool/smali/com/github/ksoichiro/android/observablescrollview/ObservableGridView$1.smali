.class final Lcom/github/ksoichiro/android/observablescrollview/ObservableGridView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/ksoichiro/android/observablescrollview/ObservableGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/github/ksoichiro/android/observablescrollview/ObservableGridView;


# direct methods
.method constructor <init>(Lcom/github/ksoichiro/android/observablescrollview/ObservableGridView;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableGridView$1;->a:Lcom/github/ksoichiro/android/observablescrollview/ObservableGridView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onScroll(Landroid/widget/AbsListView;III)V
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableGridView$1;->a:Lcom/github/ksoichiro/android/observablescrollview/ObservableGridView;

    invoke-static {v0}, Lcom/github/ksoichiro/android/observablescrollview/ObservableGridView;->a(Lcom/github/ksoichiro/android/observablescrollview/ObservableGridView;)Landroid/widget/AbsListView$OnScrollListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableGridView$1;->a:Lcom/github/ksoichiro/android/observablescrollview/ObservableGridView;

    invoke-static {v0}, Lcom/github/ksoichiro/android/observablescrollview/ObservableGridView;->a(Lcom/github/ksoichiro/android/observablescrollview/ObservableGridView;)Landroid/widget/AbsListView$OnScrollListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableGridView$1;->a:Lcom/github/ksoichiro/android/observablescrollview/ObservableGridView;

    invoke-static {v0}, Lcom/github/ksoichiro/android/observablescrollview/ObservableGridView;->b(Lcom/github/ksoichiro/android/observablescrollview/ObservableGridView;)V

    .line 70
    return-void
.end method

.method public final onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableGridView$1;->a:Lcom/github/ksoichiro/android/observablescrollview/ObservableGridView;

    invoke-static {v0}, Lcom/github/ksoichiro/android/observablescrollview/ObservableGridView;->a(Lcom/github/ksoichiro/android/observablescrollview/ObservableGridView;)Landroid/widget/AbsListView$OnScrollListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableGridView$1;->a:Lcom/github/ksoichiro/android/observablescrollview/ObservableGridView;

    invoke-static {v0}, Lcom/github/ksoichiro/android/observablescrollview/ObservableGridView;->a(Lcom/github/ksoichiro/android/observablescrollview/ObservableGridView;)Landroid/widget/AbsListView$OnScrollListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 59
    :cond_0
    return-void
.end method
