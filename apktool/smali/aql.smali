.class public final Laql;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# instance fields
.field private final a:Lbaa;

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lbaa;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Laql;->a:Lbaa;

    .line 20
    iput-object p2, p0, Laql;->b:Ljava/lang/String;

    .line 21
    return-void
.end method


# virtual methods
.method public final onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    .prologue
    .line 35
    return-void
.end method

.method public final onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 25
    if-nez p2, :cond_0

    .line 26
    iget-object v0, p0, Laql;->a:Lbaa;

    iget-object v1, p0, Laql;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lbaa;->a(Ljava/lang/String;Z)V

    .line 30
    :goto_0
    return-void

    .line 28
    :cond_0
    iget-object v0, p0, Laql;->a:Lbaa;

    iput-boolean v2, v0, Lbaa;->mDeferPause:Z

    goto :goto_0
.end method
