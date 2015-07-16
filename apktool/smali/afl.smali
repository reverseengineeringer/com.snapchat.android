.class public final Lafl;
.super Landroid/support/v7/widget/RecyclerView$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$a",
        "<",
        "Laer;",
        ">;"
    }
.end annotation


# instance fields
.field final c:Lafh;

.field final d:Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;

.field public final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/discover/model/ChannelPage;",
            ">;"
        }
    .end annotation
.end field

.field protected final f:Landroid/view/View$OnClickListener;

.field private final g:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lafh;Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;)V
    .locals 2

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$a;-><init>()V

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lafl;->e:Ljava/util/List;

    .line 113
    new-instance v0, Lafl$1;

    invoke-direct {v0, p0}, Lafl$1;-><init>(Lafl;)V

    iput-object v0, p0, Lafl;->f:Landroid/view/View$OnClickListener;

    .line 42
    iput-object p2, p0, Lafl;->c:Lafh;

    .line 43
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lafl;->g:Landroid/view/LayoutInflater;

    .line 44
    iput-object p3, p0, Lafl;->d:Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;

    .line 48
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$a;->a:Landroid/support/v7/widget/RecyclerView$b;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot change whether this adapter has stable IDs while the adapter has registered observers."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$a;->b:Z

    .line 49
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lafl;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final synthetic a(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$s;
    .locals 3

    .prologue
    .line 31
    iget-object v0, p0, Lafl;->g:Landroid/view/LayoutInflater;

    const v1, 0x7f040027

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    new-instance v1, Laer;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x3

    invoke-direct {v1, v0, v2}, Laer;-><init>(Landroid/view/View;I)V

    return-object v1
.end method

.method public final synthetic a(Landroid/support/v7/widget/RecyclerView$s;I)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 31
    check-cast p1, Laer;

    if-ltz p2, :cond_0

    iget-object v0, p0, Lafl;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p2, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    :goto_0
    return-void

    :cond_1
    iget-object v2, p1, Laer;->k:Lcom/snapchat/android/discover/ui/ChannelView;

    const v0, 0x7f0a0001

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lcom/snapchat/android/discover/ui/ChannelView;->setTag(ILjava/lang/Object;)V

    iget-object v0, p0, Lafl;->e:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/discover/model/ChannelPage;

    if-eqz v0, :cond_4

    invoke-virtual {v2}, Lcom/snapchat/android/discover/ui/ChannelView;->getChannelPage()Lcom/snapchat/android/discover/model/ChannelPage;

    move-result-object v1

    if-nez v1, :cond_3

    const/4 v1, 0x0

    :goto_1
    iget-object v3, v0, Lcom/snapchat/android/discover/model/ChannelPage;->b:Ljava/lang/String;

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v2, v4}, Lcom/snapchat/android/discover/ui/ChannelView;->setProgressBarVisibility(Z)V

    invoke-virtual {v2}, Lcom/snapchat/android/discover/ui/ChannelView;->a()V

    :cond_2
    invoke-virtual {v2, v0}, Lcom/snapchat/android/discover/ui/ChannelView;->setChannelPage(Lcom/snapchat/android/discover/model/ChannelPage;)V

    iget-object v0, p0, Lafl;->f:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v0}, Lcom/snapchat/android/discover/ui/ChannelView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v2, v4}, Lcom/snapchat/android/discover/ui/ChannelView;->setVisibility(I)V

    goto :goto_0

    :cond_3
    iget-object v1, v1, Lcom/snapchat/android/discover/model/ChannelPage;->b:Ljava/lang/String;

    goto :goto_1

    :cond_4
    const/16 v0, 0x8

    invoke-virtual {v2, v0}, Lcom/snapchat/android/discover/ui/ChannelView;->setVisibility(I)V

    goto :goto_0
.end method

.method public final b(I)J
    .locals 2

    .prologue
    .line 53
    int-to-long v0, p1

    return-wide v0
.end method
