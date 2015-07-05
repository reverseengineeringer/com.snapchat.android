.class public abstract Laoq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lahb;


# instance fields
.field public final a:Landroid/content/Context;

.field protected b:Lorg/lucasr/twowayview/TwoWayView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Laoq;->a:Landroid/content/Context;

    .line 27
    return-void
.end method


# virtual methods
.method public abstract a(Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/View;
    .param p1    # Landroid/view/View;
        .annotation build Lcgc;
        .end annotation
    .end param
    .param p3    # Landroid/view/LayoutInflater;
        .annotation build Lcgb;
        .end annotation
    .end param
    .annotation build Lcgb;
    .end annotation
.end method

.method public final a()Ljava/lang/String;
    .locals 1
    .annotation build Lcgc;
    .end annotation

    .prologue
    .line 32
    const/4 v0, 0x0

    return-object v0
.end method

.method public final a(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 57
    check-cast p1, Lorg/lucasr/twowayview/TwoWayView;

    .line 58
    invoke-virtual {p0}, Laoq;->e()Landroid/widget/BaseAdapter;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/lucasr/twowayview/TwoWayView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 59
    new-instance v0, Laoq$1;

    invoke-direct {v0, p0}, Laoq$1;-><init>(Laoq;)V

    invoke-virtual {p1, v0}, Lorg/lucasr/twowayview/TwoWayView;->setOnScrollListener(Lorg/lucasr/twowayview/TwoWayView$OnScrollListener;)V

    .line 70
    iput-object p1, p0, Laoq;->b:Lorg/lucasr/twowayview/TwoWayView;

    .line 71
    return-void
.end method

.method public abstract b()V
.end method

.method public abstract d()V
.end method

.method public abstract e()Landroid/widget/BaseAdapter;
    .annotation build Lcgb;
    .end annotation
.end method

.method public abstract f()V
.end method

.method public abstract g()V
.end method

.method public final j()Z
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    return v0
.end method

.method public final k()Ljava/lang/String;
    .locals 1
    .annotation build Lcgb;
    .end annotation

    .prologue
    .line 43
    const-string v0, ""

    return-object v0
.end method

.method public final l()Z
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x0

    return v0
.end method

.method public final m()Lauz;
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract m_()Z
.end method

.method public final n()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 74
    iget-object v0, p0, Laoq;->b:Lorg/lucasr/twowayview/TwoWayView;

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Laoq;->b:Lorg/lucasr/twowayview/TwoWayView;

    invoke-virtual {v0, v1}, Lorg/lucasr/twowayview/TwoWayView;->setSelection(I)V

    .line 76
    iget-object v0, p0, Laoq;->b:Lorg/lucasr/twowayview/TwoWayView;

    invoke-virtual {v0, v1}, Lorg/lucasr/twowayview/TwoWayView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 77
    if-eqz v0, :cond_0

    .line 78
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 81
    :cond_0
    return-void
.end method
