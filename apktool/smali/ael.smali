.class public final Lael;
.super Landroid/support/v7/widget/RecyclerView$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$a",
        "<",
        "Ladr;",
        ">;"
    }
.end annotation


# instance fields
.field final c:Laeh;

.field final d:Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;

.field protected final e:Landroid/view/View$OnClickListener;

.field private final f:Ladj;

.field private final g:Landroid/view/LayoutInflater;

.field private h:Landroid/database/Cursor;


# direct methods
.method private constructor <init>(Landroid/content/Context;Laeh;Ladj;Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;)V
    .locals 2

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$a;-><init>()V

    .line 144
    new-instance v0, Lael$1;

    invoke-direct {v0, p0}, Lael$1;-><init>(Lael;)V

    iput-object v0, p0, Lael;->e:Landroid/view/View$OnClickListener;

    .line 49
    iput-object p2, p0, Lael;->c:Laeh;

    .line 50
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lael;->g:Landroid/view/LayoutInflater;

    .line 51
    iput-object p3, p0, Lael;->f:Ladj;

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lael;->h:Landroid/database/Cursor;

    .line 53
    iput-object p4, p0, Lael;->d:Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;

    .line 57
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

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Laeh;Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;)V
    .locals 1

    .prologue
    .line 41
    invoke-static {}, Ladj;->a()Ladj;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0, p3}, Lael;-><init>(Landroid/content/Context;Laeh;Ladj;Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;)V

    .line 43
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lael;->h:Landroid/database/Cursor;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lael;->h:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    goto :goto_0
.end method

.method public final a(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 2

    .prologue
    .line 120
    iget-object v0, p0, Lael;->h:Landroid/database/Cursor;

    if-ne p1, v0, :cond_1

    .line 121
    const/4 v0, 0x0

    .line 131
    :cond_0
    :goto_0
    return-object v0

    .line 124
    :cond_1
    iget-object v0, p0, Lael;->h:Landroid/database/Cursor;

    .line 125
    iput-object p1, p0, Lael;->h:Landroid/database/Cursor;

    .line 126
    if-eqz p1, :cond_0

    .line 128
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$a;->a:Landroid/support/v7/widget/RecyclerView$b;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$b;->b()V

    goto :goto_0
.end method

.method public final synthetic a(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$s;
    .locals 3

    .prologue
    .line 29
    iget-object v0, p0, Lael;->g:Landroid/view/LayoutInflater;

    const v1, 0x7f040026

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    new-instance v1, Ladr;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x3

    invoke-direct {v1, v0, v2}, Ladr;-><init>(Landroid/view/View;I)V

    return-object v1
.end method

.method public final synthetic a(Landroid/support/v7/widget/RecyclerView$s;I)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 29
    check-cast p1, Ladr;

    iget-object v0, p0, Lael;->h:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lael;->h:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lael;->h:Landroid/database/Cursor;

    invoke-interface {v0, p2}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    if-nez v0, :cond_1

    const-string v0, "ChannelCursorAdapter"

    const-string v3, "Cursor is not valid or does not have position %d"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v0, v3, v1}, Lcom/snapchat/android/Timber;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    iget-object v1, p1, Ladr;->k:Lcom/snapchat/android/discover/ui/ChannelView;

    iget-object v0, p0, Lael;->f:Ladj;

    iget-object v3, p0, Lael;->h:Landroid/database/Cursor;

    invoke-virtual {v0, v3}, Ladj;->b(Landroid/database/Cursor;)Lcom/snapchat/android/discover/model/ChannelPage;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v1}, Lcom/snapchat/android/discover/ui/ChannelView;->getChannelPage()Lcom/snapchat/android/discover/model/ChannelPage;

    move-result-object v0

    if-nez v0, :cond_3

    const/4 v0, 0x0

    :goto_2
    iget-object v4, v3, Lcom/snapchat/android/discover/model/ChannelPage;->b:Ljava/lang/String;

    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v1, v2}, Lcom/snapchat/android/discover/ui/ChannelView;->setProgressBarVisibility(Z)V

    invoke-virtual {v1}, Lcom/snapchat/android/discover/ui/ChannelView;->a()V

    :cond_2
    invoke-virtual {v1, v3}, Lcom/snapchat/android/discover/ui/ChannelView;->setChannelPage(Lcom/snapchat/android/discover/model/ChannelPage;)V

    iget-object v0, p0, Lael;->e:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v0}, Lcom/snapchat/android/discover/ui/ChannelView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1, v2}, Lcom/snapchat/android/discover/ui/ChannelView;->setVisibility(I)V

    goto :goto_1

    :cond_3
    iget-object v0, v0, Lcom/snapchat/android/discover/model/ChannelPage;->b:Ljava/lang/String;

    goto :goto_2

    :cond_4
    const-string v0, "ChannelCursorAdapter"

    const-string v3, "Invalid ChannelPage found in the cursor adapter!"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v2}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Lcom/snapchat/android/discover/ui/ChannelView;->setVisibility(I)V

    goto :goto_1
.end method

.method public final b(I)J
    .locals 2

    .prologue
    .line 62
    int-to-long v0, p1

    return-wide v0
.end method
