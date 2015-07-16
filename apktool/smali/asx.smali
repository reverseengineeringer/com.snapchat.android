.class public final Lasx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Last;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lasm;)V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 23
    invoke-virtual {p1}, Lasm;->d()Landroid/view/View;

    move-result-object v0

    .line 24
    if-eqz v0, :cond_0

    .line 25
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 26
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 28
    :cond_0
    return-void
.end method
