.class public final Laqk;
.super Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laqk$a;
    }
.end annotation


# instance fields
.field private final a:Laqk$a;

.field private final j:Lni;

.field private final k:F

.field private l:Z

.field private m:I

.field private n:Z

.field private o:Landroid/content/Context;

.field private p:Lagd;

.field private q:Lyn;

.field private r:J


# direct methods
.method public constructor <init>(Landroid/widget/ListView;Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$SwipeDirection;Laqk$a;Landroid/content/Context;Lagd;Lyn;Lni;)V
    .locals 1

    .prologue
    .line 68
    invoke-direct {p0, p1, p2, p3}, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;-><init>(Landroid/widget/ListView;Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$SwipeDirection;Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$a;)V

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Laqk;->l:Z

    .line 69
    iput-object p3, p0, Laqk;->a:Laqk$a;

    .line 70
    const/high16 v0, 0x42000000    # 32.0f

    invoke-static {v0, p4}, Lavh;->a(FLandroid/content/Context;)F

    move-result v0

    iput v0, p0, Laqk;->k:F

    .line 71
    iput-object p4, p0, Laqk;->o:Landroid/content/Context;

    .line 72
    iput-object p5, p0, Laqk;->p:Lagd;

    .line 73
    iput-object p6, p0, Laqk;->q:Lyn;

    .line 74
    iput-object p7, p0, Laqk;->j:Lni;

    .line 75
    return-void
.end method

.method static synthetic a(Laqk;)F
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Laqk;->k:F

    return v0
.end method

