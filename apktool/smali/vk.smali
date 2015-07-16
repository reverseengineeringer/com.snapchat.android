.class public final Lvk;
.super Lvn;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lvn",
        "<",
        "Lvs;",
        ">;"
    }
.end annotation


# instance fields
.field final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Laqg;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lbga;

.field private final c:Lbhk;

.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lbga;)V
    .locals 1

    .prologue
    .line 39
    new-instance v0, Lbhk;

    invoke-direct {v0}, Lbhk;-><init>()V

    invoke-direct {p0, p1, v0}, Lvk;-><init>(Lbga;Lbhk;)V

    .line 40
    return-void
.end method

.method private constructor <init>(Lbga;Lbhk;)V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Lvn;-><init>()V

    .line 35
    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lvk;->d:Ljava/util/Map;

    .line 36
    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lvk;->a:Ljava/util/Map;

    .line 44
    iput-object p1, p0, Lvk;->b:Lbga;

    .line 45
    iput-object p2, p0, Lvk;->c:Lbhk;

    .line 46
    return-void
.end method

.method private a(Lvs;)V
    .locals 10

    .prologue
    const-wide/16 v8, 0xbb8

    .line 108
    iget-object v0, p1, Lvs;->n:Lcom/snapchat/android/model/chat/ChatConversation;

    iget-object v5, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mId:Ljava/lang/String;

    .line 109
    iget-object v2, p1, Lvs;->l:Landroid/widget/TextView;

    .line 110
    iget-object v3, p1, Lvs;->m:Landroid/widget/TextView;

    .line 111
    iget-object v0, p0, Lvk;->d:Ljava/util/Map;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    add-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    iget-object v0, p0, Lvk;->a:Ljava/util/Map;

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laqg;

    .line 114
    if-eqz v0, :cond_0

    iget-object v1, v0, Laqg;->a:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 115
    invoke-virtual {v0}, Laqg;->c()V

    .line 116
    invoke-virtual {p1}, Lvs;->q()V

    .line 117
    new-instance v0, Laqh;

    invoke-direct {v0, v2, v3, v8, v9}, Laqh;-><init>(Landroid/view/View;Landroid/view/View;J)V

    .line 119
    iput-object v0, p1, Lvs;->o:Laqg;

    .line 120
    iget-object v1, p0, Lvk;->a:Ljava/util/Map;

    invoke-interface {v1, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    iget-object v0, v0, Laqg;->a:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 138
    :goto_0
    return-void

    .line 123
    :cond_0
    new-instance v6, Laqi;

    invoke-direct {v6, v2, v3}, Laqi;-><init>(Landroid/view/View;Landroid/view/View;)V

    .line 124
    new-instance v0, Lvk$1;

    move-object v1, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lvk$1;-><init>(Lvk;Landroid/widget/TextView;Landroid/widget/TextView;Lvs;Ljava/lang/String;)V

    iget-object v1, v6, Laqg;->a:Landroid/animation/AnimatorSet;

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 134
    iput-object v6, p1, Lvs;->o:Laqg;

    .line 135
    iget-object v0, p0, Lvk;->a:Ljava/util/Map;

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    iget-object v0, v6, Laqg;->a:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0
.end method

.method private b(Lvs;)V
    .locals 10

    .prologue
    .line 147
    iget-object v0, p1, Lvs;->n:Lcom/snapchat/android/model/chat/ChatConversation;

    iget-object v2, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mId:Ljava/lang/String;

    .line 148
    iget-object v0, p0, Lvk;->d:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 149
    if-eqz v0, :cond_0

    .line 150
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 151
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v1, v4, v6

    if-gez v1, :cond_1

    .line 152
    invoke-virtual {p1}, Lvs;->r()V

    .line 168
    :cond_0
    :goto_0
    return-void

    .line 154
    :cond_1
    iget-object v4, p1, Lvs;->l:Landroid/widget/TextView;

    .line 155
    iget-object v5, p1, Lvs;->m:Landroid/widget/TextView;

    .line 156
    iget-object v1, p0, Lvk;->a:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laqg;

    .line 157
    if-eqz v1, :cond_2

    .line 158
    invoke-virtual {v1}, Laqg;->c()V

    .line 160
    :cond_2
    invoke-virtual {p1}, Lvs;->q()V

    .line 161
    new-instance v1, Laqh;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    sub-long/2addr v6, v8

    invoke-direct {v1, v4, v5, v6, v7}, Laqh;-><init>(Landroid/view/View;Landroid/view/View;J)V

    .line 163
    iput-object v1, p1, Lvs;->o:Laqg;

    .line 164
    iget-object v0, p0, Lvk;->a:Ljava/util/Map;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    iget-object v0, v1, Laqg;->a:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lvk;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 105
    return-void
.end method

.method public final synthetic a(Landroid/support/v7/widget/RecyclerView$s;)V
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 30
    check-cast p1, Lvs;

    iget-object v1, p1, Lvs;->m:Landroid/widget/TextView;

    iget-object v0, p1, Lvs;->o:Laqg;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Laqg;->c()V

    const/4 v0, 0x0

    iput-object v0, p1, Lvs;->o:Laqg;

    :cond_0
    invoke-virtual {p1}, Lvs;->t()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p1, Lvs;->n:Lcom/snapchat/android/model/chat/ChatConversation;

    iget-object v2, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mItemsForFeedIcon:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mId:Ljava/lang/String;

    iget-object v0, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mItemsForFeedIcon:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/chat/ChatFeedItem;

    invoke-interface {v0}, Lcom/snapchat/android/model/chat/ChatFeedItem;->c()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_2
    instance-of v1, v0, Laka;

    if-eqz v1, :cond_5

    check-cast v0, Laka;

    invoke-virtual {v0}, Laka;->A()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lvk;->b:Lbga;

    invoke-interface {v0}, Lbga;->I()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lvk;->d:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lvk;->d:Ljava/util/Map;

    const-wide/16 v4, 0xbb8

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    add-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    invoke-direct {p0, p1}, Lvk;->b(Lvs;)V

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lvs;->q()V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lvk;->b:Lbga;

    invoke-interface {v0}, Lbga;->I()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lvk;->d:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-direct {p0, p1}, Lvk;->b(Lvs;)V

    goto :goto_0

    :cond_6
    invoke-virtual {p1}, Lvs;->r()V

    goto :goto_0
.end method

.method public final synthetic a(Lvt;)V
    .locals 1

    .prologue
    .line 30
    check-cast p1, Lvs;

    invoke-virtual {p1}, Lvs;->t()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lvk;->a(Lvs;)V

    :cond_0
    return-void
.end method

.method public final synthetic b(Lvt;)V
    .locals 1

    .prologue
    .line 30
    check-cast p1, Lvs;

    invoke-virtual {p1}, Lvs;->t()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lvk;->a(Lvs;)V

    :cond_0
    return-void
.end method
