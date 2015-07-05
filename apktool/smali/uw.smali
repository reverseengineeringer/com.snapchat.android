.class public final Luw;
.super Lux;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lux",
        "<",
        "Lcom/snapchat/android/model/chat/ChatConversation;",
        ">;"
    }
.end annotation


# instance fields
.field public k:Landroid/view/View;

.field public l:Lcom/snapchat/android/model/chat/ChatConversation;

.field private n:Landroid/widget/TextView;

.field private o:Landroid/widget/TextView;

.field private p:Lcom/snapchat/android/ui/EmojiTextView;

.field private q:Landroid/widget/ImageView;

.field private r:Lcom/snapchat/android/ui/FeedReplayAnimationView;

.field private s:Landroid/widget/ProgressBar;

.field private t:Landroid/widget/TextView;

.field private final u:Lyn;

.field private final v:Ljavax/inject/Provider;
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
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lux;-><init>(Landroid/view/View;)V

    .line 54
    const v0, 0x7f0a022a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Luw;->k:Landroid/view/View;

    .line 55
    const v0, 0x7f0a0197

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Luw;->n:Landroid/widget/TextView;

    .line 56
    const v0, 0x7f0a022e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Luw;->o:Landroid/widget/TextView;

    .line 57
    const v0, 0x7f0a0044

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ui/EmojiTextView;

    iput-object v0, p0, Luw;->p:Lcom/snapchat/android/ui/EmojiTextView;

    .line 58
    const v0, 0x7f0a0229

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Luw;->q:Landroid/widget/ImageView;

    .line 59
    const v0, 0x7f0a022b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ui/FeedReplayAnimationView;

    iput-object v0, p0, Luw;->r:Lcom/snapchat/android/ui/FeedReplayAnimationView;

    .line 60
    const v0, 0x7f0a022c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Luw;->s:Landroid/widget/ProgressBar;

    .line 61
    const v0, 0x7f0a022f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Luw;->t:Landroid/widget/TextView;

    .line 63
    invoke-static {}, Lyn;->a()Lyn;

    move-result-object v0

    iput-object v0, p0, Luw;->u:Lyn;

    .line 64
    sget-object v0, Lajv;->UNSAFE_USER_PROVIDER:Ljavax/inject/Provider;

    iput-object v0, p0, Luw;->v:Ljavax/inject/Provider;

    .line 65
    return-void
.end method


