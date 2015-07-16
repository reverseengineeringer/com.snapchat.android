.class public final Lari;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# instance fields
.field private final a:Lbbb;

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lbbb;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lari;->a:Lbbb;

    .line 21
    iput-object p2, p0, Lari;->b:Ljava/lang/String;

    .line 22
    return-void
.end method


# virtual methods
.method public final onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    .prologue
    .line 36
    return-void
.end method

.method public final onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 26
    if-nez p2, :cond_0

    .line 27
    iget-object v0, p0, Lari;->a:Lbbb;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lari;->b:Ljava/lang/String;

    aput-object v3, v1, v2

    const-string v2, "VERTICAL"

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lbbb;->b([Ljava/lang/String;)V

    .line 31
    :goto_0
    return-void

    .line 29
    :cond_0
    iget-object v0, p0, Lari;->a:Lbbb;

    iput-boolean v4, v0, Lbbb;->mDeferPause:Z

    goto :goto_0
.end method
