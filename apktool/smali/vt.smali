.class public abstract Lvt;
.super Landroid/support/v7/widget/RecyclerView$s;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lvp;",
        ">",
        "Landroid/support/v7/widget/RecyclerView$s;"
    }
.end annotation


# instance fields
.field protected p:Z


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$s;-><init>(Landroid/view/View;)V

    .line 22
    return-void
.end method


# virtual methods
.method public abstract a(Lvo;)V
.end method

.method public abstract a(Lvp;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public abstract a(Lwa;)V
.end method

.method public abstract a(Lwa;Landroid/view/MotionEvent;)V
.end method

.method public abstract a(Lwa;Z)V
.end method

.method public abstract a(Lwa;FFFF)Z
.end method

.method public abstract b(Lwa;)F
.end method

.method public abstract b(I)V
.end method

.method public final b(Z)V
    .locals 0

    .prologue
    .line 28
    iput-boolean p1, p0, Lvt;->p:Z

    .line 29
    return-void
.end method

.method public abstract c(Lwa;)Z
.end method

.method public abstract d(Lwa;)I
.end method

.method public abstract e(Lwa;)V
.end method

.method public abstract f(Lwa;)V
.end method

.method public abstract g(Lwa;)V
.end method

.method public abstract s()Lvp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public final t()Z
    .locals 1

    .prologue
    .line 32
    iget-boolean v0, p0, Lvt;->p:Z

    return v0
.end method
