.class public Lqg;
.super Ltx;
.source "SourceFile"

# interfaces
.implements Lui$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lqg$2;,
        Lqg$a;,
        Lqg$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ltx;",
        "Lui$b",
        "<",
        "Lbli;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FriendActionTask"


# instance fields
.field public mAction:Lcom/snapchat/android/model/FriendAction;

.field public mActionMethod:Lil;

.field public mAddSourceType:Lcom/snapchat/android/analytics/AnalyticsEvents$AddFriendSourceType;

.field public mAnalyticsContext:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

.field protected mBlockReason:Lcom/snapchat/android/model/FriendAction$BlockReason;

.field private final mBus:Lcom/squareup/otto/Bus;

.field protected mDisplayName:Ljava/lang/String;

.field public mFriend:Lcom/snapchat/android/model/Friend;
    .annotation build Lchd;
    .end annotation
.end field

.field public mFriendActionCompleteCallback:Lqg$a;

.field public mFriendIndex:I

.field protected mFriendUserId:Ljava/lang/String;

.field protected mFriendUsername:Ljava/lang/String;

.field private final mFriendUtils:Lauk;

.field protected mIsJustAdded:Z

.field protected mOldDisplayName:Ljava/lang/String;

.field public mOnFriendActionMessage:Landroid/os/Message;

.field private mProfileEventAnalytics:Lcom/snapchat/android/analytics/ProfileEventAnalytics;

.field public mShowFailureDialog:Z

.field final mUserProvider:Ljavax/inject/Provider;
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
.method public constructor <init>(Lcom/snapchat/android/model/Friend;Lcom/snapchat/android/model/FriendAction;)V
    .locals 9

    .prologue
    const/4 v7, 0x0

    .line 100
    invoke-virtual {p1}, Lcom/snapchat/android/model/Friend;->l()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p1, Lcom/snapchat/android/model/Friend;->mUserId:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/snapchat/android/model/Friend;->a()Ljava/lang/String;

    move-result-object v5

    iget-boolean v6, p1, Lcom/snapchat/android/model/Friend;->mJustAdded:Z

    move-object v0, p0

    move-object v1, p2

    move-object v2, p1

    move-object v8, v7

    invoke-direct/range {v0 .. v8}, Lqg;-><init>(Lcom/snapchat/android/model/FriendAction;Lcom/snapchat/android/model/Friend;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lcom/snapchat/android/model/FriendAction$BlockReason;)V

    .line 102
    return-void
.end method