.method private a(Lagd$b;Lcom/snapchat/android/model/chat/ChatConversation;)Landroid/animation/Animator;
    .locals 13

    .prologue
    const/4 v12, 0x0

    const-wide/16 v10, 0x12c

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 325
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v3

    .line 327
    iget-object v0, p1, Lagd$b;->b:Landroid/widget/TextView;

    invoke-static {v0}, Lavh;->a(Landroid/view/View;)I

    move-result v0

    int-to-float v0, v0

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v0, v4

    .line 328
    iget-object v4, p1, Lagd$b;->a:Landroid/widget/TextView;

    const-string v5, "translationY"

    new-array v6, v1, [F

    aput v0, v6, v2

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 330
    iget-boolean v0, p2, Lcom/snapchat/android/model/chat/ChatConversation;->mHasUnviewedReceivedSnaps:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p2, Lcom/snapchat/android/model/chat/ChatConversation;->mHasUnreleasedReceivedChats:Z

    if-eqz v0, :cond_2

    move v0, v1

    .line 332
    :goto_0
    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    .line 333
    if-eqz v0, :cond_0

    .line 334
    invoke-virtual {p2}, Lcom/snapchat/android/model/chat/ChatConversation;->x()J

    move-result-wide v6

    const v8, 0x7f0c028f

    invoke-virtual {v3, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v6, v7, v8}, Lati;->a(Landroid/content/Context;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 336
    iget-object v6, p1, Lagd$b;->b:Landroid/widget/TextView;

    const-string v7, "alpha"

    new-array v8, v1, [F

    const/high16 v9, 0x3f800000    # 1.0f

    aput v9, v8, v2

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 337
    invoke-virtual {v6, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 338
    new-instance v7, Laqk$4;

    invoke-direct {v7, p0, p1, v3}, Laqk$4;-><init>(Laqk;Lagd$b;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 347
    iget-object v3, p1, Lagd$b;->b:Landroid/widget/TextView;

    const-string v7, "alpha"

    new-array v8, v1, [F

    aput v12, v8, v2

    invoke-static {v3, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 348
    invoke-virtual {v3, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 349
    new-instance v7, Laqk$5;

    invoke-direct {v7, p0, p1, p2}, Laqk$5;-><init>(Laqk;Lagd$b;Lcom/snapchat/android/model/chat/ChatConversation;)V

    invoke-virtual {v5, v7}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 371
    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 373
    iget-object v6, p0, Laqk;->a:Laqk$a;

    invoke-interface {v6}, Laqk$a;->a()Z

    move-result v6

    if-nez v6, :cond_0

    .line 374
    invoke-virtual {v5, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 378
    :cond_0
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    .line 379
    const-wide/16 v6, 0xbb8

    invoke-virtual {v3, v6, v7}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 380
    iget-object v6, p1, Lagd$b;->b:Landroid/widget/TextView;

    const-string v7, "alpha"

    new-array v1, v1, [F

    aput v12, v1, v2

    invoke-static {v6, v7, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 381
    invoke-virtual {v1, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 382
    new-instance v2, Laqk$6;

    invoke-direct {v2, p0, v5, p1, p2}, Laqk$6;-><init>(Laqk;Landroid/animation/AnimatorSet;Lagd$b;Lcom/snapchat/android/model/chat/ChatConversation;)V

    invoke-virtual {v3, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 412
    if-nez v0, :cond_1

    iget-object v0, p0, Laqk;->a:Laqk$a;

    invoke-interface {v0}, Laqk$a;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 413
    :cond_1
    invoke-virtual {v3, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 417
    :goto_1
    return-object v3

    :cond_2
    move v0, v2

    .line 330
    goto/16 :goto_0

    .line 415
    :cond_3
    invoke-virtual {v3, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto :goto_1
.end method

.method static synthetic a(Laqk;Lagd$b;Lcom/snapchat/android/model/chat/ChatConversation;)Landroid/animation/Animator;
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Laqk;->a(Lagd$b;Lcom/snapchat/android/model/chat/ChatConversation;)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/view/View;Lcom/snapchat/android/model/chat/ChatConversation;)V
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 239
    if-nez p1, :cond_1

    .line 311
    :cond_0
    :goto_0
    return-void

    .line 240
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lagd$b;

    .line 241
    if-eqz v0, :cond_0

    .line 243
    invoke-virtual {p2}, Lcom/snapchat/android/model/chat/ChatConversation;->D()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Laqk;->a:Laqk$a;

    invoke-interface {v1}, Laqk$a;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 248
    iget-object v5, p2, Lcom/snapchat/android/model/chat/ChatConversation;->mItemForFeedIcon:Lcom/snapchat/android/model/chat/ChatFeedItem;

    .line 249
    if-nez v5, :cond_2

    .line 250
    iget-object v1, p0, Laqk;->q:Lyn;

    invoke-virtual {v1, p2, v2}, Lyn;->a(Lcom/snapchat/android/model/chat/ChatConversation;Z)V

    .line 252
    :cond_2
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v6

    .line 254
    iget-boolean v1, p2, Lcom/snapchat/android/model/chat/ChatConversation;->mHasUnviewedReceivedSnaps:Z

    if-eqz v1, :cond_3

    iget-boolean v1, p2, Lcom/snapchat/android/model/chat/ChatConversation;->mHasUnreleasedReceivedChats:Z

    if-eqz v1, :cond_3

    move v1, v2

    .line 256
    :goto_1
    const v4, 0x7f0c028f

    invoke-virtual {v6, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 257
    if-eqz v1, :cond_4

    .line 258
    const v1, 0x7f0c0298

    invoke-virtual {v6, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 262
    :goto_2
    invoke-virtual {p2}, Lcom/snapchat/android/model/chat/ChatConversation;->x()J

    move-result-wide v4

    invoke-static {v6, v4, v5, v1}, Lati;->a(Landroid/content/Context;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 263
    iget-object v4, v0, Lagd$b;->b:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 264
    iget-object v4, v0, Lagd$b;->b:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f08004e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 268
    iget-object v4, v0, Lagd$b;->d:Landroid/animation/Animator;

    if-eqz v4, :cond_5

    iget-object v4, v0, Lagd$b;->d:Landroid/animation/Animator;

    invoke-virtual {v4}, Landroid/animation/Animator;->isStarted()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 269
    iput-boolean v3, v0, Lagd$b;->e:Z

    .line 270
    iget-object v2, v0, Lagd$b;->d:Landroid/animation/Animator;

    invoke-virtual {v2}, Landroid/animation/Animator;->cancel()V

    .line 271
    iget-object v2, v0, Lagd$b;->a:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->clearAnimation()V

    .line 272
    iget-object v2, v0, Lagd$b;->b:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->clearAnimation()V

    .line 273
    invoke-virtual {v0}, Lagd$b;->a()V

    .line 274
    iget-object v2, v0, Lagd$b;->b:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 275
    invoke-direct {p0, v0, p2}, Laqk;->a(Lagd$b;Lcom/snapchat/android/model/chat/ChatConversation;)Landroid/animation/Animator;

    move-result-object v1

    iput-object v1, v0, Lagd$b;->d:Landroid/animation/Animator;

    .line 276
    invoke-direct {p0, p2}, Laqk;->a(Lcom/snapchat/android/model/chat/ChatConversation;)V

    .line 277
    iget-object v0, v0, Lagd$b;->d:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    goto/16 :goto_0

    :cond_3
    move v1, v3

    .line 254
    goto :goto_1

    .line 259
    :cond_4
    if-eqz v5, :cond_6

    .line 260
    invoke-interface {v5}, Lcom/snapchat/android/model/chat/ChatFeedItem;->a()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 281
    :cond_5
    iget-object v1, v0, Lagd$b;->b:Landroid/widget/TextView;

    invoke-static {v1}, Lavh;->a(Landroid/view/View;)I

    move-result v1

    int-to-float v1, v1

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v1, v4

    .line 282
    iget-object v4, v0, Lagd$b;->a:Landroid/widget/TextView;

    const-string v5, "translationY"

    new-array v2, v2, [F

    const/high16 v6, -0x40800000    # -1.0f

    mul-float/2addr v1, v6

    aput v1, v2, v3

    invoke-static {v4, v5, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 283
    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 284
    new-instance v2, Laqk$3;

    invoke-direct {v2, p0, v0, p2}, Laqk$3;-><init>(Laqk;Lagd$b;Lcom/snapchat/android/model/chat/ChatConversation;)V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 308
    iput-object v1, v0, Lagd$b;->d:Landroid/animation/Animator;

    .line 309
    invoke-direct {p0, p2}, Laqk;->a(Lcom/snapchat/android/model/chat/ChatConversation;)V

    .line 310
    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    goto/16 :goto_0

    :cond_6
    move-object v1, v4

    goto/16 :goto_2
.end method

.method private a(Lcom/snapchat/android/model/chat/ChatConversation;)V
    .locals 4

    .prologue
    .line 315
    const-wide/16 v0, 0xce4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 317
    iget-object v2, p0, Laqk;->p:Lagd;

    iget-object v2, v2, Lagd;->a:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    return-void
.end method

.method private b()V
    .locals 2

    .prologue
    .line 151
    iget-object v0, p0, Laqk;->g:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Laqk;->g:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lagd$b;

    .line 153
    if-nez v0, :cond_1

    .line 160
    :cond_0
    :goto_0
    return-void

    .line 154
    :cond_1
    iget-object v0, v0, Lagd$b;->c:Lcom/snapchat/android/model/chat/ChatConversation;

    iget-object v0, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mTheirUsername:Ljava/lang/String;

    const-string v1, "teamsnapchat"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Laqk;->g:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 156
    const/4 v0, 0x1

    iput-boolean v0, p0, Laqk;->n:Z

    .line 157
    invoke-direct {p0}, Laqk;->c()V

    goto :goto_0
.end method

.method static synthetic b(Laqk;)Z
    .locals 1

    .prologue
    .line 40
    iget-boolean v0, p0, Laqk;->n:Z

    return v0
.end method

.method private c()V
    .locals 2

    .prologue
    .line 163
    iget-object v0, p0, Laqk;->o:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 164
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 165
    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->BOUNCE_TEAM_SNAPCHAT_CONVERSATION_ONBOARDING:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 166
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 167
    return-void
.end method

.method static synthetic c(Laqk;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Laqk;->c()V

    return-void
.end method

.method static synthetic d(Laqk;)Laqk$a;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Laqk;->a:Laqk$a;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/view/View;I)V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 170
    iget-boolean v0, p0, Laqk;->n:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    .line 212
    :cond_0
    :goto_0
    return-void

    .line 171
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lagd$b;

    .line 172
    if-eqz v0, :cond_0

    iget-object v1, v0, Lagd$b;->c:Lcom/snapchat/android/model/chat/ChatConversation;

    if-eqz v1, :cond_0

    .line 173
    iget-object v1, v0, Lagd$b;->c:Lcom/snapchat/android/model/chat/ChatConversation;

    iget-object v1, v1, Lcom/snapchat/android/model/chat/ChatConversation;->mTheirUsername:Ljava/lang/String;

    const-string v2, "teamsnapchat"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 174
    const v1, 0x7f0a022a

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 175
    if-eqz v1, :cond_0

    .line 177
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    iget v3, p0, Laqk;->k:F

    invoke-direct {v2, v4, v3, v4, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 178
    const-wide/16 v4, 0x64

    invoke-virtual {v2, v4, v5}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 179
    new-instance v3, Laqk$1;

    invoke-direct {v3, p0, p2, p1, v1}, Laqk$1;-><init>(Laqk;ILandroid/view/View;Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 210
    invoke-virtual {v1, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 211
    iget-object v0, v0, Lagd$b;->c:Lcom/snapchat/android/model/chat/ChatConversation;

    invoke-direct {p0, p1, v0}, Laqk;->a(Landroid/view/View;Lcom/snapchat/android/model/chat/ChatConversation;)V

    goto :goto_0
.end method

.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    const/4 v0, 0x1

    .line 79
    iget-object v1, p0, Laqk;->a:Laqk$a;

    invoke-interface {v1, p2}, Laqk$a;->a(Landroid/view/MotionEvent;)Lcom/snapchat/android/model/chat/ChatConversation;

    move-result-object v1

    .line 82
    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/snapchat/android/model/chat/ChatConversation;->mTheirUsername:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 147
    :cond_0
    :goto_0
    return v0

    .line 89
    :cond_1
    invoke-static {v1}, Laxi;->a(Lcom/snapchat/android/model/chat/ChatConversation;)Z

    move-result v2

    .line 90
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    .line 91
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 138
    :cond_2
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    .line 141
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_1

    goto :goto_0

    .line 143
    :pswitch_0
    iget-object v2, p0, Laqk;->h:Landroid/view/View;

    invoke-direct {p0, v2, v1}, Laqk;->a(Landroid/view/View;Lcom/snapchat/android/model/chat/ChatConversation;)V

    goto :goto_0

    .line 93
    :pswitch_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Laqk;->r:J

    .line 94
    iput-boolean v9, p0, Laqk;->l:Z

    .line 95
    iput v3, p0, Laqk;->m:I

    .line 96
    invoke-direct {p0}, Laqk;->b()V

    .line 97
    if-eqz v2, :cond_2

    goto :goto_0

    .line 100
    :pswitch_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Laqk;->r:J

    sub-long/2addr v4, v6

    .line 103
    invoke-static {}, Laup;->d()Laup;

    move-result-object v3

    invoke-virtual {v3}, Laup;->f()V

    .line 104
    const-string v3, "FeedSwipeListViewTouchListener"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "TTV-LOG: ACTION_UP mFeedMoving("

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v7, p0, Laqk;->l:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") mIsSwiping("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Laqk;->f:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") mPaused("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Laqk;->i:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v9, [Ljava/lang/Object;

    invoke-static {v3, v6, v7}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 106
    iget-boolean v3, p0, Laqk;->l:Z

    if-nez v3, :cond_2

    iget-boolean v3, p0, Laqk;->f:Z

    if-nez v3, :cond_2

    iget-boolean v3, p0, Laqk;->i:Z

    if-nez v3, :cond_2

    .line 107
    const-wide/16 v6, 0xbe

    cmp-long v3, v4, v6

    if-gtz v3, :cond_6

    .line 108
    invoke-virtual {v1}, Lcom/snapchat/android/model/chat/ChatConversation;->A()Z

    move-result v3

    .line 109
    if-eqz v3, :cond_4

    .line 110
    invoke-virtual {v1}, Lcom/snapchat/android/model/chat/ChatConversation;->B()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 111
    const-string v4, "feed"

    invoke-static {v4}, Lni;->a(Ljava/lang/String;)V

    .line 113
    :cond_3
    invoke-static {}, Lyq;->a()Lyq;

    move-result-object v4

    invoke-virtual {v4, v1}, Lyq;->a(Lcom/snapchat/android/model/chat/ChatConversation;)V

    .line 114
    invoke-static {}, Lban;->a()Lcom/squareup/otto/Bus;

    move-result-object v4

    new-instance v5, Lbdb;

    invoke-direct {v5}, Lbdb;-><init>()V

    invoke-virtual {v4, v5}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 115
    if-nez v2, :cond_0

    .line 119
    :cond_4
    iget-object v0, p0, Laqk;->a:Laqk$a;

    invoke-interface {v0, p2}, Laqk$a;->b(Landroid/view/MotionEvent;)Z

    .line 120
    iget-boolean v0, v1, Lcom/snapchat/android/model/chat/ChatConversation;->mHasUnviewedReceivedSnaps:Z

    if-eqz v0, :cond_5

    if-nez v3, :cond_5

    .line 121
    invoke-static {}, Laup;->d()Laup;

    move-result-object v0

    invoke-virtual {v0, v1}, Laup;->a(Lcom/snapchat/android/model/chat/ChatConversation;)V

    goto/16 :goto_1

    .line 123
    :cond_5
    iget-object v0, p0, Laqk;->g:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Laqk;->g:Landroid/view/View;

    const v2, 0x7f0a022a

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v2, Landroid/view/animation/TranslateAnimation;

    iget v3, p0, Laqk;->k:F

    invoke-direct {v2, v8, v3, v8, v8}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    const-wide/16 v4, 0x64

    invoke-virtual {v2, v4, v5}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    new-instance v3, Laqk$2;

    invoke-direct {v3, p0, v0}, Laqk$2;-><init>(Laqk;Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_1

    .line 126
    :cond_6
    const-string v0, "FeedSwipeListViewTouchListener"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "TTV-LOG: Time between ACTION_DOWN and ACTION_UP > tap ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ms)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v9, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 131
    :pswitch_3
    iget v2, p0, Laqk;->m:I

    sub-int v2, v3, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 132
    iget v4, p0, Laqk;->b:I

    if-le v2, v4, :cond_7

    iput-boolean v0, p0, Laqk;->l:Z

    .line 133
    :cond_7
    iput v3, p0, Laqk;->m:I

    .line 134
    invoke-direct {p0}, Laqk;->b()V

    goto/16 :goto_1

    .line 91
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 141
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
