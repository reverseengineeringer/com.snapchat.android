.class public final Luz;
.super Lux;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lux",
        "<",
        "Luy;",
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
    .line 18
    invoke-direct {p0, p1}, Lux;-><init>(Landroid/view/View;)V

    .line 20
    const v0, 0x7f0a0123

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Luz;->k:Landroid/view/View;

    .line 21
    const v0, 0x7f0a0227

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Luz;->l:Landroid/view/View;

    .line 22
    return-void
.end method


# virtual methods
.method public final synthetic a(Lut;)V
    .locals 3

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 12
    check-cast p1, Luy;

    iget-boolean v0, p1, Luy;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Luz;->k:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Luz;->l:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Luz;->k:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Luz;->l:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public final a(Lve;)V
    .locals 0

    .prologue
    .line 54
    return-void
.end method

.method public final a(Lve;Z)V
    .locals 0

    .prologue
    .line 74
    return-void
.end method

.method public final a(Lve;FFFF)Z
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    return v0
.end method

.method public final b(Lve;)F
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x0

    return v0
.end method

.method public final c(Lve;)Z
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x0

    return v0
.end method

.method public final d(Lve;)I
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x0

    return v0
.end method

.method public final e(Lve;)V
    .locals 0

    .prologue
    .line 84
    invoke-interface {p1}, Lve;->b_()V

    .line 85
    return-void
.end method

.method public final f(Lve;)V
    .locals 0

    .prologue
    .line 89
    return-void
.end method

.method public final g(Lve;)V
    .locals 0

    .prologue
    .line 94
    return-void
.end method

.method public final bridge synthetic q()Lut;
    .locals 1

    .prologue
    .line 12
    const/4 v0, 0x0

    return-object v0
.end method
