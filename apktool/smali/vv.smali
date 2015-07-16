.class public final Lvv;
.super Lvt;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lvt",
        "<",
        "Lvu;",
        ">;"
    }
.end annotation


# instance fields
.field private final k:Landroid/view/View;

.field private final l:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lvt;-><init>(Landroid/view/View;)V

    .line 22
    const v0, 0x7f0a0123

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lvv;->k:Landroid/view/View;

    .line 23
    const v0, 0x7f0a0225

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lvv;->l:Landroid/view/View;

    .line 24
    return-void
.end method


# virtual methods
.method public final a(Lvo;)V
    .locals 0

    .prologue
    .line 50
    return-void
.end method

.method public final synthetic a(Lvp;)V
    .locals 3

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 14
    check-cast p1, Lvu;

    iget-boolean v0, p1, Lvu;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lvv;->k:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lvv;->l:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lvv;->k:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lvv;->l:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public final a(Lwa;)V
    .locals 0

    .prologue
    .line 61
    return-void
.end method

.method public final a(Lwa;Landroid/view/MotionEvent;)V
    .locals 0

    .prologue
    .line 53
    return-void
.end method

.method public final a(Lwa;Z)V
    .locals 0

    .prologue
    .line 79
    return-void
.end method

.method public final a(Lwa;FFFF)Z
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x0

    return v0
.end method

.method public final b(Lwa;)F
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x0

    return v0
.end method

.method public final b(I)V
    .locals 0

    .prologue
    .line 98
    return-void
.end method

.method public final c(Lwa;)Z
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x0

    return v0
.end method

.method public final d(Lwa;)I
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x0

    return v0
.end method

.method public final e(Lwa;)V
    .locals 0

    .prologue
    .line 86
    invoke-interface {p1}, Lwa;->a_()V

    .line 87
    return-void
.end method

.method public final f(Lwa;)V
    .locals 0

    .prologue
    .line 90
    return-void
.end method

.method public final g(Lwa;)V
    .locals 0

    .prologue
    .line 93
    return-void
.end method

.method public final bridge synthetic s()Lvp;
    .locals 1

    .prologue
    .line 14
    const/4 v0, 0x0

    return-object v0
.end method
