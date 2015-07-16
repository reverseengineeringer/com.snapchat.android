.class public final Lvs;
.super Lvt;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lvt",
        "<",
        "Lcom/snapchat/android/model/chat/ChatConversation;",
        ">;"
    }
.end annotation


# instance fields
.field public final k:Landroid/view/View;

.field public final l:Landroid/widget/TextView;

.field public final m:Landroid/widget/TextView;

.field public n:Lcom/snapchat/android/model/chat/ChatConversation;

.field public o:Laqg;

.field private final q:Lcom/snapchat/android/ui/EmojiTextView;

.field private final r:Landroid/widget/ImageView;

.field private final s:Lcom/snapchat/android/ui/FeedReplayAnimationView;

.field private final t:Landroid/widget/ProgressBar;

.field private final u:Landroid/widget/TextView;

.field private final v:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lakp;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lvt;-><init>(Landroid/view/View;)V

    .line 56
    const v0, 0x7f0a0228

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lvs;->k:Landroid/view/View;

    .line 57
    const v0, 0x7f0a0197

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lvs;->l:Landroid/widget/TextView;

    .line 58
    const v0, 0x7f0a022c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lvs;->m:Landroid/widget/TextView;

    .line 59
    const v0, 0x7f0a0045

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ui/EmojiTextView;

    iput-object v0, p0, Lvs;->q:Lcom/snapchat/android/ui/EmojiTextView;

    .line 60
    const v0, 0x7f0a0227

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lvs;->r:Landroid/widget/ImageView;

    .line 61
    const v0, 0x7f0a0229

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ui/FeedReplayAnimationView;

    iput-object v0, p0, Lvs;->s:Lcom/snapchat/android/ui/FeedReplayAnimationView;

    .line 62
    const v0, 0x7f0a022a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lvs;->t:Landroid/widget/ProgressBar;

    .line 63
    const v0, 0x7f0a022d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lvs;->u:Landroid/widget/TextView;

    .line 65
    sget-object v0, Lakp;->UNSAFE_USER_PROVIDER:Ljavax/inject/Provider;

    iput-object v0, p0, Lvs;->v:Ljavax/inject/Provider;

    .line 66
    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/chat/ChatFeedItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    const-wide/16 v4, 0x0

    const/4 v8, 0x0

    const/4 v12, 0x1

    const/4 v7, 0x0

    .line 246
    iget-object v0, p0, Lvs;->m:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v9

    .line 251
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 252
    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/chat/ChatFeedItem;

    invoke-interface {v0}, Lcom/snapchat/android/model/chat/ChatFeedItem;->P()Z

    move-result v6

    .line 253
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v12, :cond_0

    .line 254
    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/chat/ChatFeedItem;

    iget-object v1, p0, Lvs;->n:Lcom/snapchat/android/model/chat/ChatConversation;

    invoke-interface {v0, v1}, Lcom/snapchat/android/model/chat/ChatFeedItem;->c(Lcom/snapchat/android/model/chat/ChatConversation;)J

    move-result-wide v2

    .line 255
    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/chat/ChatFeedItem;

    invoke-interface {v0}, Lcom/snapchat/android/model/chat/ChatFeedItem;->a()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    move v0, v6

    .line 269
    :goto_0
    const-string v6, ""

    cmp-long v4, v2, v4

    if-lez v4, :cond_6

    invoke-static {v9, v2, v3}, Latz;->b(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    if-eqz v1, :cond_2

    .line 270
    :goto_2
    iget-object v2, p0, Lvs;->m:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 276
    if-eqz v0, :cond_5

    .line 277
    iget-object v0, p0, Lvs;->m:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08004a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 281
    :goto_3
    iget-object v0, p0, Lvs;->m:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 282
    return-void

    .line 260
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move-wide v2, v4

    :goto_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/chat/ChatFeedItem;

    .line 261
    iget-object v1, p0, Lvs;->n:Lcom/snapchat/android/model/chat/ChatConversation;

    invoke-interface {v0, v1}, Lcom/snapchat/android/model/chat/ChatFeedItem;->c(Lcom/snapchat/android/model/chat/ChatConversation;)J

    move-result-wide v0

    .line 262
    cmp-long v11, v0, v2

    if-lez v11, :cond_7

    :goto_5
    move-wide v2, v0

    .line 265
    goto :goto_4

    .line 266
    :cond_1
    iget-object v0, p0, Lvs;->m:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c028f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    move v0, v6

    goto :goto_0

    .line 269
    :cond_2
    const-string v1, ""

    goto :goto_2

    :cond_3
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    move-object v1, v2

    goto :goto_2

    :cond_4
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v2, v3, v7

    aput-object v1, v3, v12

    const v1, 0x7f0c0131

    invoke-static {v8, v1, v3}, Lauv;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 279
    :cond_5
    iget-object v0, p0, Lvs;->m:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_3

    :cond_6
    move-object v2, v6

    goto/16 :goto_1

    :cond_7
    move-wide v0, v2

    goto :goto_5

    :cond_8
    move v0, v7

    move-wide v2, v4

    move-object v1, v8

    goto/16 :goto_0
.end method


# virtual methods
.method public final a(Lvo;)V
    .locals 1

    .prologue
    .line 118
    iget-object v0, p1, Lvo;->a:Larm;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lvo;->a:Larm;

    invoke-interface {v0, p0}, Larm;->a(Landroid/support/v7/widget/RecyclerView$s;)V

    .line 119
    :cond_0
    return-void
.end method

.method public final synthetic a(Lvp;)V
    .locals 12

    .prologue
    const/16 v3, 0x8

    const/4 v11, 0x4

    const/4 v10, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 39
    check-cast p1, Lcom/snapchat/android/model/chat/ChatConversation;

    iput-object p1, p0, Lvs;->n:Lcom/snapchat/android/model/chat/ChatConversation;

    iget-object v0, p0, Lvs;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08005d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lvs;->b(I)V

    iget-object v5, p1, Lcom/snapchat/android/model/chat/ChatConversation;->mItemsForFeedIcon:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;->MOST_RECENT:Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;

    move-object v1, v0

    :goto_0
    iget-object v0, p0, Lvs;->s:Lcom/snapchat/android/ui/FeedReplayAnimationView;

    iget-object v6, p0, Lvs;->n:Lcom/snapchat/android/model/chat/ChatConversation;

    invoke-virtual {v0, v5, v6}, Lcom/snapchat/android/ui/FeedReplayAnimationView;->setDisplayedIcon(Ljava/util/List;Lcom/snapchat/android/model/chat/ChatConversation;)V

    iget-object v0, p0, Lvs;->s:Lcom/snapchat/android/ui/FeedReplayAnimationView;

    invoke-virtual {v0, v4}, Lcom/snapchat/android/ui/FeedReplayAnimationView;->setVisibility(I)V

    iget-object v0, p0, Lvs;->t:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lvs;->u:Landroid/widget/TextView;

    const-string v6, ""

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v10, :cond_1

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/chat/ChatFeedItem;

    instance-of v6, v0, Laka;

    if-eqz v6, :cond_4

    check-cast v0, Laka;

    invoke-virtual {v0}, Laka;->H()D

    move-result-wide v6

    invoke-virtual {v0}, Laka;->E()Z

    move-result v8

    if-eqz v8, :cond_0

    const-wide/16 v8, 0x0

    cmpl-double v6, v6, v8

    if-lez v6, :cond_0

    iget-object v6, p0, Lvs;->u:Landroid/widget/TextView;

    invoke-virtual {v0}, Laka;->H()D

    move-result-wide v8

    double-to-int v7, v8

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-virtual {v0}, Laka;->S()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lvs;->t:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lvs;->s:Lcom/snapchat/android/ui/FeedReplayAnimationView;

    invoke-virtual {v0, v11}, Lcom/snapchat/android/ui/FeedReplayAnimationView;->setVisibility(I)V

    :cond_1
    :goto_1
    iget-object v0, p0, Lvs;->l:Landroid/widget/TextView;

    iget-object v6, p0, Lvs;->n:Lcom/snapchat/android/model/chat/ChatConversation;

    invoke-static {v6}, Lzi;->a(Lcom/snapchat/android/model/chat/ChatConversation;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lvs;->n:Lcom/snapchat/android/model/chat/ChatConversation;

    iget-boolean v0, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mHasUnreleasedReceivedChats:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lvs;->n:Lcom/snapchat/android/model/chat/ChatConversation;

    iget-boolean v0, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mHasUnviewedReceivedSnaps:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lvs;->n:Lcom/snapchat/android/model/chat/ChatConversation;

    iget-boolean v0, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mHasUnviewedCash:Z

    if-nez v0, :cond_2

    sget-object v0, Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;->NEW:Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;

    if-eq v1, v0, :cond_2

    sget-object v0, Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;->CURRENTLY_TICKING:Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;

    if-eq v1, v0, :cond_2

    sget-object v0, Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;->UNOPENED_SNAP_AVAILABLE_NEXT:Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;

    if-ne v1, v0, :cond_5

    :cond_2
    iget-object v0, p0, Lvs;->l:Landroid/widget/TextView;

    invoke-virtual {v0, v2, v10}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    :goto_2
    iget-boolean v0, p0, Lvs;->p:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lvs;->m:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v0, p0, Lvs;->n:Lcom/snapchat/android/model/chat/ChatConversation;

    iget-object v5, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mTheirUsername:Ljava/lang/String;

    iget-object v0, p0, Lvs;->v:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lakp;

    invoke-static {v5, v0}, Lauk;->d(Ljava/lang/String;Lakp;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lvs;->n:Lcom/snapchat/android/model/chat/ChatConversation;

    iget-boolean v0, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mIsStub:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lvs;->m:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lvs;->n:Lcom/snapchat/android/model/chat/ChatConversation;

    iget-object v6, v6, Lcom/snapchat/android/model/chat/ChatConversation;->mTheirUsername:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const v6, 0x7f0c028f

    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_3
    iget-object v0, p0, Lvs;->m:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_4
    iget-object v0, p0, Lvs;->n:Lcom/snapchat/android/model/chat/ChatConversation;

    iget-object v1, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mTheirUsername:Ljava/lang/String;

    iget-object v0, p0, Lvs;->v:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lakp;

    if-eqz v0, :cond_e

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_e

    invoke-virtual {v0, v1}, Lakp;->a(Ljava/lang/String;)Lcom/snapchat/android/model/Friend;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lcom/snapchat/android/model/Friend;->k()Z

    move-result v1

    if-nez v1, :cond_e

    invoke-virtual {v0}, Lcom/snapchat/android/model/Friend;->t()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lvs;->q:Lcom/snapchat/android/ui/EmojiTextView;

    invoke-virtual {v1, v0}, Lcom/snapchat/android/ui/EmojiTextView;->setText(Ljava/lang/CharSequence;)V

    :goto_5
    iget-object v1, p0, Lvs;->q:Lcom/snapchat/android/ui/EmojiTextView;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    move v0, v3

    :goto_6
    invoke-virtual {v1, v0}, Lcom/snapchat/android/ui/EmojiTextView;->setVisibility(I)V

    iget-object v1, p0, Lvs;->r:Landroid/widget/ImageView;

    iget-object v0, p0, Lvs;->n:Lcom/snapchat/android/model/chat/ChatConversation;

    iget-boolean v0, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mHasUnreleasedReceivedChats:Z

    if-eqz v0, :cond_d

    const v0, 0x7f020029

    :goto_7
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    return-void

    :cond_3
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/chat/ChatFeedItem;

    iget-object v1, p0, Lvs;->n:Lcom/snapchat/android/model/chat/ChatConversation;

    invoke-interface {v0, v1}, Lcom/snapchat/android/model/chat/ChatFeedItem;->b(Lcom/snapchat/android/model/chat/ChatConversation;)I

    move-result v0

    invoke-static {}, Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;->values()[Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;

    move-result-object v1

    aget-object v0, v1, v0

    move-object v1, v0

    goto/16 :goto_0

    :cond_4
    invoke-interface {v0}, Lcom/snapchat/android/model/chat/ChatFeedItem;->O()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lvs;->t:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lvs;->s:Lcom/snapchat/android/ui/FeedReplayAnimationView;

    invoke-virtual {v0, v11}, Lcom/snapchat/android/ui/FeedReplayAnimationView;->setVisibility(I)V

    goto/16 :goto_1

    :cond_5
    iget-object v0, p0, Lvs;->l:Landroid/widget/TextView;

    invoke-virtual {v0, v2, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    goto/16 :goto_2

    :cond_6
    iget-object v0, p0, Lvs;->n:Lcom/snapchat/android/model/chat/ChatConversation;

    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/ChatConversation;->y()J

    move-result-wide v6

    iget-object v0, p0, Lvs;->n:Lcom/snapchat/android/model/chat/ChatConversation;

    iget-object v0, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mTheirUsername:Ljava/lang/String;

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-lez v5, :cond_7

    iget-object v5, p0, Lvs;->m:Landroid/widget/TextView;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, " - "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v1, v6, v7}, Latz;->b(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    :cond_7
    iget-object v1, p0, Lvs;->m:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    :cond_8
    iget-object v0, p0, Lvs;->n:Lcom/snapchat/android/model/chat/ChatConversation;

    iget-boolean v0, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mIsStub:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lvs;->m:Landroid/widget/TextView;

    const v5, 0x7f0c028f

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    :cond_9
    iget-object v0, p0, Lvs;->n:Lcom/snapchat/android/model/chat/ChatConversation;

    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/ChatConversation;->y()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v0, v6, v8

    if-lez v0, :cond_a

    iget-object v0, p0, Lvs;->m:Landroid/widget/TextView;

    invoke-static {v1, v6, v7}, Latz;->b(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    :cond_a
    iget-object v0, p0, Lvs;->m:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    :cond_b
    invoke-direct {p0, v5}, Lvs;->a(Ljava/util/List;)V

    goto/16 :goto_4

    :cond_c
    move v0, v4

    goto/16 :goto_6

    :cond_d
    const v0, 0x7f020028

    goto/16 :goto_7

    :cond_e
    move-object v0, v2

    goto/16 :goto_5
.end method

.method public final a(Lwa;)V
    .locals 0

    .prologue
    .line 164
    invoke-interface {p1, p0}, Lwa;->a(Lvs;)V

    .line 165
    return-void
.end method

.method public final a(Lwa;Landroid/view/MotionEvent;)V
    .locals 0

    .prologue
    .line 154
    invoke-interface {p1, p0, p2}, Lwa;->a(Lvs;Landroid/view/MotionEvent;)V

    .line 155
    return-void
.end method

.method public final a(Lwa;Z)V
    .locals 0

    .prologue
    .line 184
    invoke-interface {p1, p0, p2}, Lwa;->a(Lvs;Z)V

    .line 185
    return-void
.end method

.method public final a(Lwa;FFFF)Z
    .locals 6

    .prologue
    .line 159
    move-object v0, p1

    move-object v1, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lwa;->a(Lvs;FFFF)Z

    move-result v0

    return v0
.end method

.method public final b(Lwa;)F
    .locals 1

    .prologue
    .line 169
    invoke-interface {p1, p0}, Lwa;->b(Lvs;)F

    move-result v0

    return v0
.end method

.method public final b(I)V
    .locals 1

    .prologue
    .line 332
    iget-object v0, p0, Lvs;->k:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 333
    return-void
.end method

.method public final c(Lwa;)Z
    .locals 1

    .prologue
    .line 174
    invoke-interface {p1, p0}, Lwa;->c(Lvs;)Z

    move-result v0

    return v0
.end method

.method public final d(Lwa;)I
    .locals 1

    .prologue
    .line 179
    invoke-interface {p1, p0}, Lwa;->d(Lvs;)I

    move-result v0

    return v0
.end method

.method public final e(Lwa;)V
    .locals 0

    .prologue
    .line 194
    invoke-interface {p1, p0}, Lwa;->e(Lvs;)V

    .line 195
    return-void
.end method

.method public final f(Lwa;)V
    .locals 0

    .prologue
    .line 199
    invoke-interface {p1}, Lwa;->i()V

    .line 200
    return-void
.end method

.method public final g(Lwa;)V
    .locals 0

    .prologue
    .line 204
    invoke-interface {p1, p0}, Lwa;->f(Lvs;)V

    .line 205
    return-void
.end method

.method public final q()V
    .locals 2

    .prologue
    .line 142
    iget-object v0, p0, Lvs;->l:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 143
    iget-object v0, p0, Lvs;->m:Landroid/widget/TextView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 144
    iget-object v0, p0, Lvs;->m:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 145
    return-void
.end method

.method public final r()V
    .locals 2

    .prologue
    .line 148
    iget-object v0, p0, Lvs;->l:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 149
    iget-object v0, p0, Lvs;->m:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 150
    return-void
.end method

.method public final bridge synthetic s()Lvp;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lvs;->n:Lcom/snapchat/android/model/chat/ChatConversation;

    return-object v0
.end method
