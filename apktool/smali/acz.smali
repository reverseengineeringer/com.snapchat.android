.class public final Lacz;
.super Landroid/widget/CursorAdapter;
.source "SourceFile"


# instance fields
.field protected final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lads;",
            ">;"
        }
    .end annotation
.end field

.field protected final b:Landroid/view/View$OnClickListener;

.field private final c:Ladj;

.field private final d:Laeh;

.field private final e:Landroid/view/LayoutInflater;

.field private final f:Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;

.field private final g:Lada;


# direct methods
.method private constructor <init>(Landroid/content/Context;Laeh;Ladj;Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;Lada;)V
    .locals 2

    .prologue
    .line 60
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;I)V

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lacz;->a:Ljava/util/Map;

    .line 135
    new-instance v0, Lacz$1;

    invoke-direct {v0, p0}, Lacz$1;-><init>(Lacz;)V

    iput-object v0, p0, Lacz;->b:Landroid/view/View$OnClickListener;

    .line 61
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lacz;->e:Landroid/view/LayoutInflater;

    .line 62
    iput-object p3, p0, Lacz;->c:Ladj;

    .line 63
    iput-object p2, p0, Lacz;->d:Laeh;

    .line 64
    iput-object p4, p0, Lacz;->f:Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;

    .line 65
    iput-object p5, p0, Lacz;->g:Lada;

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Laeh;Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;)V
    .locals 6

    .prologue
    .line 50
    invoke-static {}, Ladj;->a()Ladj;

    move-result-object v3

    new-instance v5, Lada;

    invoke-direct {v5}, Lada;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lacz;-><init>(Landroid/content/Context;Laeh;Ladj;Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;Lada;)V

    .line 52
    return-void
.end method

.method static synthetic a(Lacz;)Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lacz;->f:Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;

    return-object v0
.end method