# virtual methods
.method public final synthetic a(Lut;)V
    .locals 11

    .prologue
    const/16 v3, 0x8

    const/4 v10, 0x4

    const-wide/16 v8, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 37
    check-cast p1, Lcom/snapchat/android/model/chat/ChatConversation;

    iput-object p1, p0, Luw;->l:Lcom/snapchat/android/model/chat/ChatConversation;

    iget-object v0, p0, Luw;->u:Lyn;

    iget-object v1, p0, Luw;->l:Lcom/snapchat/android/model/chat/ChatConversation;

    invoke-virtual {v0, v1, v4}, Lyn;->a(Lcom/snapchat/android/model/chat/ChatConversation;Z)V

    iget-object v0, p0, Luw;->l:Lcom/snapchat/android/model/chat/ChatConversation;

    iget-object v0, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mItemsForFeedIcon:Ljava/util/List;

    iget-object v1, p0, Luw;->r:Lcom/snapchat/android/ui/FeedReplayAnimationView;

    iget-object v5, p0, Luw;->l:Lcom/snapchat/android/model/chat/ChatConversation;

    invoke-virtual {v1, v0, v5}, Lcom/snapchat/android/ui/FeedReplayAnimationView;->setDisplayedIcon(Ljava/util/List;Lcom/snapchat/android/model/chat/ChatConversation;)V

    iget-object v1, p0, Luw;->r:Lcom/snapchat/android/ui/FeedReplayAnimationView;

    invoke-virtual {v1, v4}, Lcom/snapchat/android/ui/FeedReplayAnimationView;->setVisibility(I)V

    iget-object v1, p0, Luw;->s:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v1, p0, Luw;->t:Landroid/widget/TextView;

    const-string v5, ""

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_11

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/chat/ChatFeedItem;

    instance-of v1, v0, Laje;

    if-eqz v1, :cond_4

    move-object v1, v0

    check-cast v1, Laje;

    invoke-virtual {v1}, Laje;->G()D

    move-result-wide v6

    invoke-virtual {v1}, Laje;->D()Z

    move-result v5

    if-eqz v5, :cond_0

    cmpl-double v5, v6, v8

    if-lez v5, :cond_0

    iget-object v5, p0, Luw;->t:Landroid/widget/TextView;

    invoke-virtual {v1}, Laje;->G()D

    move-result-wide v6

    double-to-int v6, v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-virtual {v1}, Laje;->R()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Luw;->s:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v1, p0, Luw;->r:Lcom/snapchat/android/ui/FeedReplayAnimationView;

    invoke-virtual {v1, v10}, Lcom/snapchat/android/ui/FeedReplayAnimationView;->setVisibility(I)V

    :cond_1
    move-object v1, v0

    :goto_0
    iget-object v0, p0, Luw;->n:Landroid/widget/TextView;

    iget-object v5, p0, Luw;->l:Lcom/snapchat/android/model/chat/ChatConversation;

    invoke-static {v5}, Lym;->a(Lcom/snapchat/android/model/chat/ChatConversation;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Luw;->l:Lcom/snapchat/android/model/chat/ChatConversation;

    iget-boolean v0, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mHasUnreleasedReceivedChats:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Luw;->l:Lcom/snapchat/android/model/chat/ChatConversation;

    iget-boolean v0, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mHasUnviewedReceivedSnaps:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Luw;->l:Lcom/snapchat/android/model/chat/ChatConversation;

    iget-boolean v0, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mHasUnviewedCash:Z

    if-nez v0, :cond_2

    instance-of v0, v1, Laje;

    if-eqz v0, :cond_6

    move-object v0, v1

    check-cast v0, Laje;

    invoke-virtual {v0}, Laje;->D()Z

    move-result v0

    if-eqz v0, :cond_6

    move-object v0, v1

    check-cast v0, Laje;

    invoke-virtual {v0}, Laje;->G()D

    move-result-wide v6

    cmpl-double v0, v6, v8

    if-lez v0, :cond_6

    :cond_2
    iget-object v0, p0, Luw;->n:Landroid/widget/TextView;

    const/4 v5, 0x1

    invoke-virtual {v0, v2, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    :goto_1
    iget-boolean v0, p0, Luw;->m:Z

    if-eqz v0, :cond_c

    iget-object v0, p0, Luw;->o:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v0, p0, Luw;->l:Lcom/snapchat/android/model/chat/ChatConversation;

    iget-object v5, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mTheirUsername:Ljava/lang/String;

    iget-object v0, p0, Luw;->v:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lajv;

    invoke-static {v5, v0}, Latm;->d(Ljava/lang/String;Lajv;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Luw;->l:Lcom/snapchat/android/model/chat/ChatConversation;

    iget-boolean v0, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mIsStub:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Luw;->o:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Luw;->l:Lcom/snapchat/android/model/chat/ChatConversation;

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

    :goto_2
    iget-object v0, p0, Luw;->o:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_3
    iget-object v0, p0, Luw;->l:Lcom/snapchat/android/model/chat/ChatConversation;

    iget-object v1, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mTheirUsername:Ljava/lang/String;

    iget-object v0, p0, Luw;->v:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lajv;

    if-eqz v0, :cond_3

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v0, v1}, Lajv;->a(Ljava/lang/String;)Lcom/snapchat/android/model/Friend;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/snapchat/android/model/Friend;->p()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Lcom/snapchat/android/model/Friend;->u()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Luw;->p:Lcom/snapchat/android/ui/EmojiTextView;

    invoke-virtual {v0, v2}, Lcom/snapchat/android/ui/EmojiTextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    iget-object v1, p0, Luw;->p:Lcom/snapchat/android/ui/EmojiTextView;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    move v0, v3

    :goto_4
    invoke-virtual {v1, v0}, Lcom/snapchat/android/ui/EmojiTextView;->setVisibility(I)V

    iget-object v1, p0, Luw;->q:Landroid/widget/ImageView;

    iget-object v0, p0, Luw;->l:Lcom/snapchat/android/model/chat/ChatConversation;

    iget-boolean v0, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mHasUnreleasedReceivedChats:Z

    if-eqz v0, :cond_f

    const v0, 0x7f020029

    :goto_5
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    return-void

    :cond_4
    if-eqz v0, :cond_5

    invoke-interface {v0}, Lcom/snapchat/android/model/chat/ChatFeedItem;->N()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Luw;->s:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v1, p0, Luw;->r:Lcom/snapchat/android/ui/FeedReplayAnimationView;

    invoke-virtual {v1, v10}, Lcom/snapchat/android/ui/FeedReplayAnimationView;->setVisibility(I)V

    :cond_5
    move-object v1, v0

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Luw;->n:Landroid/widget/TextView;

    invoke-virtual {v0, v2, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    goto/16 :goto_1

    :cond_7
    iget-object v0, p0, Luw;->l:Lcom/snapchat/android/model/chat/ChatConversation;

    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/ChatConversation;->x()J

    move-result-wide v6

    iget-object v0, p0, Luw;->l:Lcom/snapchat/android/model/chat/ChatConversation;

    iget-object v0, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mTheirUsername:Ljava/lang/String;

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-lez v5, :cond_8

    iget-object v5, p0, Luw;->o:Landroid/widget/TextView;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, " - "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v1, v6, v7}, Lata;->b(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_8
    iget-object v1, p0, Luw;->o:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_9
    iget-object v0, p0, Luw;->l:Lcom/snapchat/android/model/chat/ChatConversation;

    iget-boolean v0, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mIsStub:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Luw;->o:Landroid/widget/TextView;

    const v5, 0x7f0c028f

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_a
    iget-object v0, p0, Luw;->l:Lcom/snapchat/android/model/chat/ChatConversation;

    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/ChatConversation;->x()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v0, v6, v8

    if-lez v0, :cond_b

    iget-object v0, p0, Luw;->o:Landroid/widget/TextView;

    invoke-static {v1, v6, v7}, Lata;->b(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_b
    iget-object v0, p0, Luw;->o:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_c
    iget-object v0, p0, Luw;->o:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v5

    if-eqz v1, :cond_10

    invoke-interface {v1}, Lcom/snapchat/android/model/chat/ChatFeedItem;->a()Ljava/lang/String;

    move-result-object v0

    :goto_6
    iget-object v1, p0, Luw;->l:Lcom/snapchat/android/model/chat/ChatConversation;

    invoke-virtual {v1}, Lcom/snapchat/android/model/chat/ChatConversation;->x()J

    move-result-wide v6

    invoke-static {v5, v6, v7, v0}, Lati;->a(Landroid/content/Context;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Luw;->o:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Luw;->l:Lcom/snapchat/android/model/chat/ChatConversation;

    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/ChatConversation;->A()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Luw;->o:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v5, 0x7f080049

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_d
    iget-object v0, p0, Luw;->o:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_3

    :cond_e
    move v0, v4

    goto/16 :goto_4

    :cond_f
    const v0, 0x7f020028

    goto/16 :goto_5

    :cond_10
    move-object v0, v2

    goto :goto_6

    :cond_11
    move-object v1, v2

    goto/16 :goto_0
.end method

.method public final a(Lve;)V
    .locals 0

    .prologue
    .line 118
    invoke-interface {p1, p0}, Lve;->a(Luw;)V

    .line 119
    return-void
.end method

.method public final a(Lve;Z)V
    .locals 0

    .prologue
    .line 138
    invoke-interface {p1, p0, p2}, Lve;->a(Luw;Z)V

    .line 139
    return-void
.end method

.method public final a(Lve;FFFF)Z
    .locals 6

    .prologue
    .line 113
    move-object v0, p1

    move-object v1, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lve;->a(Luw;FFFF)Z

    move-result v0

    return v0
.end method

.method public final b(Lve;)F
    .locals 1

    .prologue
    .line 123
    invoke-interface {p1, p0}, Lve;->b(Luw;)F

    move-result v0

    return v0
.end method

.method public final c(Lve;)Z
    .locals 1

    .prologue
    .line 128
    invoke-interface {p1, p0}, Lve;->c(Luw;)Z

    move-result v0

    return v0
.end method

.method public final d(Lve;)I
    .locals 1

    .prologue
    .line 133
    invoke-interface {p1, p0}, Lve;->d(Luw;)I

    move-result v0

    return v0
.end method

.method public final e(Lve;)V
    .locals 0

    .prologue
    .line 148
    invoke-interface {p1, p0}, Lve;->e(Luw;)V

    .line 149
    return-void
.end method

.method public final f(Lve;)V
    .locals 0

    .prologue
    .line 153
    invoke-interface {p1}, Lve;->i()V

    .line 154
    return-void
.end method

.method public final g(Lve;)V
    .locals 0

    .prologue
    .line 158
    invoke-interface {p1, p0}, Lve;->f(Luw;)V

    .line 159
    return-void
.end method

.method public final bridge synthetic q()Lut;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Luw;->l:Lcom/snapchat/android/model/chat/ChatConversation;

    return-object v0
.end method
