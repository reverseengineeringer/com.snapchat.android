.class public final Lagd;
.super Lapf;
.source "SourceFile"

# interfaces
.implements Lbfe$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lagd$b;,
        Lagd$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lapf",
        "<",
        "Lcom/snapchat/android/model/chat/ChatConversation;",
        ">;",
        "Lbfe$a",
        "<",
        "Lcom/snapchat/android/model/chat/ChatConversation;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/snapchat/android/model/chat/ChatConversation;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field protected b:Lazo;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private c:Landroid/view/LayoutInflater;

.field private final d:Latw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Latw",
            "<",
            "Lcom/snapchat/android/model/chat/ChatConversation;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lyn;

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/chat/ChatConversation;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lagf;

.field private h:Lagd$a;

.field private i:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lajv;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;Latw;Lyn;Lagd$a;Ljavax/inject/Provider;)V
    .locals 1
    .annotation build Lcf;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Latw",
            "<",
            "Lcom/snapchat/android/model/chat/ChatConversation;",
            ">;",
            "Lyn;",
            "Lagd$a;",
            "Ljavax/inject/Provider",
            "<",
            "Lajv;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 96
    const v0, 0x7f04005d

    invoke-direct {p0, p1, v0, p2}, Lapf;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 73
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lagd;->a:Ljava/util/Map;

    .line 97
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/SnapchatApplication;->c()Laza;

    move-result-object v0

    invoke-interface {v0, p0}, Laza;->a(Lagd;)V

    .line 98
    iput-object p2, p0, Lagd;->d:Latw;

    .line 99
    iput-object p2, p0, Lagd;->f:Ljava/util/List;

    .line 100
    iput-object p3, p0, Lagd;->e:Lyn;

    .line 101
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lagd;->c:Landroid/view/LayoutInflater;

    .line 102
    iput-object p4, p0, Lagd;->h:Lagd$a;

    .line 103
    iput-object p5, p0, Lagd;->i:Ljavax/inject/Provider;

    .line 104
    return-void
.end method

.method public static a(Landroid/content/Context;Latw;Lyn;Lagd$a;)Lagd;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Latw",
            "<",
            "Lcom/snapchat/android/model/chat/ChatConversation;",
            ">;",
            "Lyn;",
            "Lagd$a;",
            ")",
            "Lagd;"
        }
    .end annotation

    .prologue
    .line 86
    new-instance v0, Lagd;

    sget-object v5, Lajv;->UNSAFE_USER_PROVIDER:Ljavax/inject/Provider;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lagd;-><init>(Landroid/content/Context;Latw;Lyn;Lagd$a;Ljavax/inject/Provider;)V

    .line 88
    iput-object v0, p1, Latw;->mAdapter:Landroid/widget/BaseAdapter;

    .line 89
    return-object v0
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Lcgc;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/chat/ChatConversation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 376
    if-nez p1, :cond_0

    .line 377
    iget-object v0, p0, Lagd;->d:Latw;

    iput-object v0, p0, Lagd;->f:Ljava/util/List;

    .line 381
    :goto_0
    iget-object v0, p0, Lagd;->h:Lagd$a;

    iget-object v1, p0, Lagd;->f:Ljava/util/List;

    invoke-interface {v0, v1}, Lagd$a;->a(Ljava/util/List;)V

    .line 382
    invoke-virtual {p0}, Lagd;->notifyDataSetChanged()V

    .line 383
    return-void

    .line 379
    :cond_0
    iput-object p1, p0, Lagd;->f:Ljava/util/List;

    goto :goto_0
.end method

.method public final getCount()I
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lagd;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getFilter()Landroid/widget/Filter;
    .locals 3

    .prologue
    .line 370
    iget-object v0, p0, Lagd;->g:Lagf;

    if-nez v0, :cond_0

    new-instance v0, Lagf;

    iget-object v1, p0, Lagd;->d:Latw;

    iget-object v2, p0, Lagd;->b:Lazo;

    invoke-direct {v0, v1, v2, p0}, Lagf;-><init>(Ljava/util/List;Lazo;Lbfe$a;)V

    iput-object v0, p0, Lagd;->g:Lagf;

    .line 371
    :cond_0
    iget-object v0, p0, Lagd;->g:Lagf;

    return-object v0
