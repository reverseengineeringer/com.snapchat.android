.class public final Lahi;
.super Landroid/support/v7/widget/RecyclerView$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lahi$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$a",
        "<",
        "Lahi$a;",
        ">;"
    }
.end annotation


# instance fields
.field final c:Landroid/content/Context;

.field final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/Friend;",
            ">;"
        }
    .end annotation
.end field

.field final e:Ljava/lang/String;

.field final f:Lakr;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lakr;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/Friend;",
            ">;",
            "Lakr;",
            ")V"
        }
    .end annotation

    .prologue
    .line 57
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$a;-><init>()V

    .line 58
    iput-object p1, p0, Lahi;->c:Landroid/content/Context;

    .line 59
    iput-object p2, p0, Lahi;->d:Ljava/util/List;

    .line 60
    iget-object v0, p0, Lahi;->c:Landroid/content/Context;

    const v1, 0x7f0c00fd

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lahi;->e:Ljava/lang/String;

    .line 61
    iput-object p3, p0, Lahi;->f:Lakr;

    .line 62
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lahi;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final synthetic a(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$s;
    .locals 3

    .prologue
    .line 28
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04000d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lahi$a;

    invoke-direct {v1, v0}, Lahi$a;-><init>(Landroid/view/View;)V

    return-object v1
.end method

.method public final synthetic a(Landroid/support/v7/widget/RecyclerView$s;I)V
    .locals 3

    .prologue
    .line 28
    check-cast p1, Lahi$a;

    iget-object v0, p0, Lahi;->d:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/Friend;

    iget-object v1, p1, Lahi$a;->k:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/snapchat/android/model/Friend;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p1, Lahi$a;->l:Landroid/view/View;

    new-instance v2, Lahi$1;

    invoke-direct {v2, p0, p1, v0}, Lahi$1;-><init>(Lahi;Lahi$a;Lcom/snapchat/android/model/Friend;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected final e(I)V
    .locals 1

    .prologue
    .line 125
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lahi;->a()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 126
    iget-object v0, p0, Lahi;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 127
    invoke-virtual {p0, p1}, Lahi;->d(I)V

    .line 133
    :goto_0
    return-void

    .line 131
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$a;->a:Landroid/support/v7/widget/RecyclerView$b;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$b;->b()V

    goto :goto_0
.end method