.method public constructor <init>(Lcom/snapchat/android/model/Friend;Lcom/snapchat/android/model/FriendAction;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 105
    invoke-direct {p0, p1, p2}, Lqg;-><init>(Lcom/snapchat/android/model/Friend;Lcom/snapchat/android/model/FriendAction;)V

    .line 106
    iput-object p3, p0, Lqg;->mOldDisplayName:Ljava/lang/String;

    .line 107
    return-void
.end method

.method public constructor <init>(Lcom/snapchat/android/model/FriendAction;Lcom/snapchat/android/model/Friend;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lcom/snapchat/android/model/FriendAction$BlockReason;)V
    .locals 11
    .param p2    # Lcom/snapchat/android/model/Friend;
        .annotation build Lchd;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lchd;
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation build Lchd;
        .end annotation
    .end param
    .param p8    # Lcom/snapchat/android/model/FriendAction$BlockReason;
        .annotation build Lchd;
        .end annotation
    .end param

    .prologue
    .line 74
    sget-object v9, Lakp;->UNSAFE_USER_PROVIDER:Ljavax/inject/Provider;

    invoke-static {}, Lauk;->a()Lauk;

    move-result-object v10

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-direct/range {v0 .. v10}, Lqg;-><init>(Lcom/snapchat/android/model/FriendAction;Lcom/snapchat/android/model/Friend;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lcom/snapchat/android/model/FriendAction$BlockReason;Ljavax/inject/Provider;Lauk;)V

    .line 76
    return-void
.end method

.method private constructor <init>(Lcom/snapchat/android/model/FriendAction;Lcom/snapchat/android/model/Friend;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lcom/snapchat/android/model/FriendAction$BlockReason;Ljavax/inject/Provider;Lauk;)V
    .locals 1
    .param p2    # Lcom/snapchat/android/model/Friend;
        .annotation build Lchd;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lchd;
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation build Lchd;
        .end annotation
    .end param
    .param p8    # Lcom/snapchat/android/model/FriendAction$BlockReason;
        .annotation build Lchd;
        .end annotation
    .end param
    .annotation build Lcf;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/snapchat/android/model/FriendAction;",
            "Lcom/snapchat/android/model/Friend;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Lcom/snapchat/android/model/FriendAction$BlockReason;",
            "Ljavax/inject/Provider",
            "<",
            "Lakp;",
            ">;",
            "Lauk;",
            ")V"
        }
    .end annotation

    .prologue
    .line 81
    invoke-direct {p0}, Ltx;-><init>()V

    .line 82
    iput-object p1, p0, Lqg;->mAction:Lcom/snapchat/android/model/FriendAction;

    .line 83
    iput-object p2, p0, Lqg;->mFriend:Lcom/snapchat/android/model/Friend;

    .line 84
    iput-object p3, p0, Lqg;->mFriendUsername:Ljava/lang/String;

    .line 85
    iput-object p4, p0, Lqg;->mFriendUserId:Ljava/lang/String;

    .line 86
    iput-object p5, p0, Lqg;->mDisplayName:Ljava/lang/String;

    .line 87
    iput-boolean p6, p0, Lqg;->mIsJustAdded:Z

    .line 88
    iput-object p7, p0, Lqg;->mOldDisplayName:Ljava/lang/String;

    .line 89
    iput-object p8, p0, Lqg;->mBlockReason:Lcom/snapchat/android/model/FriendAction$BlockReason;

    .line 90
    iput-object p9, p0, Lqg;->mUserProvider:Ljavax/inject/Provider;

    .line 91
    iput-object p10, p0, Lqg;->mFriendUtils:Lauk;

    .line 92
    invoke-static {}, Lbbo;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    iput-object v0, p0, Lqg;->mBus:Lcom/squareup/otto/Bus;

    .line 93
    const/4 v0, 0x1

    iput-boolean v0, p0, Lqg;->mShowFailureDialog:Z

    .line 94
    const/4 v0, -0x1

    iput v0, p0, Lqg;->mFriendIndex:I

    .line 96
    const-class v0, Lbli;

    invoke-virtual {p0, v0, p0}, Lqg;->registerCallback(Ljava/lang/Class;Lui$b;)V

    .line 97
    return-void
.end method


# virtual methods
.method public final a()Lqg;
    .locals 1

    .prologue
    .line 154
    invoke-static {}, Lcom/snapchat/android/analytics/ProfileEventAnalytics;->a()Lcom/snapchat/android/analytics/ProfileEventAnalytics;

    move-result-object v0

    iput-object v0, p0, Lqg;->mProfileEventAnalytics:Lcom/snapchat/android/analytics/ProfileEventAnalytics;

    .line 155
    return-object p0
.end method

