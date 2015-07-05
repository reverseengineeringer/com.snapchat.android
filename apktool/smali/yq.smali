.class public final Lyq;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lyq$3;
    }
.end annotation


# static fields
.field private static k:Lyq;


# instance fields
.field final a:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Lcom/snapchat/android/model/chat/ChatConversation;",
            "Ljava/util/List",
            "<",
            "Lbhf;",
            ">;>;"
        }
    .end annotation
.end field

.field final b:Lnm;

.field final c:Lyn;

.field protected d:Lya;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lbhl;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Lajn;

.field private final h:Ltd;

.field private final i:Lnj;

.field private final j:Lna;


# direct methods
.method private constructor <init>()V
    .locals 6

    .prologue
    .line 113
    invoke-static {}, Lajn;->a()Lajn;

    move-result-object v1

    invoke-static {}, Lyn;->a()Lyn;

    move-result-object v2

    invoke-static {}, Ltd;->a()Ltd;

    move-result-object v3

    invoke-static {}, Lnj;->a()Lnj;

    move-result-object v4

    invoke-static {}, Lna;->a()Lna;

    move-result-object v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lyq;-><init>(Lajn;Lyn;Ltd;Lnj;Lna;)V

    .line 116
    return-void
.end method

.method private constructor <init>(Lajn;Lyn;Ltd;Lnj;Lna;)V
    .locals 1
    .param p1    # Lajn;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p2    # Lyn;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p3    # Ltd;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p4    # Lnj;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p5    # Lna;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lyq;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lyq;->e:Ljava/util/List;

    .line 99
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lyq;->f:Ljava/util/Map;

    .line 100
    new-instance v0, Lnm;

    invoke-direct {v0}, Lnm;-><init>()V

    iput-object v0, p0, Lyq;->b:Lnm;

    .line 123
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/SnapchatApplication;->c()Laza;

    move-result-object v0

    invoke-interface {v0, p0}, Laza;->a(Lyq;)V

    .line 124
    iput-object p1, p0, Lyq;->g:Lajn;

    .line 125
    iput-object p2, p0, Lyq;->c:Lyn;

    .line 126
    iput-object p3, p0, Lyq;->h:Ltd;

    .line 127
    iput-object p4, p0, Lyq;->i:Lnj;

    .line 128
    iput-object p5, p0, Lyq;->j:Lna;

    .line 129
    return-void
.end method