.end method

.method public final synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lagd;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/chat/ChatConversation;

    return-object v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12

    .prologue
    .line 116
    if-nez p2, :cond_1

    .line 117
    new-instance v1, Lagd$b;

    invoke-direct {v1}, Lagd$b;-><init>()V

    .line 118
    iget-object v0, p0, Lagd;->c:Landroid/view/LayoutInflater;

    const v2, 0x7f04005d

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 119
    const v0, 0x7f0a0228

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, v1, Lagd$b;->g:Landroid/widget/FrameLayout;

    .line 120
    const v0, 0x7f0a0229

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lagd$b;->h:Landroid/widget/ImageView;

    .line 121
    const v0, 0x7f0a022b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ui/FeedReplayAnimationView;

    iput-object v0, v1, Lagd$b;->i:Lcom/snapchat/android/ui/FeedReplayAnimationView;

    .line 122
    const v0, 0x7f0a0197

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lagd$b;->a:Landroid/widget/TextView;

    .line 123
    const v0, 0x7f0a022e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lagd$b;->b:Landroid/widget/TextView;

    .line 124
    const v0, 0x7f0a0044

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ui/EmojiTextView;

    iput-object v0, v1, Lagd$b;->f:Lcom/snapchat/android/ui/EmojiTextView;

    .line 125
    const v0, 0x7f0a022c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, v1, Lagd$b;->j:Landroid/widget/ProgressBar;

    .line 126
    const v0, 0x7f0a022f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lagd$b;->k:Landroid/widget/TextView;

    .line 127
    const v0, 0x7f0a0080

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v1, Lagd$b;->l:Landroid/view/View;

    .line 128
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v3, v1

    .line 134
    :goto_0
    iget-object v1, p0, Lagd;->f:Ljava/util/List;

    monitor-enter v1

    .line 135
    :try_start_0
    iget-object v0, p0, Lagd;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/chat/ChatConversation;

    .line 136
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 139
    if-nez v0, :cond_2

    .line 158
    :cond_0
    :goto_1
    return-object p2

    .line 130
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lagd$b;

    move-object v3, v0

    goto :goto_0

    .line 136
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 141
    :cond_2
    iget-object v1, v3, Lagd$b;->c:Lcom/snapchat/android/model/chat/ChatConversation;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/chat/ChatConversation;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 142
    iput-object v0, v3, Lagd$b;->c:Lcom/snapchat/android/model/chat/ChatConversation;

    .line 144
    iget-object v1, p0, Lagd;->e:Lyn;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lyn;->a(Lcom/snapchat/android/model/chat/ChatConversation;Z)V

    iget-object v2, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mItemsForFeedIcon:Ljava/util/List;

    iget-object v1, v3, Lagd$b;->i:Lcom/snapchat/android/ui/FeedReplayAnimationView;

    invoke-virtual {v1, v2, v0}, Lcom/snapchat/android/ui/FeedReplayAnimationView;->setDisplayedIcon(Ljava/util/List;Lcom/snapchat/android/model/chat/ChatConversation;)V

    iget-object v1, v3, Lagd$b;->i:Lcom/snapchat/android/ui/FeedReplayAnimationView;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/snapchat/android/ui/FeedReplayAnimationView;->setVisibility(I)V

    iget-object v1, v3, Lagd$b;->j:Landroid/widget/ProgressBar;

    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v1, v3, Lagd$b;->k:Landroid/widget/TextView;

    const-string v4, ""

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1d

    const/4 v1, 0x0

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/snapchat/android/model/chat/ChatFeedItem;

    instance-of v2, v1, Laje;

    if-eqz v2, :cond_9

    move-object v2, v1

    check-cast v2, Laje;

    invoke-virtual {v2}, Laje;->G()D

    move-result-wide v6

    invoke-virtual {v2}, Laje;->D()Z

    move-result v4

    if-eqz v4, :cond_3

    const-wide/16 v8, 0x0

    cmpl-double v4, v6, v8

    if-lez v4, :cond_3

    iget-object v4, v3, Lagd$b;->k:Landroid/widget/TextView;

    invoke-virtual {v2}, Laje;->G()D

    move-result-wide v6

    double-to-int v6, v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    invoke-virtual {v2}, Laje;->R()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, v3, Lagd$b;->j:Landroid/widget/ProgressBar;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v2, v3, Lagd$b;->i:Lcom/snapchat/android/ui/FeedReplayAnimationView;

    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Lcom/snapchat/android/ui/FeedReplayAnimationView;->setVisibility(I)V

    :cond_4
    move-object v2, v1

    .line 145
    :goto_2
    iget-object v1, v3, Lagd$b;->a:Landroid/widget/TextView;

    invoke-static {v0}, Lym;->a(Lcom/snapchat/android/model/chat/ChatConversation;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-boolean v1, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mHasUnreleasedReceivedChats:Z

    if-nez v1, :cond_5

    iget-boolean v1, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mHasUnviewedReceivedSnaps:Z

    if-nez v1, :cond_5

    iget-boolean v1, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mHasUnviewedCash:Z

    if-nez v1, :cond_5

    instance-of v1, v2, Laje;

    if-eqz v1, :cond_b

    move-object v1, v2

    check-cast v1, Laje;

    invoke-virtual {v1}, Laje;->D()Z

    move-result v1

    if-eqz v1, :cond_b

    move-object v1, v2

    check-cast v1, Laje;

    invoke-virtual {v1}, Laje;->G()D

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmpl-double v1, v6, v8

    if-lez v1, :cond_b

    :cond_5
    iget-object v1, v3, Lagd$b;->a:Landroid/widget/TextView;

    const/4 v4, 0x0

    const/4 v6, 0x1

    invoke-virtual {v1, v4, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    :goto_3
    invoke-virtual {p0}, Lagd;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, v3, Lagd$b;->f:Lcom/snapchat/android/ui/EmojiTextView;

    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/ChatConversation;->i()Ljava/lang/String;

    move-result-object v8

    iget-object v1, p0, Lagd;->i:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lajv;

    const/4 v4, 0x0

    if-eqz v1, :cond_1c

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1c

    invoke-virtual {v1, v8}, Lajv;->a(Ljava/lang/String;)Lcom/snapchat/android/model/Friend;

    move-result-object v1

    if-eqz v1, :cond_1c

    invoke-virtual {v1}, Lcom/snapchat/android/model/Friend;->p()Z

    move-result v8

    if-nez v8, :cond_1c

    invoke-virtual {v1}, Lcom/snapchat/android/model/Friend;->u()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/snapchat/android/ui/EmojiTextView;->setText(Ljava/lang/CharSequence;)V

    :goto_4
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_c

    const/16 v1, 0x8

    :goto_5
    invoke-virtual {v7, v1}, Lcom/snapchat/android/ui/EmojiTextView;->setVisibility(I)V

    if-eqz v5, :cond_6

    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/ChatConversation;->D()Z

    move-result v1

    if-nez v1, :cond_8

    :cond_6
    iget-object v1, v3, Lagd$b;->d:Landroid/animation/Animator;

    if-eqz v1, :cond_7

    const/4 v1, 0x1

    iput-boolean v1, v3, Lagd$b;->e:Z

    iget-object v1, v3, Lagd$b;->d:Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    :cond_7
    iget-object v1, v3, Lagd$b;->a:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->clearAnimation()V

    iget-object v1, v3, Lagd$b;->b:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->clearAnimation()V

    :cond_8
    iget-object v1, v3, Lagd$b;->b:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f08004e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lagd;->h:Lagd$a;

    invoke-interface {v1}, Lagd$a;->a()Z

    move-result v1

    if-eqz v1, :cond_12

    iget-object v2, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mTheirUsername:Ljava/lang/String;

    iget-object v1, p0, Lagd;->i:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lajv;

    invoke-static {v2, v1}, Latm;->d(Ljava/lang/String;Lajv;)Z

    move-result v1

    if-eqz v1, :cond_f

    iget-boolean v1, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mIsStub:Z

    if-eqz v1, :cond_d

    iget-object v1, v3, Lagd$b;->b:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mTheirUsername:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " - "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v4, 0x7f0c028f

    invoke-virtual {v6, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_6
    iget-object v1, v3, Lagd$b;->b:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 147
    :goto_7
    iget-object v1, v3, Lagd$b;->h:Landroid/widget/ImageView;

    iget-boolean v0, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mHasUnreleasedReceivedChats:Z

    if-eqz v0, :cond_1b

    const v0, 0x7f020029

    :goto_8
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 152
    iget-object v0, v3, Lagd$b;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, v3, Lagd$b;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getAlpha()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 153
    iget-object v0, v3, Lagd$b;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->clearAnimation()V

    .line 154
    iget-object v0, v3, Lagd$b;->b:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 155
    iget-object v0, v3, Lagd$b;->b:Landroid/widget/TextView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    goto/16 :goto_1

    .line 144
    :cond_9
    if-eqz v1, :cond_a

    invoke-interface {v1}, Lcom/snapchat/android/model/chat/ChatFeedItem;->N()Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v2, v3, Lagd$b;->j:Landroid/widget/ProgressBar;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v2, v3, Lagd$b;->i:Lcom/snapchat/android/ui/FeedReplayAnimationView;

    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Lcom/snapchat/android/ui/FeedReplayAnimationView;->setVisibility(I)V

    :cond_a
    move-object v2, v1

    goto/16 :goto_2

    .line 145
    :cond_b
    iget-object v1, v3, Lagd$b;->a:Landroid/widget/TextView;

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-virtual {v1, v4, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    goto/16 :goto_3

    :cond_c
    const/4 v1, 0x0

    goto/16 :goto_5

    :cond_d
    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/ChatConversation;->x()J

    move-result-wide v4

    iget-object v1, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mTheirUsername:Ljava/lang/String;

    const-wide/16 v8, 0x0

    cmp-long v2, v4, v8

    if-lez v2, :cond_e

    iget-object v2, v3, Lagd$b;->b:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, " - "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v6, v4, v5}, Lata;->b(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    :cond_e
    iget-object v2, v3, Lagd$b;->b:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    :cond_f
    iget-boolean v1, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mIsStub:Z

    if-eqz v1, :cond_10

    iget-object v1, v3, Lagd$b;->b:Landroid/widget/TextView;

    const v2, 0x7f0c028f

    invoke-virtual {v6, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    :cond_10
    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/ChatConversation;->x()J

    move-result-wide v4

    const-wide/16 v8, 0x0

    cmp-long v1, v4, v8

    if-lez v1, :cond_11

    iget-object v1, v3, Lagd$b;->b:Landroid/widget/TextView;

    invoke-static {v6, v4, v5}, Lata;->b(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    :cond_11
    iget-object v1, v3, Lagd$b;->b:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    :cond_12
    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/ChatConversation;->D()Z

    move-result v1

    if-eqz v1, :cond_13

    if-nez v2, :cond_14

    invoke-virtual {v3}, Lagd$b;->b()V

    goto/16 :goto_7

    :cond_13
    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/ChatConversation;->A()Z

    move-result v1

    if-eqz v1, :cond_14

    iget-object v1, v3, Lagd$b;->b:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080049

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_14
    const-string v1, ""

    if-eqz v2, :cond_15

    invoke-interface {v2}, Lcom/snapchat/android/model/chat/ChatFeedItem;->a()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2}, Lcom/snapchat/android/model/chat/ChatFeedItem;->c()Z

    move-result v1

    if-eqz v1, :cond_16

    iget-object v1, v3, Lagd$b;->b:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    move-object v1, v4

    :cond_15
    :goto_9
    invoke-virtual {p0}, Lagd;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/ChatConversation;->x()J

    move-result-wide v4

    invoke-static {v2, v4, v5, v1}, Lati;->a(Landroid/content/Context;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v3, Lagd$b;->b:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    :cond_16
    instance-of v1, v2, Laje;

    if-eqz v1, :cond_1a

    check-cast v2, Laje;

    invoke-virtual {v2}, Laje;->z()Z

    move-result v1

    if-eqz v1, :cond_1a

    iget-object v1, v3, Lagd$b;->d:Landroid/animation/Animator;

    if-eqz v1, :cond_17

    iget-object v1, v3, Lagd$b;->d:Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->isStarted()Z

    move-result v1

    if-nez v1, :cond_1a

    :cond_17
    iget-object v1, p0, Lagd;->a:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_18

    iget-object v1, p0, Lagd;->a:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    cmp-long v1, v6, v8

    if-gtz v1, :cond_18

    iget-object v1, p0, Lagd;->h:Lagd$a;

    invoke-interface {v1}, Lagd$a;->h_()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-virtual {v3}, Lagd$b;->b()V

    move-object v1, v4

    goto :goto_9

    :cond_18
    invoke-virtual {v3}, Lagd$b;->a()V

    iget-object v1, p0, Lagd;->h:Lagd$a;

    invoke-interface {v1}, Lagd$a;->h_()Z

    move-result v1

    if-eqz v1, :cond_1a

    iget-object v1, p0, Lagd;->a:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_19

    const-wide/16 v6, 0xbb8

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    add-long/2addr v6, v8

    iget-object v1, p0, Lagd;->a:Ljava/util/Map;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_19
    iget-object v1, p0, Lagd;->a:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iget-object v1, v3, Lagd$b;->b:Landroid/widget/TextView;

    invoke-static {v1}, Lavh;->a(Landroid/view/View;)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iget-object v2, v3, Lagd$b;->a:Landroid/widget/TextView;

    const-string v5, "translationY"

    const/4 v8, 0x1

    new-array v8, v8, [F

    const/4 v9, 0x0

    aput v1, v8, v9

    invoke-static {v2, v5, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iget-object v5, v3, Lagd$b;->b:Landroid/widget/TextView;

    const-string v8, "alpha"

    const/4 v9, 0x1

    new-array v9, v9, [F

    const/4 v10, 0x0

    const/4 v11, 0x0

    aput v11, v9, v10

    invoke-static {v5, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    const-wide/16 v8, 0x12c

    invoke-virtual {v5, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    const-wide/16 v8, 0x12c

    invoke-virtual {v1, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v8, Lagd$1;

    invoke-direct {v8, p0, v3}, Lagd$1;-><init>(Lagd;Lagd$b;)V

    invoke-virtual {v2, v8}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v2, v5}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iput-object v2, v3, Lagd$b;->d:Landroid/animation/Animator;

    iget-object v1, v3, Lagd$b;->d:Landroid/animation/Animator;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long/2addr v6, v8

    invoke-virtual {v1, v6, v7}, Landroid/animation/Animator;->setStartDelay(J)V

    iget-object v1, v3, Lagd$b;->d:Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->start()V

    :cond_1a
    move-object v1, v4

    goto/16 :goto_9

    .line 147
    :cond_1b
    const v0, 0x7f020028

    goto/16 :goto_8

    :cond_1c
    move-object v1, v4

    goto/16 :goto_4

    :cond_1d
    move-object v2, v1

    goto/16 :goto_2
.end method