.method public a(Lbli;Lakp;)V
    .locals 9
    .param p2    # Lakp;
        .annotation build Lchd;
        .end annotation
    .end param
    .annotation build Lcdn;
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x1

    .line 257
    iget-object v0, p0, Lqg;->mFriend:Lcom/snapchat/android/model/Friend;

    instance-of v0, v0, Lagl;

    if-nez v0, :cond_4

    move v0, v5

    .line 258
    :goto_0
    if-eqz p2, :cond_1

    .line 259
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onSuccess - action "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lqg;->mAction:Lcom/snapchat/android/model/FriendAction;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 260
    invoke-virtual {p1}, Lbli;->a()Lbiu;

    move-result-object v1

    .line 261
    sget-object v2, Lqg$2;->$SwitchMap$com$snapchat$android$model$FriendAction:[I

    iget-object v3, p0, Lqg;->mAction:Lcom/snapchat/android/model/FriendAction;

    invoke-virtual {v3}, Lcom/snapchat/android/model/FriendAction;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 313
    :cond_0
    :goto_1
    if-eqz v0, :cond_1

    .line 314
    invoke-virtual {p2}, Lakp;->x()V

    .line 318
    :cond_1
    iget-object v1, p0, Lqg;->mFriendActionCompleteCallback:Lqg$a;

    if-eqz v1, :cond_2

    .line 319
    iget-object v1, p0, Lqg;->mFriendActionCompleteCallback:Lqg$a;

    iget-object v2, p0, Lqg;->mAction:Lcom/snapchat/android/model/FriendAction;

    invoke-interface {v1, v2, v5, v6}, Lqg$a;->a(Lcom/snapchat/android/model/FriendAction;ZLjava/lang/String;)V

    .line 323
    :cond_2
    iget-object v1, p0, Lqg;->mFriend:Lcom/snapchat/android/model/Friend;

    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    iget-object v0, p0, Lqg;->mProfileEventAnalytics:Lcom/snapchat/android/analytics/ProfileEventAnalytics;

    if-eqz v0, :cond_3

    .line 324
    iget-object v0, p0, Lqg;->mAction:Lcom/snapchat/android/model/FriendAction;

    iget-object v1, p0, Lqg;->mAnalyticsContext:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

    iget v2, p0, Lqg;->mFriendIndex:I

    iget-object v3, p0, Lqg;->mFriend:Lcom/snapchat/android/model/Friend;

    iget-object v4, p0, Lqg;->mAddSourceType:Lcom/snapchat/android/analytics/AnalyticsEvents$AddFriendSourceType;

    iget-object v7, p0, Lqg;->mActionMethod:Lil;

    invoke-static/range {v0 .. v7}, Lcom/snapchat/android/analytics/ProfileEventAnalytics;->a(Lcom/snapchat/android/model/FriendAction;Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;ILcom/snapchat/android/model/Friend;Lcom/snapchat/android/analytics/AnalyticsEvents$AddFriendSourceType;ZLjava/lang/String;Lil;)V

    .line 327
    :cond_3
    iget-object v0, p0, Lqg;->mBus:Lcom/squareup/otto/Bus;

    new-instance v1, Lbdw;

    iget-object v2, p0, Lqg;->mFriend:Lcom/snapchat/android/model/Friend;

    iget-object v3, p0, Lqg;->mAction:Lcom/snapchat/android/model/FriendAction;

    invoke-direct {v1, v2, v3}, Lbdw;-><init>(Lcom/snapchat/android/model/Friend;Lcom/snapchat/android/model/FriendAction;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 328
    invoke-static {v8}, Lakr;->o(Z)V

    .line 329
    return-void

    :cond_4
    move v0, v8

    .line 257
    goto :goto_0

    .line 263
    :pswitch_0
    if-eqz v1, :cond_0

    iget-object v2, p0, Lqg;->mFriend:Lcom/snapchat/android/model/Friend;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lqg;->mFriendUsername:Ljava/lang/String;

    invoke-static {v2, v5, p2}, Lauk;->a(Ljava/lang/String;ZLakp;)V

    iget-object v2, p0, Lqg;->mFriend:Lcom/snapchat/android/model/Friend;

    sget-object v3, Lcom/snapchat/android/model/Friend$SuggestState;->NOT_SUGGESTION:Lcom/snapchat/android/model/Friend$SuggestState;

    iput-object v3, v2, Lcom/snapchat/android/model/Friend;->mSuggestionState:Lcom/snapchat/android/model/Friend$SuggestState;

    :cond_5
    iget-object v2, p0, Lqg;->mFriend:Lcom/snapchat/android/model/Friend;

    instance-of v2, v2, Lagl;

    if-nez v2, :cond_0

    invoke-static {v1, p2}, Lauk;->a(Lbiu;Lakp;)Lcom/snapchat/android/model/Friend;

    move-result-object v1

    iget-object v2, p0, Lqg;->mFriend:Lcom/snapchat/android/model/Friend;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lqg;->mFriend:Lcom/snapchat/android/model/Friend;

    iget-object v2, v2, Lcom/snapchat/android/model/Friend;->mSuggestionState:Lcom/snapchat/android/model/Friend$SuggestState;

    iput-object v2, v1, Lcom/snapchat/android/model/Friend;->mSuggestionState:Lcom/snapchat/android/model/Friend$SuggestState;

    :cond_6
    iget-boolean v2, p0, Lqg;->mIsJustAdded:Z

    iput-boolean v2, v1, Lcom/snapchat/android/model/Friend;->mJustAdded:Z

    invoke-virtual {v1}, Lcom/snapchat/android/model/Friend;->l()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Layg;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lqi;

    invoke-direct {v3, v2}, Lqi;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lqi;->execute()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/snapchat/android/model/Friend;->mIAddedThemTimestamp:J

    invoke-virtual {p2}, Lakp;->e()V

    goto :goto_1

    .line 268
    :pswitch_1
    iget-object v1, p0, Lqg;->mFriend:Lcom/snapchat/android/model/Friend;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lqg;->mFriend:Lcom/snapchat/android/model/Friend;

    invoke-virtual {v1}, Lcom/snapchat/android/model/Friend;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lakp;->f(Ljava/lang/String;)V

    iget-object v1, p0, Lqg;->mFriendUsername:Ljava/lang/String;

    invoke-static {v1, v8, p2}, Lauk;->a(Ljava/lang/String;ZLakp;)V

    iget-object v1, p0, Lqg;->mFriend:Lcom/snapchat/android/model/Friend;

    instance-of v1, v1, Lagl;

    if-nez v1, :cond_0

    iget-object v1, p0, Lqg;->mFriendUsername:Ljava/lang/String;

    invoke-virtual {p2, v1}, Lakp;->g(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 274
    :pswitch_2
    if-eqz v0, :cond_0

    .line 275
    iget-object v1, p0, Lqg;->mFriendUsername:Ljava/lang/String;

    invoke-virtual {p2, v1, v5}, Lakp;->a(Ljava/lang/String;Z)V

    iget-object v2, p2, Lakp;->mStoryLibrary:Lakk;

    invoke-virtual {v2, v1}, Lakk;->c(Ljava/lang/String;)V

    invoke-static {}, Lakx;->c()Lakx;

    move-result-object v2

    invoke-static {v1}, Layg;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v5}, Lakx;->b(Ljava/lang/String;Z)V

    invoke-virtual {p2, v1}, Lakp;->h(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Lakp;->i(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 281
    :pswitch_3
    if-eqz v0, :cond_0

    .line 282
    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lbiu;->c()Lbiu$a;

    move-result-object v1

    sget-object v2, Lbiu$a;->DELETED:Lbiu$a;

    if-ne v1, v2, :cond_7

    .line 284
    iget-object v1, p0, Lqg;->mFriendUsername:Ljava/lang/String;

    invoke-virtual {p2, v1}, Lakp;->g(Ljava/lang/String;)V

    .line 286
    :cond_7
    iget-object v1, p0, Lqg;->mFriendUsername:Ljava/lang/String;

    invoke-static {v1, p2}, Lauk;->h(Ljava/lang/String;Lakp;)V

    goto/16 :goto_1

    .line 292
    :pswitch_4
    iget-object v1, p0, Lqg;->mFriend:Lcom/snapchat/android/model/Friend;

    if-eqz v1, :cond_0

    .line 293
    iget-object v1, p0, Lqg;->mFriend:Lcom/snapchat/android/model/Friend;

    iput-boolean v5, v1, Lcom/snapchat/android/model/Friend;->mIsIgnored:Z

    goto/16 :goto_1

    .line 299
    :pswitch_5
    iget-object v1, p0, Lqg;->mFriend:Lcom/snapchat/android/model/Friend;

    if-eqz v1, :cond_0

    .line 300
    iget-object v1, p0, Lqg;->mFriend:Lcom/snapchat/android/model/Friend;

    iput-boolean v5, v1, Lcom/snapchat/android/model/Friend;->mIsHidden:Z

    goto/16 :goto_1

    .line 306
    :pswitch_6
    if-eqz v0, :cond_0

    .line 307
    iget-object v1, p0, Lqg;->mFriendUsername:Ljava/lang/String;

    iget-object v2, p0, Lqg;->mDisplayName:Ljava/lang/String;

    invoke-static {v1, v2, p2}, Lauk;->a(Ljava/lang/String;Ljava/lang/String;Lakp;)V

    goto/16 :goto_1

    .line 261
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public a(Lbli;Lus;)V
    .locals 0
    .param p1    # Lbli;
        .annotation build Lchd;
        .end annotation
    .end param
    .param p2    # Lus;
        .annotation build Lchc;
        .end annotation
    .end param
    .annotation build Lcdn;
    .end annotation

    .prologue
    .line 248
    return-void
.end method

.method protected final a(Lus;Ljava/lang/String;Lakp;)V
    .locals 6
    .param p1    # Lus;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lchd;
        .end annotation
    .end param
    .param p3    # Lakp;
        .annotation build Lchd;
        .end annotation
    .end param
    .annotation build Lcdn;
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 383
    iget-boolean v0, p0, Lqg;->mShowFailureDialog:Z

    if-eqz v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lqg$2;->$SwitchMap$com$snapchat$android$model$FriendAction:[I

    iget-object v1, p0, Lqg;->mAction:Lcom/snapchat/android/model/FriendAction;

    invoke-virtual {v1}, Lcom/snapchat/android/model/FriendAction;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_0

    iget-object v1, p0, Lqg;->mBus:Lcom/squareup/otto/Bus;

    invoke-virtual {v1, v0}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 385
    :cond_0
    if-eqz p3, :cond_1

    .line 386
    iget-object v0, p0, Lqg;->mFriend:Lcom/snapchat/android/model/Friend;

    instance-of v0, v0, Lagl;

    if-nez v0, :cond_5

    const/4 v0, 0x1

    .line 387
    :goto_1
    sget-object v1, Lqg$2;->$SwitchMap$com$snapchat$android$model$FriendAction:[I

    iget-object v2, p0, Lqg;->mAction:Lcom/snapchat/android/model/FriendAction;

    invoke-virtual {v2}, Lcom/snapchat/android/model/FriendAction;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_1

    .line 399
    :cond_1
    :goto_2
    iget-object v0, p0, Lqg;->mFriend:Lcom/snapchat/android/model/Friend;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lqg;->mFriend:Lcom/snapchat/android/model/Friend;

    instance-of v0, v0, Lagl;

    if-nez v0, :cond_2

    iget-object v0, p0, Lqg;->mProfileEventAnalytics:Lcom/snapchat/android/analytics/ProfileEventAnalytics;

    if-eqz v0, :cond_2

    .line 400
    iget-object v0, p0, Lqg;->mAction:Lcom/snapchat/android/model/FriendAction;

    iget-object v1, p0, Lqg;->mAnalyticsContext:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

    iget-object v2, p0, Lqg;->mFriend:Lcom/snapchat/android/model/Friend;

    iget-object v3, p0, Lqg;->mAddSourceType:Lcom/snapchat/android/analytics/AnalyticsEvents$AddFriendSourceType;

    iget-object v5, p1, Lus;->mResponseMessage:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lcom/snapchat/android/analytics/ProfileEventAnalytics;->a(Lcom/snapchat/android/model/FriendAction;Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;Lcom/snapchat/android/model/Friend;Lcom/snapchat/android/analytics/AnalyticsEvents$AddFriendSourceType;ZLjava/lang/String;)V

    .line 403
    :cond_2
    iget-object v0, p0, Lqg;->mFriendActionCompleteCallback:Lqg$a;

    if-eqz v0, :cond_3

    .line 404
    iget-object v0, p0, Lqg;->mFriendActionCompleteCallback:Lqg$a;

    iget-object v1, p0, Lqg;->mAction:Lcom/snapchat/android/model/FriendAction;

    iget-object v2, p1, Lus;->mResponseMessage:Ljava/lang/String;

    invoke-interface {v0, v1, v4, v2}, Lqg$a;->a(Lcom/snapchat/android/model/FriendAction;ZLjava/lang/String;)V

    .line 408
    :cond_3
    iget-object v0, p0, Lqg;->mBus:Lcom/squareup/otto/Bus;

    new-instance v1, Lbdw;

    iget-object v2, p0, Lqg;->mFriend:Lcom/snapchat/android/model/Friend;

    iget-object v3, p0, Lqg;->mAction:Lcom/snapchat/android/model/FriendAction;

    invoke-direct {v1, v2, v3}, Lbdw;-><init>(Lcom/snapchat/android/model/Friend;Lcom/snapchat/android/model/FriendAction;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 409
    return-void

    .line 383
    :pswitch_0
    new-instance v0, Lcom/snapchat/android/util/eventbus/ShowDialogEvent;

    sget-object v1, Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;->TOAST:Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;

    const v2, 0x7f0c000f

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/util/eventbus/ShowDialogEvent;-><init>(Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;I)V

    goto :goto_0

    :pswitch_1
    new-instance v0, Lcom/snapchat/android/util/eventbus/ShowDialogEvent;

    sget-object v1, Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;->TOAST:Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;

    const v2, 0x7f0c0012

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/util/eventbus/ShowDialogEvent;-><init>(Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;I)V

    goto :goto_0

    :cond_4
    new-instance v0, Lcom/snapchat/android/util/eventbus/ShowDialogEvent;

    sget-object v1, Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;->TOAST:Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;

    invoke-direct {v0, v1, p2}, Lcom/snapchat/android/util/eventbus/ShowDialogEvent;-><init>(Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    move v0, v4

    .line 386
    goto :goto_1

    .line 390
    :pswitch_2
    if-eqz v0, :cond_1

    .line 391
    iget-object v0, p0, Lqg;->mFriendUsername:Ljava/lang/String;

    iget-object v1, p0, Lqg;->mOldDisplayName:Ljava/lang/String;

    invoke-static {v0, v1, p3}, Lauk;->a(Ljava/lang/String;Ljava/lang/String;Lakp;)V

    goto :goto_2

    .line 383
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 387
    :pswitch_data_1
    .packed-switch 0x8
        :pswitch_2
    .end packed-switch
.end method

.method public execute()V
    .locals 3

    .prologue
    .line 176
    iget-object v0, p0, Lqg;->mAnalyticsContext:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lqg;->mAction:Lcom/snapchat/android/model/FriendAction;

    iget-object v1, p0, Lqg;->mAnalyticsContext:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

    iget-object v2, p0, Lqg;->mFriend:Lcom/snapchat/android/model/Friend;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/analytics/AnalyticsEvents;->a(Lcom/snapchat/android/model/FriendAction;Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;Lcom/snapchat/android/model/Friend;)V

    .line 180
    :cond_0
    iget-object v0, p0, Lqg;->mOnFriendActionMessage:Landroid/os/Message;

    if-eqz v0, :cond_1

    .line 181
    iget-object v0, p0, Lqg;->mOnFriendActionMessage:Landroid/os/Message;

    iget-object v1, p0, Lqg;->mAction:Lcom/snapchat/android/model/FriendAction;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 182
    iget-object v0, p0, Lqg;->mOnFriendActionMessage:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 185
    :cond_1
    invoke-super {p0}, Ltx;->execute()V

    .line 186
    return-void
.end method

.method protected getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 190
    const-string v0, "/bq/friend"

    return-object v0
.end method

.method public getRequestPayload()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 200
    new-instance v0, Lqg$b;

    invoke-direct {v0, p0}, Lqg$b;-><init>(Lqg;)V

    .line 201
    iget-object v1, p0, Lqg;->mAction:Lcom/snapchat/android/model/FriendAction;

    invoke-virtual {v1}, Lcom/snapchat/android/model/FriendAction;->getServerActionName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lqg$b;->a(Ljava/lang/String;)V

    .line 202
    iget-object v1, p0, Lqg;->mFriendUsername:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lqg$b;->b(Ljava/lang/String;)V

    .line 203
    iget-object v1, p0, Lqg;->mFriendUserId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 204
    iget-object v1, p0, Lqg;->mFriendUserId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lqg$b;->i(Ljava/lang/String;)V

    .line 206
    :cond_0
    iget-object v1, p0, Lqg;->mAddSourceType:Lcom/snapchat/android/analytics/AnalyticsEvents$AddFriendSourceType;

    if-eqz v1, :cond_1

    .line 208
    iget-object v1, p0, Lqg;->mAddSourceType:Lcom/snapchat/android/analytics/AnalyticsEvents$AddFriendSourceType;

    invoke-virtual {v1}, Lcom/snapchat/android/analytics/AnalyticsEvents$AddFriendSourceType;->getAddSourceType()Lcom/snapchat/android/model/Friend$AddSourceType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/snapchat/android/model/Friend$AddSourceType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lqg$b;->j(Ljava/lang/String;)V

    .line 210
    :cond_1
    iget v1, p0, Lqg;->mFriendIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lqg$b;->a(Ljava/lang/Integer;)V

    .line 211
    iget-object v1, p0, Lqg;->mAnalyticsContext:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

    if-eqz v1, :cond_2

    .line 212
    iget-object v1, p0, Lqg;->mAnalyticsContext:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

    invoke-virtual {v1}, Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lqg$b;->k(Ljava/lang/String;)V

    .line 214
    :cond_2
    iget-object v1, p0, Lqg;->mAction:Lcom/snapchat/android/model/FriendAction;

    sget-object v2, Lcom/snapchat/android/model/FriendAction;->SET_DISPLAY_NAME:Lcom/snapchat/android/model/FriendAction;

    if-ne v1, v2, :cond_3

    .line 215
    iget-object v1, p0, Lqg;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lqg$b;->l(Ljava/lang/String;)V

    .line 217
    :cond_3
    iget-object v1, p0, Lqg;->mAction:Lcom/snapchat/android/model/FriendAction;

    sget-object v2, Lcom/snapchat/android/model/FriendAction;->BLOCK:Lcom/snapchat/android/model/FriendAction;

    invoke-virtual {v1, v2}, Lcom/snapchat/android/model/FriendAction;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lqg;->mBlockReason:Lcom/snapchat/android/model/FriendAction$BlockReason;

    if-eqz v1, :cond_4

    .line 218
    iget-object v1, p0, Lqg;->mBlockReason:Lcom/snapchat/android/model/FriendAction$BlockReason;

    invoke-virtual {v1}, Lcom/snapchat/android/model/FriendAction$BlockReason;->getCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lqg$b;->b(Ljava/lang/Integer;)V

    .line 220
    :cond_4
    invoke-static {v0}, Lqg;->buildAuthPayload(Lbhy;)Lbhy;

    move-result-object v0

    return-object v0
.end method

.method public synthetic onJsonResult(Ljava/lang/Object;Lus;)V
    .locals 1

    .prologue
    .line 43
    check-cast p1, Lbli;

    new-instance v0, Lqg$1;

    invoke-direct {v0, p0, p2, p1}, Lqg$1;-><init>(Lqg;Lus;Lbli;)V

    invoke-static {v0}, Lbhp;->a(Ljava/lang/Runnable;)V

    return-void
.end method
