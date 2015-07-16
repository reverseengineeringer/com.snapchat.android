.class public final Lbhr;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbhr$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/view/View;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mCallback:Lbhr$a;

.field private mLayout:Landroid/view/View;

.field private mResourceId:I

.field private mStubId:I

.field private mView:Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;II)V
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lbhr;-><init>(Landroid/view/View;IILbhr$a;)V

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/view/View;IILbhr$a;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lbhr;->mLayout:Landroid/view/View;

    .line 30
    iput p2, p0, Lbhr;->mStubId:I

    .line 31
    iput p3, p0, Lbhr;->mResourceId:I

    .line 32
    iput-object p4, p0, Lbhr;->mCallback:Lbhr$a;

    .line 33
    return-void
.end method


# virtual methods
.method public final a()Landroid/view/View;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 40
    iget-object v0, p0, Lbhr;->mView:Landroid/view/View;

    if-nez v0, :cond_1

    .line 41
    iget-object v0, p0, Lbhr;->mLayout:Landroid/view/View;

    iget v1, p0, Lbhr;->mStubId:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 42
    if-eqz v0, :cond_0

    .line 43
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 45
    :cond_0
    iget-object v0, p0, Lbhr;->mLayout:Landroid/view/View;

    iget v1, p0, Lbhr;->mResourceId:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lbhr;->mView:Landroid/view/View;

    .line 46
    iget-object v0, p0, Lbhr;->mCallback:Lbhr$a;

    if-eqz v0, :cond_1

    .line 47
    iget-object v0, p0, Lbhr;->mCallback:Lbhr$a;

    iget-object v1, p0, Lbhr;->mView:Landroid/view/View;

    invoke-interface {v0, v1}, Lbhr$a;->a(Landroid/view/View;)V

    .line 50
    :cond_1
    iget-object v0, p0, Lbhr;->mView:Landroid/view/View;

    return-object v0
.end method

.method public final a(I)V
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lbhr;->mView:Landroid/view/View;

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 90
    :goto_0
    return-void

    .line 89
    :cond_0
    invoke-virtual {p0}, Lbhr;->a()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public final a(Lbhr$a;)V
    .locals 2

    .prologue
    .line 73
    iput-object p1, p0, Lbhr;->mCallback:Lbhr$a;

    .line 75
    invoke-virtual {p0}, Lbhr;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lbhr;->mCallback:Lbhr$a;

    iget-object v1, p0, Lbhr;->mView:Landroid/view/View;

    invoke-interface {v0, v1}, Lbhr$a;->a(Landroid/view/View;)V

    .line 78
    :cond_0
    return-void
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lbhr;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lbhr;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbhr;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