.method public static declared-synchronized a()Lyq;
    .locals 2

    .prologue
    .line 132
    const-class v1, Lyq;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lyq;->k:Lyq;

    if-nez v0, :cond_0

    .line 133
    new-instance v0, Lyq;

    invoke-direct {v0}, Lyq;-><init>()V

    sput-object v0, Lyq;->k:Lyq;

    .line 135
    :cond_0
    sget-object v0, Lyq;->k:Lyq;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 132
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(Laji;)V
    .locals 4
    .param p0    # Laji;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 732
    :try_start_0
    new-instance v1, Lyt;

    invoke-direct {v1}, Lyt;-><init>()V

    iget-object v0, v1, Lyt;->a:Lajn;

    invoke-virtual {v0}, Lajn;->e()Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-virtual {p0}, Laji;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laim;

    if-nez v0, :cond_1

    new-instance v0, Loa;

    const-string v1, "AnnotatedMediabryo was null"

    invoke-direct {v0, v1}, Loa;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Loa; {:try_start_0 .. :try_end_0} :catch_0

    .line 733
    :catch_0
    move-exception v0

    .line 734
    invoke-virtual {p0}, Laji;->p()V

    .line 735
    const v1, 0x7f0c012d

    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/snapchat/android/util/AlertDialogUtils;->a(ILandroid/content/Context;)V

    .line 736
    new-instance v1, Lcom/snapchat/android/analytics/framework/ErrorMetric;

    invoke-virtual {v0}, Loa;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/snapchat/android/analytics/framework/ErrorMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/snapchat/android/analytics/framework/ErrorMetric;->a(Ljava/lang/Throwable;)Lcom/snapchat/android/analytics/framework/ErrorMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/ErrorMetric;->d()V

    .line 738
    :cond_0
    :goto_0
    return-void

    .line 732
    :cond_1
    :try_start_1
    const-string v2, "SEND_SNAP_RETRY"

    invoke-static {v2}, Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;->a(Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Z)V

    invoke-virtual {p0}, Laji;->q()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lajx;->l()Ljava/lang/String;

    move-result-object v1

    iget-object v0, v0, Lcom/snapchat/android/model/Mediabryo;->mMediaMailingMetadata:Lcom/snapchat/android/model/MediaMailingMetadata;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/snapchat/android/model/MediaMailingMetadata;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Laxi;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lym;->a(Ljava/lang/String;)Lcom/snapchat/android/model/chat/ChatConversation;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/snapchat/android/model/chat/ChatConversation;->b(Lcom/snapchat/android/model/chat/ChatFeedItem;)V

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lyt;->a(Laim;ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Laji;->g()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Laji;->mTimeOfLastSendAttempt:J

    invoke-static {}, Lban;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lbdq;

    invoke-direct {v1}, Lbdq;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V
    :try_end_1
    .catch Loa; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private a(Lcom/snapchat/android/model/chat/ChatConversation;Lbhf;)V
    .locals 2
    .param p1    # Lcom/snapchat/android/model/chat/ChatConversation;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p2    # Lbhf;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 906
    iget-object v0, p0, Lyq;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 907
    if-nez v0, :cond_0

    .line 908
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 909
    iget-object v1, p0, Lyq;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 911
    :cond_0
    monitor-enter v0

    .line 912
    :try_start_0
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 913
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static declared-synchronized b()V
    .locals 2

    .prologue
    .line 139
    const-class v0, Lyq;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    sput-object v1, Lyq;->k:Lyq;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    monitor-exit v0

    return-void

    .line 139
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public final a(Lbhl;Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback;)V
    .locals 2
    .param p1    # Lbhl;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p2    # Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback;
        .annotation build Lcgc;
        .end annotation
    .end param

    .prologue
    .line 977
    iget-object v0, p0, Lyq;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 978
    iget-object v0, p0, Lyq;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 979
    iget-object v0, p0, Lyq;->f:Ljava/util/Map;

    invoke-virtual {p1}, Lbhl;->k()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 981
    :cond_0
    return-void
.end method

.method public final a(Lcom/snapchat/android/model/chat/ChatConversation;)V
    .locals 6
    .param p1    # Lcom/snapchat/android/model/chat/ChatConversation;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 745
    invoke-static {}, Lale;->a()Lale;

    move-result-object v0

    invoke-virtual {v0}, Lale;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 746
    invoke-static {}, Lban;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lbbg;

    sget-object v2, Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback$Status;->NO_CONNECTION:Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback$Status;

    const-string v3, "SendingMailman"

    invoke-direct {v1, v2, v3}, Lbbg;-><init>(Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback$Status;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 777
    :goto_0
    return-void

    .line 751
    :cond_0
    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/ChatConversation;->o()Ljava/util/List;

    move-result-object v1

    .line 752
    monitor-enter v1

    .line 757
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 758
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 759
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/chat/ChatFeedItem;

    .line 760
    invoke-interface {v0}, Lcom/snapchat/android/model/chat/ChatFeedItem;->O()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Lcom/snapchat/android/model/chat/ChatFeedItem;->Q()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 761
    instance-of v4, v0, Laji;

    if-eqz v4, :cond_2

    .line 762
    check-cast v0, Laji;

    invoke-static {v0}, Lyq;->a(Laji;)V

    goto :goto_1

    .line 775
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 763
    :cond_2
    :try_start_1
    instance-of v4, v0, Lakh;

    if-eqz v4, :cond_3

    .line 764
    new-instance v4, Lys;

    invoke-direct {v4}, Lys;-><init>()V

    check-cast v0, Lakh;

    invoke-virtual {v4, v0}, Lys;->a(Lakh;)V

    goto :goto_1

    .line 765
    :cond_3
    instance-of v4, v0, Lakb;

    if-eqz v4, :cond_4

    invoke-interface {v0}, Lcom/snapchat/android/model/chat/ChatFeedItem;->j()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p1, Lcom/snapchat/android/model/chat/ChatConversation;->mMyUsername:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 767
    check-cast v0, Lakb;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {p0, p1, v0, v4, v5}, Lyq;->a(Lcom/snapchat/android/model/chat/ChatConversation;Lakb;ZZ)V

    goto :goto_1

    .line 769
    :cond_4
    instance-of v4, v0, Lcom/snapchat/android/model/chat/CashFeedItem;

    if-eqz v4, :cond_1

    .line 770
    check-cast v0, Lcom/snapchat/android/model/chat/CashFeedItem;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 774
    :cond_5
    iget-object v0, p0, Lyq;->d:Lya;

    invoke-virtual {v0, p1, v2}, Lya;->a(Lcom/snapchat/android/model/chat/ChatConversation;Ljava/util/List;)V

    .line 775
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 776
    invoke-static {}, Lban;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lbaz;

    iget-object v2, p1, Lcom/snapchat/android/model/chat/ChatConversation;->mId:Ljava/lang/String;

    invoke-direct {v1, v2}, Lbaz;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final a(Lcom/snapchat/android/model/chat/ChatConversation;Lakb;)V
    .locals 8
    .param p1    # Lcom/snapchat/android/model/chat/ChatConversation;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p2    # Lakb;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 185
    sget-object v0, Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;->SENDING:Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;

    iput-object v0, p2, Lcom/snapchat/android/model/chat/StatefulChatFeedItem;->mSendReceiveStatus:Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;

    .line 186
    invoke-virtual {p2}, Lakb;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/snapchat/android/model/chat/ChatConversation;->j(Ljava/lang/String;)V

    .line 188
    invoke-virtual {p2}, Lakb;->n()Lbhf;

    move-result-object v1

    .line 189
    iget-object v2, p0, Lyq;->b:Lnm;

    iget-boolean v0, p1, Lcom/snapchat/android/model/chat/ChatConversation;->mEnteredConversationFromRecentStoryReply:Z

    new-instance v3, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v4, "CHAT_SENT_ATTEMPT"

    invoke-direct {v3, v4}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    const-string v4, "story_reply"

    if-eqz v0, :cond_2

    const-string v0, "1"

    :goto_0
    invoke-virtual {v3, v4, v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->d()V

    invoke-virtual {v1}, Lbhf;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "CHAT_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lbhf;->a()Lbij;

    move-result-object v4

    invoke-virtual {v4}, Lbij;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_SENT_ATTEMPT"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->d()V

    :cond_0
    invoke-static {}, Lbfp;->b()Ljava/lang/String;

    move-result-object v0

    iget-object v2, v2, Lnm;->mSendingChatTimers:Ljava/util/HashMap;

    invoke-virtual {v1}, Lbhf;->c()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/snapchat/android/analytics/framework/EasyMetric;

    invoke-direct {v4}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>()V

    invoke-virtual {v4}, Lcom/snapchat/android/analytics/framework/EasyMetric;->b()Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v4

    const-string v5, "reachability"

    invoke-virtual {v4, v5, v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    invoke-static {}, Lcom/snapchat/android/analytics/AnalyticsEvents;->k()V

    .line 191
    invoke-static {p2}, Lna;->a(Lakb;)V

    .line 193
    iget-object v0, p1, Lcom/snapchat/android/model/chat/ChatConversation;->mSequenceNumberState:Lcom/snapchat/android/model/chat/ChatConversation$SequenceNumberState;

    sget-object v2, Lcom/snapchat/android/model/chat/ChatConversation$SequenceNumberState;->UPDATED:Lcom/snapchat/android/model/chat/ChatConversation$SequenceNumberState;

    if-eq v0, v2, :cond_3

    .line 195
    const-string v0, "SendingMailman"

    const-string v2, "CHAT-LOG: ADDING message to pending chat messages because sequence number is not updated (sendChat): %s"

    new-array v3, v7, [Ljava/lang/Object;

    aput-object v1, v3, v6

    invoke-static {v0, v2, v3}, Lcom/snapchat/android/Timber;->g(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 197
    invoke-direct {p0, p1, v1}, Lyq;->a(Lcom/snapchat/android/model/chat/ChatConversation;Lbhf;)V

    .line 198
    iget-object v0, p0, Lyq;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    invoke-static {v0}, Lcom/snapchat/android/analytics/AnalyticsEvents;->e(I)V

    .line 199
    invoke-virtual {p0, p1}, Lyq;->c(Lcom/snapchat/android/model/chat/ChatConversation;)V

    .line 207
    :goto_1
    iget-boolean v0, p1, Lcom/snapchat/android/model/chat/ChatConversation;->mIsStub:Z

    if-eqz v0, :cond_1

    .line 209
    iput-boolean v6, p1, Lcom/snapchat/android/model/chat/ChatConversation;->mIsStub:Z

    .line 212
    :cond_1
    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/ChatConversation;->u()V

    .line 213
    iget-object v0, p0, Lyq;->c:Lyn;

    invoke-virtual {v0, p1, v6}, Lyn;->a(Lcom/snapchat/android/model/chat/ChatConversation;Z)V

    .line 214
    invoke-static {}, Lban;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lbaz;

    iget-object v2, p1, Lcom/snapchat/android/model/chat/ChatConversation;->mId:Ljava/lang/String;

    invoke-direct {v1, v2, v7}, Lbaz;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 215
    invoke-static {}, Lban;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lbdd;

    invoke-direct {v1}, Lbdd;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 216
    iget-object v0, p0, Lyq;->i:Lnj;

    invoke-virtual {v0}, Lnj;->c()V

    .line 217
    return-void

    .line 189
    :cond_2
    const-string v0, "0"

    goto/16 :goto_0

    .line 201
    :cond_3
    invoke-virtual {p2}, Lakb;->s()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/snapchat/android/model/chat/ChatConversation;->a(J)J

    move-result-wide v2

    .line 202
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v0}, Lbhf;->a(Ljava/lang/Long;)V

    .line 203
    invoke-virtual {p2, v2, v3}, Lakb;->b(J)V

    .line 204
    invoke-virtual {p0, p1, v1}, Lyq;->a(Lcom/snapchat/android/model/chat/ChatConversation;Lbhl;)V

    goto :goto_1
.end method

.method public final a(Lcom/snapchat/android/model/chat/ChatConversation;Lakb;IZ)V
    .locals 4
    .param p1    # Lcom/snapchat/android/model/chat/ChatConversation;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p2    # Lakb;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 401
    invoke-static {}, Lajx;->l()Ljava/lang/String;

    move-result-object v0

    .line 402
    if-nez v0, :cond_0

    .line 423
    :goto_0
    return-void

    .line 403
    :cond_0
    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/ChatConversation;->y()Ljava/util/List;

    move-result-object v1

    .line 404
    iget-object v2, p1, Lcom/snapchat/android/model/chat/ChatConversation;->mMessagingAuthToken:Lbix;

    .line 406
    sget-object v3, Lbii$a;->MESSAGE_STATE:Lbii$a;

    invoke-static {v3, v0, v1, v2}, Lasz;->a(Lbii$a;Ljava/lang/String;Ljava/util/List;Lbix;)Lbhl;

    move-result-object v0

    check-cast v0, Lbik;

    .line 411
    invoke-virtual {p2}, Lakb;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbik;->a(Ljava/lang/String;)V

    .line 412
    if-eqz p4, :cond_1

    const-string v1, "saved"

    :goto_1
    invoke-virtual {v0, v1}, Lbik;->b(Ljava/lang/String;)V

    .line 413
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbik;->a(Ljava/lang/Integer;)V

    .line 415
    invoke-virtual {v0}, Lbik;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lakb;->a(Ljava/lang/String;)V

    .line 416
    invoke-virtual {p0, p1, v0}, Lyq;->a(Lcom/snapchat/android/model/chat/ChatConversation;Lbhl;)V

    .line 418
    if-eqz p4, :cond_2

    .line 419
    invoke-static {p2}, Lna;->c(Lakb;)V

    goto :goto_0

    .line 412
    :cond_1
    const-string v1, "unsaved"

    goto :goto_1

    .line 421
    :cond_2
    invoke-static {p2}, Lna;->d(Lakb;)V

    goto :goto_0
.end method

.method public final a(Lcom/snapchat/android/model/chat/ChatConversation;Lakb;ZZ)V
    .locals 9
    .param p1    # Lcom/snapchat/android/model/chat/ChatConversation;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p2    # Lakb;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    const v6, 0x7f0c012d

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 599
    iget-object v0, p2, Lcom/snapchat/android/model/chat/StatefulChatFeedItem;->mSendReceiveStatus:Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;

    sget-object v1, Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;->SENT:Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;

    if-ne v0, v1, :cond_1

    .line 695
    :cond_0
    :goto_0
    return-void

    .line 601
    :cond_1
    invoke-static {}, Lajx;->l()Ljava/lang/String;

    move-result-object v2

    .line 602
    if-eqz v2, :cond_0

    .line 604
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/snapchat/android/model/chat/ChatConversation;->b(J)J

    move-result-wide v4

    .line 605
    invoke-virtual {p2}, Lakb;->n()Lbhf;

    move-result-object v0

    .line 606
    iget-object v3, p1, Lcom/snapchat/android/model/chat/ChatConversation;->mMessagingAuthToken:Lbix;

    .line 608
    if-nez v0, :cond_4

    .line 610
    instance-of v0, p2, Lcom/snapchat/android/model/chat/ChatMedia;

    if-eqz v0, :cond_6

    move-object v0, p2

    .line 611
    check-cast v0, Lcom/snapchat/android/model/chat/ChatMedia;

    .line 614
    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/ChatMedia;->B()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    .line 617
    invoke-virtual {p1, v0}, Lcom/snapchat/android/model/chat/ChatConversation;->b(Lcom/snapchat/android/model/chat/ChatFeedItem;)V

    .line 619
    iget-object v1, p0, Lyq;->g:Lajn;

    invoke-virtual {v1}, Lajn;->h()Ljava/util/LinkedHashMap;

    move-result-object v1

    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/ChatMedia;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laim;

    .line 620
    if-nez v0, :cond_2

    .line 621
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/snapchat/android/util/AlertDialogUtils;->a(ILandroid/content/Context;)V

    .line 630
    :goto_1
    if-eqz p4, :cond_0

    .line 631
    invoke-static {}, Lban;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lben;

    invoke-direct {v1}, Lben;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 632
    invoke-static {}, Lban;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lbaz;

    iget-object v2, p1, Lcom/snapchat/android/model/chat/ChatConversation;->mId:Ljava/lang/String;

    invoke-direct {v1, v2}, Lbaz;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 624
    :cond_2
    :try_start_0
    new-instance v1, Lpj;

    invoke-direct {v1, v0}, Lpj;-><init>(Laim;)V

    sget-object v0, Lauh;->NETWORK_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lpj;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Lph$a; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 627
    :catch_0
    move-exception v0

    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/snapchat/android/util/AlertDialogUtils;->a(ILandroid/content/Context;)V

    goto :goto_1

    .line 637
    :cond_3
    new-instance v1, Lbih;

    invoke-direct {v1}, Lbih;-><init>()V

    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/ChatMedia;->E()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lbih;->c(Ljava/lang/String;)Lbih;

    move-result-object v1

    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/ChatMedia;->D()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lbih;->b(Ljava/lang/String;)Lbih;

    move-result-object v1

    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/ChatMedia;->B()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lbih;->a(Ljava/lang/String;)Lbih;

    move-result-object v1

    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/ChatMedia;->F()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v6}, Lbih;->a(Ljava/lang/Integer;)Lbih;

    move-result-object v1

    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/ChatMedia;->G()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Lbih;->b(Ljava/lang/Integer;)Lbih;

    move-result-object v0

    .line 644
    new-instance v1, Lbij;

    invoke-direct {v1}, Lbij;-><init>()V

    sget-object v6, Lbij$a;->MEDIA:Lbij$a;

    invoke-virtual {v6}, Lbij$a;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lbij;->a(Ljava/lang/String;)Lbij;

    move-result-object v1

    invoke-virtual {v1, v0}, Lbij;->a(Lbih;)Lbij;

    move-result-object v0

    move-object v1, v0

    .line 658
    :goto_2
    sget-object v0, Lbii$a;->CHAT_MESSAGE:Lbii$a;

    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/ChatConversation;->y()Ljava/util/List;

    move-result-object v6

    invoke-static {v0, v2, v6, v3}, Lasz;->a(Lbii$a;Ljava/lang/String;Ljava/util/List;Lbix;)Lbhl;

    move-result-object v0

    check-cast v0, Lbhf;

    .line 663
    invoke-virtual {p2}, Lakb;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lbhf;->a(Ljava/lang/String;)V

    .line 664
    invoke-virtual {v0, v1}, Lbhf;->a(Lbij;)V

    .line 665
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbhf;->b(Ljava/lang/Long;)V

    .line 667
    invoke-virtual {v0}, Lbhf;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lakb;->a(Ljava/lang/String;)V

    .line 668
    invoke-virtual {p2, v0}, Lakb;->a(Lbhf;)V

    .line 669
    invoke-virtual {p2, v4, v5}, Lakb;->c(J)V

    .line 671
    :cond_4
    invoke-virtual {v0}, Lbhf;->g()Lbib;

    move-result-object v1

    invoke-virtual {v1, v3}, Lbib;->a(Lbix;)V

    .line 672
    sget-object v1, Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;->SENDING:Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;

    iput-object v1, p2, Lcom/snapchat/android/model/chat/StatefulChatFeedItem;->mSendReceiveStatus:Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;

    .line 673
    if-eqz p3, :cond_5

    .line 674
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbhf;->b(Ljava/lang/Long;)V

    .line 675
    invoke-virtual {p2, v4, v5}, Lakb;->c(J)V

    .line 677
    :cond_5
    iget-object v1, p1, Lcom/snapchat/android/model/chat/ChatConversation;->mFailedChatMessages:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 678
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbhf;->a(Ljava/lang/Boolean;)V

    .line 679
    iget-object v1, p1, Lcom/snapchat/android/model/chat/ChatConversation;->mSequenceNumberState:Lcom/snapchat/android/model/chat/ChatConversation$SequenceNumberState;

    sget-object v2, Lcom/snapchat/android/model/chat/ChatConversation$SequenceNumberState;->UPDATED:Lcom/snapchat/android/model/chat/ChatConversation$SequenceNumberState;

    if-eq v1, v2, :cond_9

    .line 680
    const-string v1, "SendingMailman"

    const-string v2, "CHAT-LOG: ADDING message to pending chat messages because sequence number is not updated (retrySendingChat): %s"

    new-array v3, v8, [Ljava/lang/Object;

    aput-object v0, v3, v7

    invoke-static {v1, v2, v3}, Lcom/snapchat/android/Timber;->g(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 682
    invoke-direct {p0, p1, v0}, Lyq;->a(Lcom/snapchat/android/model/chat/ChatConversation;Lbhf;)V

    .line 683
    iget-object v0, p0, Lyq;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    invoke-static {v0}, Lcom/snapchat/android/analytics/AnalyticsEvents;->e(I)V

    .line 684
    invoke-virtual {p0, p1}, Lyq;->c(Lcom/snapchat/android/model/chat/ChatConversation;)V

    .line 691
    :goto_3
    if-eqz p4, :cond_0

    .line 692
    invoke-static {}, Lban;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lben;

    invoke-direct {v1}, Lben;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 693
    invoke-static {}, Lban;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lbaz;

    iget-object v2, p1, Lcom/snapchat/android/model/chat/ChatConversation;->mId:Ljava/lang/String;

    invoke-direct {v1, v2}, Lbaz;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 648
    :cond_6
    instance-of v0, p2, Laki;

    if-eqz v0, :cond_7

    .line 649
    new-instance v0, Lbij;

    invoke-direct {v0}, Lbij;-><init>()V

    sget-object v1, Lbij$a;->TEXT:Lbij$a;

    invoke-virtual {v1}, Lbij$a;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbij;->a(Ljava/lang/String;)Lbij;

    move-result-object v0

    invoke-virtual {p2}, Lakb;->al()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbij;->b(Ljava/lang/String;)Lbij;

    move-result-object v0

    move-object v1, v0

    goto/16 :goto_2

    .line 652
    :cond_7
    instance-of v0, p2, Lakg;

    if-eqz v0, :cond_8

    .line 653
    new-instance v0, Lbij;

    invoke-direct {v0}, Lbij;-><init>()V

    sget-object v1, Lbij$a;->SCREENSHOT:Lbij$a;

    invoke-virtual {v1}, Lbij$a;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbij;->a(Ljava/lang/String;)Lbij;

    move-result-object v0

    move-object v1, v0

    goto/16 :goto_2

    .line 655
    :cond_8
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown chat type (well this should never happen...): "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 686
    :cond_9
    invoke-virtual {p2}, Lakb;->s()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/snapchat/android/model/chat/ChatConversation;->a(J)J

    move-result-wide v2

    .line 687
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbhf;->a(Ljava/lang/Long;)V

    .line 688
    invoke-virtual {p2, v2, v3}, Lakb;->b(J)V

    .line 689
    invoke-virtual {p0, p1, v0}, Lyq;->a(Lcom/snapchat/android/model/chat/ChatConversation;Lbhl;)V

    goto :goto_3
.end method

.method public final a(Lcom/snapchat/android/model/chat/ChatConversation;Lbhl;)V
    .locals 8
    .param p1    # Lcom/snapchat/android/model/chat/ChatConversation;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p2    # Lbhl;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 226
    instance-of v0, p2, Lbhf;

    if-eqz v0, :cond_0

    .line 227
    const-string v0, "CHAT_SEND_REQUEST_LATENCY"

    invoke-virtual {p2}, Lbhl;->k()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/snapchat/android/analytics/AnalyticsEvents;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    :cond_0
    new-instance v3, Lyq$1;

    invoke-direct {v3, p0, p2, p1}, Lyq$1;-><init>(Lyq;Lbhl;Lcom/snapchat/android/model/chat/ChatConversation;)V

    .line 239
    instance-of v0, p2, Lbhf;

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/snapchat/android/model/chat/ChatConversation;->mTheirUsername:Ljava/lang/String;

    invoke-static {v0}, Latm;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 241
    sget-object v0, Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback$Status;->NOT_FRIENDS:Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback$Status;

    const-string v1, ""

    invoke-interface {v3, v2, v0, v1}, Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback;->a(ZLcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback$Status;Ljava/lang/String;)V

    .line 283
    :goto_1
    return-void

    .line 239
    :cond_1
    instance-of v0, p2, Lbik;

    if-eqz v0, :cond_2

    move-object v0, p2

    check-cast v0, Lbik;

    invoke-virtual {v0}, Lbik;->b()Ljava/lang/String;

    move-result-object v0

    sget-object v4, Lbik$a;->SAVED:Lbik$a;

    invoke-virtual {v4}, Lbik$a;->name()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_0

    .line 246
    :cond_3
    iget-object v0, p1, Lcom/snapchat/android/model/chat/ChatConversation;->mFailedReleaseMessages:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, p1, Lcom/snapchat/android/model/chat/ChatConversation;->mMessagingAuthToken:Lbix;

    if-eqz v4, :cond_4

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iget-object v0, p1, Lcom/snapchat/android/model/chat/ChatConversation;->mFailedReleaseMessages:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbit;

    invoke-virtual {v0}, Lbit;->g()Lbib;

    move-result-object v6

    invoke-virtual {v6, v4}, Lbib;->a(Lbix;)V

    invoke-virtual {p0, p1, v0}, Lyq;->a(Lcom/snapchat/android/model/chat/ChatConversation;Lbhl;)V

    goto :goto_2

    .line 248
    :cond_4
    invoke-virtual {p2}, Lbhl;->g()Lbib;

    move-result-object v0

    .line 249
    iget-wide v4, p1, Lcom/snapchat/android/model/chat/ChatConversation;->mMyLastConnSeqNum:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    iput-wide v4, p1, Lcom/snapchat/android/model/chat/ChatConversation;->mMyLastConnSeqNum:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v4}, Lbib;->a(Ljava/lang/Long;)V

    .line 250
    iget-object v4, p1, Lcom/snapchat/android/model/chat/ChatConversation;->mSendingMessages:Ljava/util/Set;

    monitor-enter v4

    :try_start_0
    iget-object v5, p1, Lcom/snapchat/android/model/chat/ChatConversation;->mSendingMessages:Ljava/util/Set;

    invoke-interface {v5, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 251
    iget-object v4, p1, Lcom/snapchat/android/model/chat/ChatConversation;->mMessagingAuthToken:Lbix;

    .line 252
    invoke-virtual {v0}, Lbib;->d()Lbix;

    move-result-object v5

    if-nez v5, :cond_6

    if-eqz v4, :cond_6

    .line 253
    invoke-virtual {v0, v4}, Lbib;->a(Lbix;)V

    .line 264
    :cond_5
    invoke-static {}, Lcom/snapchat/android/LandingPageActivity;->i()Lcom/snapchat/android/util/chat/SecureChatService;

    move-result-object v0

    .line 265
    if-nez v0, :cond_8

    .line 266
    invoke-static {p2}, Lasz;->a(Lbii;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 269
    const-string v0, "SendingMailman"

    const-string v4, "CHAT-LOG: Adding message to pending messages because SecureChatService is null %s"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v2

    invoke-static {v0, v4, v1}, Lcom/snapchat/android/Timber;->g(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 271
    invoke-virtual {p0, p2, v3}, Lyq;->a(Lbhl;Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback;)V

    goto/16 :goto_1

    .line 250
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 254
    :cond_6
    if-nez v4, :cond_5

    .line 255
    new-instance v0, Lpr;

    iget-object v4, p1, Lcom/snapchat/android/model/chat/ChatConversation;->mId:Ljava/lang/String;

    invoke-direct {v0, v4}, Lpr;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lpr;->f()V

    .line 257
    instance-of v0, p2, Lbit;

    if-nez v0, :cond_5

    .line 258
    sget-object v0, Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback$Status;->NOT_FRIENDS:Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback$Status;

    const-string v1, ""

    invoke-interface {v3, v2, v0, v1}, Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback;->a(ZLcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback$Status;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 273
    :cond_7
    sget-object v0, Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback$Status;->NO_CONNECTION:Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback$Status;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "SCCP connection unavailable - can\'t send "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lbhl;->i()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v2, v0, v1}, Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback;->a(ZLcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback$Status;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 278
    :cond_8
    instance-of v1, p2, Lbhf;

    if-eqz v1, :cond_9

    invoke-static {}, Lyf;->a()Lyf;

    move-result-object v1

    iget-boolean v1, v1, Lyf;->d:Z

    if-eqz v1, :cond_9

    .line 279
    iget v1, p1, Lcom/snapchat/android/model/chat/ChatConversation;->mNumSCCPChatMessagesSendingOrSent:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p1, Lcom/snapchat/android/model/chat/ChatConversation;->mNumSCCPChatMessagesSendingOrSent:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, p1, Lcom/snapchat/android/model/chat/ChatConversation;->mLastSCCPMessageSentTimestamp:J

    .line 281
    :cond_9
    invoke-virtual {v0, p2, v3}, Lcom/snapchat/android/util/chat/SecureChatService;->a(Lbhl;Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback;)V

    goto/16 :goto_1
.end method

.method public final a(Lcom/snapchat/android/model/chat/ChatConversation;Lbhl;Z)V
    .locals 4
    .param p1    # Lcom/snapchat/android/model/chat/ChatConversation;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p2    # Lbhl;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x0

    .line 862
    const/4 v0, 0x0

    .line 863
    instance-of v1, p2, Lbhf;

    if-eqz v1, :cond_3

    .line 864
    check-cast p2, Lbhf;

    .line 865
    invoke-virtual {p2}, Lbhf;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/snapchat/android/model/chat/ChatConversation;->f(Ljava/lang/String;)Lakb;

    move-result-object v0

    .line 866
    if-eqz v0, :cond_0

    .line 867
    sget-object v1, Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;->FAILED:Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;

    iput-object v1, v0, Lcom/snapchat/android/model/chat/StatefulChatFeedItem;->mSendReceiveStatus:Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;

    .line 869
    :cond_0
    iget-object v1, p1, Lcom/snapchat/android/model/chat/ChatConversation;->mFailedChatMessages:Ljava/util/Set;

    invoke-interface {v1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 870
    invoke-static {}, Lcom/snapchat/android/notification/AndroidNotificationManager;->a()Lcom/snapchat/android/notification/AndroidNotificationManager;

    move-result-object v1

    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Lcom/snapchat/android/notification/AndroidNotificationManager;->a(Landroid/content/Context;Z)V

    .line 879
    :cond_1
    :goto_0
    if-eqz p3, :cond_2

    .line 880
    iget-object v1, p0, Lyq;->c:Lyn;

    invoke-virtual {v1, p1, v3}, Lyn;->a(Lcom/snapchat/android/model/chat/ChatConversation;Z)V

    .line 881
    invoke-static {}, Lban;->a()Lcom/squareup/otto/Bus;

    move-result-object v1

    new-instance v2, Lben;

    invoke-direct {v2}, Lben;-><init>()V

    invoke-virtual {v1, v2}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 882
    if-eqz v0, :cond_2

    .line 883
    invoke-static {}, Lban;->a()Lcom/squareup/otto/Bus;

    move-result-object v1

    new-instance v2, Lbaz;

    iget-object v3, p1, Lcom/snapchat/android/model/chat/ChatConversation;->mId:Ljava/lang/String;

    invoke-virtual {v0}, Lakb;->d()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lbaz;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 886
    :cond_2
    :goto_1
    return-void

    .line 871
    :cond_3
    instance-of v1, p2, Lbik;

    if-eqz v1, :cond_4

    .line 872
    check-cast p2, Lbik;

    invoke-static {p1, p2, v3}, Laxi;->a(Lcom/snapchat/android/model/chat/ChatConversation;Lbik;Z)Lakb;

    move-result-object v0

    goto :goto_0

    .line 873
    :cond_4
    instance-of v1, p2, Lbit;

    if-eqz v1, :cond_5

    .line 874
    check-cast p2, Lbit;

    iget-object v1, p1, Lcom/snapchat/android/model/chat/ChatConversation;->mFailedReleaseMessages:Ljava/util/Set;

    invoke-interface {v1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 875
    :cond_5
    instance-of v1, p2, Lbir;

    if-eqz v1, :cond_1

    goto :goto_1
.end method

.method public final a(Lcom/snapchat/android/model/chat/ChatConversation;Ljava/util/Map;Ljava/util/Map;Lbit$a;)V
    .locals 4
    .param p1    # Lcom/snapchat/android/model/chat/ChatConversation;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p3    # Ljava/util/Map;
        .annotation build Lcgb;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/snapchat/android/model/chat/ChatConversation;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;",
            "Lbit$a;",
            ")V"
        }
    .end annotation

    .prologue
    .line 574
    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p3}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 588
    :cond_0
    :goto_0
    return-void

    .line 576
    :cond_1
    invoke-static {}, Lajx;->l()Ljava/lang/String;

    move-result-object v0

    .line 577
    if-eqz v0, :cond_0

    .line 579
    sget-object v1, Lbii$a;->MESSAGE_RELEASE:Lbii$a;

    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/ChatConversation;->y()Ljava/util/List;

    move-result-object v2

    iget-object v3, p1, Lcom/snapchat/android/model/chat/ChatConversation;->mMessagingAuthToken:Lbix;

    invoke-static {v1, v0, v2, v3}, Lasz;->a(Lbii$a;Ljava/lang/String;Ljava/util/List;Lbix;)Lbhl;

    move-result-object v0

    check-cast v0, Lbit;

    .line 584
    invoke-virtual {p4}, Lbit$a;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbit;->a(Ljava/lang/String;)V

    .line 585
    invoke-virtual {v0, p2}, Lbit;->a(Ljava/util/Map;)V

    .line 586
    invoke-virtual {v0, p3}, Lbit;->b(Ljava/util/Map;)V

    .line 587
    invoke-virtual {p0, p1, v0}, Lyq;->a(Lcom/snapchat/android/model/chat/ChatConversation;Lbhl;)V

    goto :goto_0
.end method

.method public final a(Lcom/snapchat/android/model/chat/ChatConversation;ZZZ)V
    .locals 5
    .param p1    # Lcom/snapchat/android/model/chat/ChatConversation;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 545
    invoke-static {}, Lajx;->l()Ljava/lang/String;

    move-result-object v0

    .line 546
    if-nez v0, :cond_0

    .line 560
    :goto_0
    return-void

    .line 548
    :cond_0
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    .line 549
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 550
    iget-object v2, p1, Lcom/snapchat/android/model/chat/ChatConversation;->mTheirUsername:Ljava/lang/String;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 551
    sget-object v2, Lbii$a;->PRESENCE:Lbii$a;

    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/ChatConversation;->y()Ljava/util/List;

    move-result-object v3

    iget-object v4, p1, Lcom/snapchat/android/model/chat/ChatConversation;->mMessagingAuthToken:Lbix;

    invoke-static {v2, v0, v3, v4}, Lasz;->a(Lbii$a;Ljava/lang/String;Ljava/util/List;Lbix;)Lbhl;

    move-result-object v0

    check-cast v0, Lbir;

    .line 556
    invoke-virtual {v0, v1}, Lbir;->a(Ljava/util/Map;)V

    .line 557
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbir;->c(Ljava/lang/Boolean;)V

    .line 558
    invoke-static {}, Lasu;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/snapchat/android/ui/here/LocalPreview;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbir;->b(Ljava/lang/Boolean;)V

    .line 559
    invoke-virtual {p0, p1, v0}, Lyq;->a(Lcom/snapchat/android/model/chat/ChatConversation;Lbhl;)V

    goto :goto_0

    .line 558
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public final b(Lcom/snapchat/android/model/chat/ChatConversation;)V
    .locals 5
    .param p1    # Lcom/snapchat/android/model/chat/ChatConversation;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    const/4 v4, 0x0

    .line 921
    iget-object v0, p0, Lyq;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 922
    if-eqz v0, :cond_3

    .line 923
    const/4 v1, 0x0

    .line 924
    monitor-enter v0

    .line 928
    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p1, Lcom/snapchat/android/model/chat/ChatConversation;->mSequenceNumberState:Lcom/snapchat/android/model/chat/ChatConversation$SequenceNumberState;

    sget-object v3, Lcom/snapchat/android/model/chat/ChatConversation$SequenceNumberState;->UPDATED:Lcom/snapchat/android/model/chat/ChatConversation$SequenceNumberState;

    if-ne v2, v3, :cond_0

    .line 930
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 931
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 933
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 935
    if-eqz v1, :cond_3

    .line 936
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbhf;

    .line 937
    invoke-virtual {v0}, Lbhf;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/snapchat/android/model/chat/ChatConversation;->f(Ljava/lang/String;)Lakb;

    move-result-object v0

    .line 938
    if-eqz v0, :cond_1

    .line 939
    invoke-virtual {p0, p1, v0, v4, v4}, Lyq;->a(Lcom/snapchat/android/model/chat/ChatConversation;Lakb;ZZ)V

    goto :goto_0

    .line 933
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 942
    :cond_2
    invoke-static {}, Lban;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lben;

    invoke-direct {v1}, Lben;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 943
    invoke-static {}, Lban;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lbaz;

    iget-object v2, p1, Lcom/snapchat/android/model/chat/ChatConversation;->mId:Ljava/lang/String;

    invoke-direct {v1, v2}, Lbaz;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 946
    :cond_3
    return-void
.end method

.method public final b(Lcom/snapchat/android/model/chat/ChatConversation;Lbhl;)V
    .locals 4
    .param p1    # Lcom/snapchat/android/model/chat/ChatConversation;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p2    # Lbhl;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x1

    .line 705
    invoke-virtual {p2}, Lbhl;->h()Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Laud;->a(Ljava/lang/Boolean;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 706
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p2, v0}, Lbhl;->a(Ljava/lang/Boolean;)V

    .line 707
    instance-of v0, p2, Lbhf;

    if-eqz v0, :cond_1

    move-object v0, p2

    .line 708
    check-cast v0, Lbhf;

    .line 709
    invoke-virtual {v0}, Lbhf;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/snapchat/android/model/chat/ChatConversation;->f(Ljava/lang/String;)Lakb;

    move-result-object v1

    .line 710
    if-nez v1, :cond_0

    .line 712
    invoke-virtual {p1, p2}, Lcom/snapchat/android/model/chat/ChatConversation;->a(Lbhl;)V

    .line 724
    :goto_0
    return-void

    .line 715
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/snapchat/android/model/chat/ChatConversation;->b(J)J

    move-result-wide v2

    .line 716
    invoke-virtual {v1, v2, v3}, Lakb;->c(J)V

    .line 717
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbhf;->b(Ljava/lang/Long;)V

    .line 719
    :cond_1
    invoke-virtual {p2}, Lbhl;->g()Lbib;

    move-result-object v0

    iget-object v1, p1, Lcom/snapchat/android/model/chat/ChatConversation;->mMessagingAuthToken:Lbix;

    invoke-virtual {v0, v1}, Lbib;->a(Lbix;)V

    .line 720
    invoke-virtual {p0, p1, p2}, Lyq;->a(Lcom/snapchat/android/model/chat/ChatConversation;Lbhl;)V

    goto :goto_0

    .line 722
    :cond_2
    invoke-virtual {p0, p1, p2, v1}, Lyq;->a(Lcom/snapchat/android/model/chat/ChatConversation;Lbhl;Z)V

    goto :goto_0
.end method

.method public final c()V
    .locals 5

    .prologue
    .line 989
    invoke-static {}, Lcom/snapchat/android/LandingPageActivity;->i()Lcom/snapchat/android/util/chat/SecureChatService;

    move-result-object v2

    .line 990
    if-nez v2, :cond_1

    .line 991
    const-string v0, "SendingMailman"

    const-string v1, "CHAT-LOG: Not sending pending messages because SecureChatService is null"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->g(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1003
    :cond_0
    return-void

    .line 995
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lyq;->e:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 996
    iget-object v1, p0, Lyq;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 997
    new-instance v3, Ljava/util/HashMap;

    iget-object v1, p0, Lyq;->f:Ljava/util/Map;

    invoke-direct {v3, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 998
    iget-object v1, p0, Lyq;->f:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 999
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbhl;

    .line 1000
    invoke-virtual {v0}, Lbhl;->k()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback;

    .line 1001
    invoke-virtual {v2, v0, v1}, Lcom/snapchat/android/util/chat/SecureChatService;->a(Lbhl;Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback;)V

    goto :goto_0
.end method

.method public final c(Lcom/snapchat/android/model/chat/ChatConversation;)V
    .locals 2
    .param p1    # Lcom/snapchat/android/model/chat/ChatConversation;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 1012
    iget-object v0, p1, Lcom/snapchat/android/model/chat/ChatConversation;->mSequenceNumberState:Lcom/snapchat/android/model/chat/ChatConversation$SequenceNumberState;

    sget-object v1, Lcom/snapchat/android/model/chat/ChatConversation$SequenceNumberState;->NOT_UPDATED:Lcom/snapchat/android/model/chat/ChatConversation$SequenceNumberState;

    if-eq v0, v1, :cond_0

    .line 1025
    :goto_0
    return-void

    .line 1014
    :cond_0
    sget-object v0, Lcom/snapchat/android/model/chat/ChatConversation$SequenceNumberState;->UPDATING:Lcom/snapchat/android/model/chat/ChatConversation$SequenceNumberState;

    iput-object v0, p1, Lcom/snapchat/android/model/chat/ChatConversation;->mSequenceNumberState:Lcom/snapchat/android/model/chat/ChatConversation$SequenceNumberState;

    .line 1015
    iget-object v0, p1, Lcom/snapchat/android/model/chat/ChatConversation;->mId:Ljava/lang/String;

    new-instance v1, Lyq$2;

    invoke-direct {v1, p0, p1}, Lyq$2;-><init>(Lyq;Lcom/snapchat/android/model/chat/ChatConversation;)V

    invoke-static {v0, v1}, Ltd;->a(Ljava/lang/String;Lcom/snapchat/android/api2/chat/LoadConversationPageTask$a;)V

    goto :goto_0
.end method
