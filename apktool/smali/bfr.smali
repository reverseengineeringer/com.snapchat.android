.class public final Lbfr;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public mFeedListItem:Landroid/view/View;

.field public mIsFlinging:Z


# direct methods
.method public constructor <init>(Landroid/view/View;Z)V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/4 v0, 0x0

    iput-boolean v0, p0, Lbfr;->mIsFlinging:Z

    .line 15
    iput-object p1, p0, Lbfr;->mFeedListItem:Landroid/view/View;

    .line 16
    iput-boolean p2, p0, Lbfr;->mIsFlinging:Z

    .line 17
    return-void
.end method
