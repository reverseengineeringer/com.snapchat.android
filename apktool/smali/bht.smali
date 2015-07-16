.class public final Lbht;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected mCount:I

.field protected final mOnPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field protected final mOnPreDrawSkipListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field public mView:Landroid/view/View;

.field mViewTreeObserver:Landroid/view/ViewTreeObserver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Lbht$1;

    invoke-direct {v0, p0}, Lbht$1;-><init>(Lbht;)V

    iput-object v0, p0, Lbht;->mOnPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 23
    new-instance v0, Lbht$2;

    invoke-direct {v0, p0}, Lbht$2;-><init>(Lbht;)V

    iput-object v0, p0, Lbht;->mOnPreDrawSkipListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 33
    const/4 v0, 0x0

    iput v0, p0, Lbht;->mCount:I

    .line 36
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 54
    iget v0, p0, Lbht;->mCount:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lbht;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lbht;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    iget-object v1, p0, Lbht;->mOnPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 57
    :cond_0
    iget v0, p0, Lbht;->mCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lbht;->mCount:I

    .line 58
    return-void
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 64
    iget v0, p0, Lbht;->mCount:I

    if-lez v0, :cond_0

    .line 65
    iget v0, p0, Lbht;->mCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lbht;->mCount:I

    .line 66
    iget v0, p0, Lbht;->mCount:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lbht;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lbht;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    iget-object v1, p0, Lbht;->mOnPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 70
    :cond_0
    return-void
.end method

.method public final c()V
    .locals 2

    .prologue
    .line 87
    invoke-virtual {p0}, Lbht;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lbht;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    iget-object v1, p0, Lbht;->mOnPreDrawSkipListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 90
    :cond_0
    return-void
.end method

.method final d()Z
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lbht;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iput-object v0, p0, Lbht;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    .line 98
    iget-object v0, p0, Lbht;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    return v0
.end method