.method static synthetic b(Lacz;)Laeh;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lacz;->d:Laeh;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/database/Cursor;Z)Landroid/database/Cursor;
    .locals 9

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 103
    if-eqz p1, :cond_5

    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_5

    .line 104
    iget-object v3, p0, Lacz;->g:Lada;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cursor must be non-null, open, and have content to sort."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-object p1, v3, Lada;->d:Landroid/database/Cursor;

    if-nez p2, :cond_6

    const/4 v0, 0x1

    :goto_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v5, Ljava/util/HashSet;

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/HashSet;-><init>(I)V

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_4

    :cond_2
    iget-object v6, v3, Lada;->c:Ladj;

    invoke-virtual {v6, p1}, Ladj;->b(Landroid/database/Cursor;)Lcom/snapchat/android/discover/model/ChannelPage;

    move-result-object v6

    if-eqz v6, :cond_4

    if-eqz v0, :cond_3

    iget-object v7, v3, Lada;->f:Ljava/util/Set;

    iget-object v8, v6, Lcom/snapchat/android/discover/model/ChannelPage;->b:Ljava/lang/String;

    invoke-interface {v7, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    and-int/2addr v0, v7

    :cond_3
    iget-object v7, v6, Lcom/snapchat/android/discover/model/ChannelPage;->b:Ljava/lang/String;

    invoke-interface {v5, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-nez v6, :cond_2

    :cond_4
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v6

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-eq v6, v7, :cond_7

    const-string v0, "StoriesChannelViewSorter"

    const-string v4, "Failed to parse channel page."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v4, v1}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-object v2, v3, Lada;->d:Landroid/database/Cursor;

    move-object v1, v2

    .line 105
    :goto_1
    if-eqz v1, :cond_5

    array-length v0, v1

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-ne v0, v2, :cond_5

    .line 106
    new-instance v0, Lzu;

    invoke-direct {v0, p1, v1}, Lzu;-><init>(Landroid/database/Cursor;[I)V

    move-object p1, v0

    .line 110
    :cond_5
    invoke-super {p0, p1}, Landroid/widget/CursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    :cond_6
    move v0, v1

    .line 104
    goto :goto_0

    :cond_7
    if-eqz v0, :cond_8

    iget-object v0, v3, Lada;->g:Ljava/util/List;

    if-eqz v0, :cond_8

    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v0

    iget-object v2, v3, Lada;->f:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    if-ne v0, v2, :cond_8

    const-string v0, "StoriesChannelViewSorter"

    const-string v2, "Channels have not changed. Only sorting fully viewed channels."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/snapchat/android/Timber;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, v3, Lada;->g:Ljava/util/List;

    iget-object v1, v3, Lada;->j:Ljava/util/Comparator;

    invoke-virtual {v3, v0, v1}, Lada;->a(Ljava/util/List;Ljava/util/Comparator;)[I

    move-result-object v0

    :goto_2
    iget-object v1, v3, Lada;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, v3, Lada;->e:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v1, v3, Lada;->f:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    iget-object v1, v3, Lada;->f:Ljava/util/Set;

    invoke-interface {v1, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    move-object v1, v0

    goto :goto_1

    :cond_8
    iget-object v0, v3, Lada;->i:Ljava/util/Comparator;

    invoke-virtual {v3, v4, v0}, Lada;->a(Ljava/util/List;Ljava/util/Comparator;)[I

    move-result-object v0

    goto :goto_2
.end method

.method public final bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 8
    .annotation build Lavl;
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 81
    const v0, 0x7f0a0109

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/discover/ui/ChannelView;

    .line 82
    if-eqz v0, :cond_0

    .line 83
    invoke-interface {p3}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 84
    const-string v1, "StoriesChannelCursorAdapter"

    const-string v2, "Cursor was closed before bind."

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 85
    invoke-virtual {v0, v7}, Lcom/snapchat/android/discover/ui/ChannelView;->setVisibility(I)V

    .line 100
    :cond_0
    :goto_0
    return-void

    .line 87
    :cond_1
    iget-object v3, p0, Lacz;->g:Lada;

    if-eqz p3, :cond_b

    instance-of v1, p3, Landroid/database/CursorWrapper;

    if-eqz v1, :cond_4

    move-object v1, p3

    check-cast v1, Landroid/database/CursorWrapper;

    invoke-virtual {v1}, Landroid/database/CursorWrapper;->getWrappedCursor()Landroid/database/Cursor;

    move-result-object v1

    :goto_1
    iget-object v4, v3, Lada;->d:Landroid/database/Cursor;

    if-eq v4, v1, :cond_5

    const-string v1, "StoriesChannelViewSorter"

    const-string v4, "Mismatch between sorted cursor and requested cursor."

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v1, v4, v5}, Lcom/snapchat/android/Timber;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, v3, Lada;->c:Ladj;

    invoke-virtual {v1, p3}, Ladj;->b(Landroid/database/Cursor;)Lcom/snapchat/android/discover/model/ChannelPage;

    move-result-object v1

    move-object v3, v1

    .line 88
    :goto_2
    if-eqz v3, :cond_a

    .line 89
    invoke-virtual {v0}, Lcom/snapchat/android/discover/ui/ChannelView;->getChannelPage()Lcom/snapchat/android/discover/model/ChannelPage;

    move-result-object v1

    if-nez v1, :cond_8

    :goto_3
    iget-object v1, v3, Lcom/snapchat/android/discover/model/ChannelPage;->b:Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lcom/snapchat/android/discover/ui/ChannelView;->a()V

    :cond_2
    invoke-virtual {v3}, Lcom/snapchat/android/discover/model/ChannelPage;->e()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lacz;->a:Ljava/util/Map;

    iget-object v2, v3, Lcom/snapchat/android/discover/model/ChannelPage;->b:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    iget-object v1, p0, Lacz;->a:Ljava/util/Map;

    iget-object v2, v3, Lcom/snapchat/android/discover/model/ChannelPage;->b:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lads;

    if-eqz v1, :cond_9

    iget-boolean v1, v1, Lads;->a:Z

    invoke-virtual {v0, v1}, Lcom/snapchat/android/discover/ui/ChannelView;->setProgressBarVisibility(Z)V

    .line 90
    :goto_4
    invoke-virtual {v0, v6}, Lcom/snapchat/android/discover/ui/ChannelView;->setVisibility(I)V

    .line 91
    invoke-virtual {v0, v3}, Lcom/snapchat/android/discover/ui/ChannelView;->setChannelPage(Lcom/snapchat/android/discover/model/ChannelPage;)V

    .line 92
    iget-object v1, p0, Lacz;->b:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/discover/ui/ChannelView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_4
    move-object v1, p3

    .line 87
    goto :goto_1

    :cond_5
    invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I

    move-result v1

    if-ltz v1, :cond_6

    invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I

    move-result v1

    iget-object v4, v3, Lada;->e:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lt v1, v4, :cond_7

    :cond_6
    const-string v1, "StoriesChannelViewSorter"

    const-string v4, "Cursor was not successfully sorted."

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v1, v4, v5}, Lcom/snapchat/android/Timber;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, v3, Lada;->c:Ladj;

    invoke-virtual {v1, p3}, Ladj;->b(Landroid/database/Cursor;)Lcom/snapchat/android/discover/model/ChannelPage;

    move-result-object v1

    move-object v3, v1

    goto :goto_2

    :cond_7
    iget-object v1, v3, Lada;->e:Ljava/util/List;

    invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I

    move-result v3

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/snapchat/android/discover/model/ChannelPage;

    move-object v3, v1

    goto :goto_2

    .line 89
    :cond_8
    iget-object v2, v1, Lcom/snapchat/android/discover/model/ChannelPage;->b:Ljava/lang/String;

    goto :goto_3

    :cond_9
    invoke-virtual {v0, v6}, Lcom/snapchat/android/discover/ui/ChannelView;->setProgressBarVisibility(Z)V

    goto :goto_4

    .line 94
    :cond_a
    const-string v1, "StoriesChannelCursorAdapter"

    const-string v2, "Invalid ChannelPage found in the cursor adapter!"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 96
    invoke-virtual {v0, v7}, Lcom/snapchat/android/discover/ui/ChannelView;->setVisibility(I)V

    goto/16 :goto_0

    :cond_b
    move-object v1, v2

    goto/16 :goto_1
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .prologue
    .line 75
    invoke-super {p0, p1, p2, p3}, Landroid/widget/CursorAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 70
    iget-object v0, p0, Lacz;->e:Landroid/view/LayoutInflater;

    const v1, 0x7f040027

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
