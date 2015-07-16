.class public abstract Lapm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lahy;


# instance fields
.field protected final d:Landroid/content/Context;

.field public e:Lorg/lucasr/twowayview/TwoWayView;

.field public f:I

.field protected final g:Lorg/lucasr/twowayview/TwoWayView$OnScrollListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, -0x1

    iput v0, p0, Lapm;->f:I

    .line 150
    new-instance v0, Lapm$1;

    invoke-direct {v0, p0}, Lapm$1;-><init>(Lapm;)V

    iput-object v0, p0, Lapm;->g:Lorg/lucasr/twowayview/TwoWayView$OnScrollListener;

    .line 29
    iput-object p1, p0, Lapm;->d:Landroid/content/Context;

    .line 30
    return-void
.end method


# virtual methods
.method public abstract a(Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/View;
    .param p1    # Landroid/view/View;
        .annotation build Lchd;
        .end annotation
    .end param
    .param p3    # Landroid/view/LayoutInflater;
        .annotation build Lchc;
        .end annotation
    .end param
    .annotation build Lchc;
    .end annotation
.end method

.method public final a()Ljava/lang/String;
    .locals 1
    .annotation build Lchd;
    .end annotation

    .prologue
    .line 35
    const/4 v0, 0x0

    return-object v0
.end method

.method public final a(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 60
    check-cast p1, Lorg/lucasr/twowayview/TwoWayView;

    .line 61
    invoke-virtual {p0}, Lapm;->e()Landroid/widget/BaseAdapter;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/lucasr/twowayview/TwoWayView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 62
    iget-object v0, p0, Lapm;->g:Lorg/lucasr/twowayview/TwoWayView$OnScrollListener;

    invoke-virtual {p1, v0}, Lorg/lucasr/twowayview/TwoWayView;->setOnScrollListener(Lorg/lucasr/twowayview/TwoWayView$OnScrollListener;)V

    .line 63
    iput-object p1, p0, Lapm;->e:Lorg/lucasr/twowayview/TwoWayView;

    .line 64
    return-void
.end method

.method public abstract a(Lma;)V
.end method

.method public abstract b()V
.end method

.method public abstract d()V
.end method

.method public abstract e()Landroid/widget/BaseAdapter;
    .annotation build Lchc;
    .end annotation
.end method

.method public abstract f()V
.end method

.method public abstract g()V
.end method

.method public abstract h()V
.end method

.method public abstract i()V
.end method

.method public abstract j()V
.end method

.method public abstract k()V
.end method

.method public abstract k_()Z
.end method

.method public abstract m()V
.end method

.method public final n()Z
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    return v0
.end method

.method public final o()Z
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x0

    return v0
.end method

.method public final p()Lavx;
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x0

    return-object v0
.end method
