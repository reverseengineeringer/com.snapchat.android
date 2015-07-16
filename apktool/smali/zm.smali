.class public final Lzm;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzm$3;
    }
.end annotation


# static fields
.field private static k:Lzm;


# instance fields
.field final a:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Lcom/snapchat/android/model/chat/ChatConversation;",
            "Ljava/util/List",
            "<",
            "Lbif;",
            ">;>;"
        }
    .end annotation
.end field

.field final b:Lod;

.field protected c:Lyw;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lbil;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/Map;
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

.field private final f:Laki;

.field private final g:Lzj;

.field private final h:Ltt;

.field private final i:Loa;

.field private final j:Lnr;


# direct methods
.method private constructor <init>()V
    .locals 6

    .prologue
    .line 114
    invoke-static {}, Laki;->a()Laki;

    move-result-object v1

    invoke-static {}, Lzj;->a()Lzj;

    move-result-object v2

    invoke-static {}, Ltt;->a()Ltt;

    move-result-object v3

    invoke-static {}, Loa;->a()Loa;

    move-result-object v4

    invoke-static {}, Lnr;->a()Lnr;

    move-result-object v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lzm;-><init>(Laki;Lzj;Ltt;Loa;Lnr;)V

    .line 117
    return-void
.end method

.method private constructor <init>(Laki;Lzj;Ltt;Loa;Lnr;)V
    .locals 1
    .param p1    # Laki;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p2    # Lzj;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p3    # Ltt;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p4    # Loa;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p5    # Lnr;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lzm;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lzm;->d:Ljava/util/List;

    .line 100
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lzm;->e:Ljava/util/Map;

    .line 101
    new-instance v0, Lod;

    invoke-direct {v0}, Lod;-><init>()V

    iput-object v0, p0, Lzm;->b:Lod;

    .line 124
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/SnapchatApplication;->c()Lazy;

    move-result-object v0

    invoke-interface {v0, p0}, Lazy;->a(Lzm;)V

    .line 125
    iput-object p1, p0, Lzm;->f:Laki;

    .line 126
    iput-object p2, p0, Lzm;->g:Lzj;

    .line 127
    iput-object p3, p0, Lzm;->h:Ltt;

    .line 128
    iput-object p4, p0, Lzm;->i:Loa;

    .line 129
    iput-object p5, p0, Lzm;->j:Lnr;

    .line 130
    return-void
.end method

.method public static declared-synchronized a()Lzm;
    .locals 2

    .prologue
    .line 133
    const-class v1, Lzm;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lzm;->k:Lzm;

    if-nez v0, :cond_0

    .line 134
    new-instance v0, Lzm;

    invoke-direct {v0}, Lzm;-><init>()V

    sput-object v0, Lzm;->k:Lzm;

    .line 136
    :cond_0
    sget-object v0, Lzm;->k:Lzm;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 133
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(Lake;Lcom/snapchat/android/model/chat/ChatConversation;)V
    .locals 4
    .param p0    # Lake;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p1    # Lcom/snapchat/android/model/chat/ChatConversation;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 739
    :try_start_0
    new-instance v1, Lzp;

    invoke-direct {v1}, Lzp;-><init>()V

    iget-object v0, v1, Lzp;->a:Laki;

    invoke-virtual {v0}, Laki;->e()Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-virtual {p0}, Lake;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laji;

    if-nez v0, :cond_1

    new-instance v0, Lor;

    const-string v1, "AnnotatedMediabryo was null"

    invoke-direct {v0, v1}, Lor;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lor; {:try_start_0 .. :try_end_0} :catch_0

    .line 740
    :catch_0
    move-exception v0

    .line 741
    invoke-virtual {p0}, Lake;->g()V

    .line 742
    sget-object v1, Lcom/snapchat/android/app/feature/messaging/feed/model/FeedIconChangeType;->FAILED_TO_SEND:Lcom/snapchat/android/app/feature/messaging/feed/model/FeedIconChangeType;

    invoke-virtual {p1, p0, v1}, Lcom/snapchat/android/model/chat/ChatConversation;->a(Lcom/snapchat/android/model/chat/ChatFeedItem;Lcom/snapchat/android/app/feature/messaging/feed/model/FeedIconChangeType;)V

    .line 743
    const v1, 0x7f0c012c

    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/snapchat/android/util/AlertDialogUtils;->a(ILandroid/content/Context;)V

    .line 744
    new-instance v1, Lcom/snapchat/android/analytics/framework/ErrorMetric;

    invoke-virtual {v0}, Lor;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/snapchat/android/analytics/framework/ErrorMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/snapchat/android/analytics/framework/ErrorMetric;->a(Ljava/lang/Throwable;)Lcom/snapchat/android/analytics/framework/ErrorMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/ErrorMetric;->e()V

    .line 746
    :cond_0
    :goto_0
    return-void

    .line 739
    :cond_1
    :try_start_1
    const-string v2, "SEND_SNAP_RETRY"

    invoke-static {v2}, Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;->a(Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Z)V

    invoke-virtual {p0}, Lake;->p()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lakr;->l()Ljava/lang/String;

    move-result-object v1

    iget-object v0, v0, Lcom/snapchat/android/model/Mediabryo;->mMediaMailingMetadata:Lcom/snapchat/android/model/MediaMailingMetadata;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/snapchat/android/model/MediaMailingMetadata;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Layg;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lzi;->a(Ljava/lang/String;)Lcom/snapchat/android/model/chat/ChatConversation;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/snapchat/android/model/chat/ChatConversation;->b(Lcom/snapchat/android/model/chat/ChatFeedItem;)V

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lzp;->a(Laji;ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lake;->h()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lake;->mTimeOfLastSendAttempt:J

    invoke-static {}, Lbbo;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lbeq;

    invoke-direct {v1}, Lbeq;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V
    :try_end_1
    .catch Lor; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private a(Lcom/snapchat/android/model/chat/ChatConversation;Lbif;)V
    .locals 2
    .param p1    # Lcom/snapchat/android/model/chat/ChatConversation;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p2    # Lbif;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 916
    iget-object v0, p0, Lzm;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 917
    if-nez v0, :cond_0

    .line 918
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 919
    iget-object v1, p0, Lzm;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 921
    :cond_0
    monitor-enter v0

    .line 922
    :try_start_0
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 923
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static a(Lcom/snapchat/android/model/chat/ChatConversation;Lbil;Z)V
    .locals 4
    .param p0    # Lcom/snapchat/android/model/chat/ChatConversation;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p1    # Lbil;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x0

    .line 871
    const/4 v0, 0x0

    .line 872
    instance-of v1, p1, Lbif;

    if-eqz v1, :cond_3

    .line 873
    check-cast p1, Lbif;

    .line 874
    invoke-virtual {p1}, Lbif;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/snapchat/android/model/chat/ChatConversation;->f(Ljava/lang/String;)Lakw;

    move-result-object v0

    .line 875
    if-eqz v0, :cond_0

    .line 876
    sget-object v1, Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;->FAILED:Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;

    iput-object v1, v0, Lcom/snapchat/android/model/chat/StatefulChatFeedItem;->mSendReceiveStatus:Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;

    .line 877
    if-eqz p2, :cond_0

    .line 878
    sget-object v1, Lcom/snapchat/android/app/feature/messaging/feed/model/FeedIconChangeType;->FAILED_TO_SEND:Lcom/snapchat/android/app/feature/messaging/feed/model/FeedIconChangeType;

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/android/model/chat/ChatConversation;->a(Lcom/snapchat/android/model/chat/ChatFeedItem;Lcom/snapchat/android/app/feature/messaging/feed/model/FeedIconChangeType;)V

    .line 881
    :cond_0
    iget-object v1, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mFailedChatMessages:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 882
    invoke-static {}, Lcom/snapchat/android/notification/AndroidNotificationManager;->a()Lcom/snapchat/android/notification/AndroidNotificationManager;

    move-result-object v1

    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Lcom/snapchat/android/notification/AndroidNotificationManager;->a(Landroid/content/Context;Z)V

    .line 891
    :cond_1
    :goto_0
    if-eqz p2, :cond_2

    .line 892
    if-eqz v0, :cond_2

    .line 893
    invoke-static {}, Lbbo;->a()Lcom/squareup/otto/Bus;

    move-result-object v1

    new-instance v2, Lbca;

    iget-object v3, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mId:Ljava/lang/String;

    invoke-virtual {v0}, Lakw;->d()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lbca;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 896
    :cond_2
    :goto_1
    return-void

    .line 883
    :cond_3
    instance-of v1, p1, Lbjk;

    if-eqz v1, :cond_4

    .line 884
    check-cast p1, Lbjk;

    invoke-static {p0, p1, v3}, Layg;->a(Lcom/snapchat/android/model/chat/ChatConversation;Lbjk;Z)Lakw;

    move-result-object v0

    goto :goto_0

    .line 885
    :cond_4
    instance-of v1, p1, Lbju;

    if-eqz v1, :cond_5

    .line 886
    check-cast p1, Lbju;

    iget-object v1, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mFailedReleaseMessages:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 887
    :cond_5
    instance-of v1, p1, Lbjr;

    if-eqz v1, :cond_1

    goto :goto_1
.end method

.method public static declared-synchronized b()V
    .locals 2

    .prologue
    .line 140
    const-class v0, Lzm;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    sput-object v1, Lzm;->k:Lzm;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    monitor-exit v0

    return-void

    .line 140
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public final a(Lbil;Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback;)V
    .locals 2
    .param p1    # Lbil;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p2    # Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback;
        .annotation build Lchd;
        .end annotation
    .end param

    .prologue
    .line 988
    iget-object v0, p0, Lzm;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 989
    iget-object v0, p0, Lzm;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 990
    iget-object v0, p0, Lzm;->e:Ljava/util/Map;

    invoke-virtual {p1}, Lbil;->k()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 992
    :cond_0
    return-void
.end method

.method public final a(Lcom/snapchat/android/model/chat/ChatConversation;)V
    .locals 6
    .param p1    # Lcom/snapchat/android/model/chat/ChatConversation;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 753
    invoke-static {}, Lama;->a()Lama;

    move-result-object v0

    invoke-virtual {v0}, Lama;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 754
    invoke-static {}, Lbbo;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lbcg;

    sget-object v2, Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback$Status;->NO_CONNECTION:Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback$Status;

    const-string v3, "SendingMailman"

    invoke-direct {v1, v2, v3}, Lbcg;-><init>(Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback$Status;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 786
    :goto_0
    return-void

    .line 759
    :cond_0
    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/ChatConversation;->o()Ljava/util/List;

    move-result-object v1

    .line 760
    monitor-enter v1

    .line 765
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 766
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 767
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

    .line 768
    invoke-interface {v0}, Lcom/snapchat/android/model/chat/ChatFeedItem;->P()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Lcom/snapchat/android/model/chat/ChatFeedItem;->R()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 769
    instance-of v4, v0, Lake;

    if-eqz v4, :cond_2

    .line 770
    check-cast v0, Lake;

    invoke-static {v0, p1}, Lzm;->a(Lake;Lcom/snapchat/android/model/chat/ChatConversation;)V

    goto :goto_1

    .line 784
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 771
    :cond_2
    :try_start_1
    instance-of v4, v0, Lalc;

    if-eqz v4, :cond_3

    .line 772
    new-instance v4, Lzo;

    invoke-direct {v4}, Lzo;-><init>()V

    check-cast v0, Lalc;

    invoke-virtual {v4, v0, p1}, Lzo;->a(Lalc;Lcom/snapchat/android/model/chat/ChatConversation;)V

    goto :goto_1

    .line 773
    :cond_3
    instance-of v4, v0, Lakw;

    if-eqz v4, :cond_4

    invoke-interface {v0}, Lcom/snapchat/android/model/chat/ChatFeedItem;->j()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p1, Lcom/snapchat/android/model/chat/ChatConversation;->mMyUsername:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 775
    check-cast v0, Lakw;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {p0, p1, v0, v4, v5}, Lzm;->a(Lcom/snapchat/android/model/chat/ChatConversation;Lakw;ZZ)V

    goto :goto_1

    .line 777
    :cond_4
    instance-of v4, v0, Lcom/snapchat/android/model/chat/CashFeedItem;

    if-eqz v4, :cond_1

    .line 778
    check-cast v0, Lcom/snapchat/android/model/chat/CashFeedItem;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 782
    :cond_5
    iget-object v0, p0, Lzm;->c:Lyw;

    invoke-virtual {v0, p1, v2}, Lyw;->a(Lcom/snapchat/android/model/chat/ChatConversation;Ljava/util/List;)V

    .line 783
    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/ChatConversation;->r()V

    .line 784
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 785
    invoke-static {}, Lbbo;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lbca;

    iget-object v2, p1, Lcom/snapchat/android/model/chat/ChatConversation;->mId:Ljava/lang/String;

    invoke-direct {v1, v2}, Lbca;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method public final a(Lcom/snapchat/android/model/chat/ChatConversation;Lakw;)V
    .locals 8
    .param p1    # Lcom/snapchat/android/model/chat/ChatConversation;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p2    # Lakw;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 186
    sget-object v0, Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;->SENDING:Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;

    iput-object v0, p2, Lcom/snapchat/android/model/chat/StatefulChatFeedItem;->mSendReceiveStatus:Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;

    .line 187
    invoke-virtual {p2}, Lakw;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/snapchat/android/model/chat/ChatConversation;->j(Ljava/lang/String;)V

    .line 189
    invoke-virtual {p2}, Lakw;->i()Lbif;

    move-result-object v1

    .line 190
    iget-object v2, p0, Lzm;->b:Lod;

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

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->e()V

    invoke-virtual {v1}, Lbif;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "CHAT_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lbif;->a()Lbjj;

    move-result-object v4

    invoke-virtual {v4}, Lbjj;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_SENT_ATTEMPT"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->e()V

    :cond_0
    invoke-static {}, Lbgp;->b()Ljava/lang/String;

    move-result-object v0

    iget-object v2, v2, Lod;->mSendingChatTimers:Ljava/util/Map;

    invoke-virtual {v1}, Lbif;->c()Ljava/lang/String;

    move-result-object v3

    const-string v4, "CHAT_SENT"

    invoke-static {v4}, Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;->b(Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v4

    invoke-virtual {v4}, Lcom/snapchat/android/analytics/framework/EasyMetric;->b()Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v4

    const-string v5, "reachability"

    invoke-virtual {v4, v5, v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    invoke-static {}, Lcom/snapchat/android/analytics/AnalyticsEvents;->k()V

    .line 192
    invoke-static {p2}, Lnr;->a(Lakw;)V

    .line 194
    iget-object v0, p1, Lcom/snapchat/android/model/chat/ChatConversation;->mSequenceNumberState:Lcom/snapchat/android/model/chat/ChatConversation$SequenceNumberState;

    sget-object v2, Lcom/snapchat/android/model/chat/ChatConversation$SequenceNumberState;->UPDATED:Lcom/snapchat/android/model/chat/ChatConversation$SequenceNumberState;

    if-eq v0, v2, :cond_3

    .line 196
    new-array v0, v7, [Ljava/lang/Object;

    aput-object v1, v0, v6

    .line 198
    invoke-direct {p0, p1, v1}, Lzm;->a(Lcom/snapchat/android/model/chat/ChatConversation;Lbif;)V

    .line 199
    iget-object v0, p0, Lzm;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    invoke-static {v0}, Lcom/snapchat/android/analytics/AnalyticsEvents;->e(I)V

    .line 200
    invoke-virtual {p0, p1}, Lzm;->c(Lcom/snapchat/android/model/chat/ChatConversation;)V

    .line 208
    :goto_1
    iget-boolean v0, p1, Lcom/snapchat/android/model/chat/ChatConversation;->mIsStub:Z

    if-eqz v0, :cond_1

    .line 210
    iput-boolean v6, p1, Lcom/snapchat/android/model/chat/ChatConversation;->mIsStub:Z

    .line 213
    :cond_1
    invoke-static {}, Lbbo;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lbca;

    iget-object v2, p1, Lcom/snapchat/android/model/chat/ChatConversation;->mId:Ljava/lang/String;

    invoke-direct {v1, v2, v7}, Lbca;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 214
    invoke-static {}, Lbbo;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lbed;

    invoke-direct {v1}, Lbed;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 215
    iget-object v0, p0, Lzm;->i:Loa;

    invoke-virtual {v0}, Loa;->c()V

    .line 216
    return-void

    .line 190
    :cond_2
    const-string v0, "0"

    goto/16 :goto_0

    .line 202
    :cond_3
    invoke-virtual {p2}, Lakw;->t()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/snapchat/android/model/chat/ChatConversation;->a(J)J

    move-result-wide v2

    .line 203
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v0}, Lbif;->a(Ljava/lang/Long;)V

    .line 204
    invoke-virtual {p2, v2, v3}, Lakw;->b(J)V

    .line 205
    invoke-virtual {p0, p1, v1}, Lzm;->a(Lcom/snapchat/android/model/chat/ChatConversation;Lbil;)V

    goto :goto_1
.end method

.method public final a(Lcom/snapchat/android/model/chat/ChatConversation;Lakw;IZ)V
    .locals 4
    .param p1    # Lcom/snapchat/android/model/chat/ChatConversation;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p2    # Lakw;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 401
    invoke-static {}, Lakr;->l()Ljava/lang/String;

    move-result-object v0

    .line 402
    if-nez v0, :cond_0

    .line 423
    :goto_0
    return-void

    .line 403
    :cond_0
    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/ChatConversation;->z()Ljava/util/List;

    move-result-object v1

    .line 404
    iget-object v2, p1, Lcom/snapchat/android/model/chat/ChatConversation;->mMessagingAuthToken:Lbjy;

    .line 406
    sget-object v3, Lbji$a;->MESSAGE_STATE:Lbji$a;

    invoke-static {v3, v0, v1, v2}, Laty;->a(Lbji$a;Ljava/lang/String;Ljava/util/List;Lbjy;)Lbil;

    move-result-object v0

    check-cast v0, Lbjk;

    .line 411
    invoke-virtual {p2}, Lakw;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbjk;->a(Ljava/lang/String;)V

    .line 412
    if-eqz p4, :cond_1

    const-string v1, "saved"

    :goto_1
    invoke-virtual {v0, v1}, Lbjk;->b(Ljava/lang/String;)V

    .line 413
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbjk;->a(Ljava/lang/Integer;)V

    .line 415
    invoke-virtual {v0}, Lbjk;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lakw;->a(Ljava/lang/String;)V

    .line 416
    invoke-virtual {p0, p1, v0}, Lzm;->a(Lcom/snapchat/android/model/chat/ChatConversation;Lbil;)V

    .line 418
    if-eqz p4, :cond_2

    .line 419
    invoke-static {p2}, Lnr;->c(Lakw;)V

    goto :goto_0

    .line 412
    :cond_1
    const-string v1, "unsaved"

    goto :goto_1

    .line 421
    :cond_2
    invoke-static {p2}, Lnr;->d(Lakw;)V

    goto :goto_0
.end method

.method public final a(Lcom/snapchat/android/model/chat/ChatConversation;Lakw;ZZ)V
    .locals 9
    .param p1    # Lcom/snapchat/android/model/chat/ChatConversation;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p2    # Lakw;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    const v8, 0x7f0c012c

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 599
    iget-object v0, p2, Lcom/snapchat/android/model/chat/StatefulChatFeedItem;->mSendReceiveStatus:Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;

    sget-object v1, Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;->SENT:Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;

    if-ne v0, v1, :cond_1

    .line 702
    :cond_0
    :goto_0
    return-void

    .line 601
    :cond_1
    invoke-static {}, Lakr;->l()Ljava/lang/String;

    move-result-object v4

    .line 602
    if-eqz v4, :cond_0

    .line 604
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/snapchat/android/model/chat/ChatConversation;->b(J)J

    move-result-wide v6

    .line 605
    invoke-virtual {p2}, Lakw;->i()Lbif;

    move-result-object v0

    .line 606
    iget-object v5, p1, Lcom/snapchat/android/model/chat/ChatConversation;->mMessagingAuthToken:Lbjy;

    .line 608
    if-nez v0, :cond_5

    .line 610
    instance-of v0, p2, Lcom/snapchat/android/model/chat/ChatMedia;

    if-eqz v0, :cond_7

    move-object v0, p2

    .line 611
    check-cast v0, Lcom/snapchat/android/model/chat/ChatMedia;

    .line 614
    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/ChatMedia;->C()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    .line 617
    invoke-virtual {p1, v0}, Lcom/snapchat/android/model/chat/ChatConversation;->b(Lcom/snapchat/android/model/chat/ChatFeedItem;)V

    .line 619
    iget-object v1, p0, Lzm;->f:Laki;

    invoke-virtual {v1}, Laki;->h()Ljava/util/LinkedHashMap;

    move-result-object v1

    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/ChatMedia;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laji;

    .line 621
    if-nez v1, :cond_2

    .line 622
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v1

    invoke-static {v8, v1}, Lcom/snapchat/android/util/AlertDialogUtils;->a(ILandroid/content/Context;)V

    move v1, v2

    .line 633
    :goto_1
    if-eqz p4, :cond_0

    .line 634
    if-eqz v1, :cond_3

    .line 635
    sget-object v1, Lcom/snapchat/android/app/feature/messaging/feed/model/FeedIconChangeType;->FAILED_TO_SEND:Lcom/snapchat/android/app/feature/messaging/feed/model/FeedIconChangeType;

    invoke-virtual {p1, v0, v1}, Lcom/snapchat/android/model/chat/ChatConversation;->a(Lcom/snapchat/android/model/chat/ChatFeedItem;Lcom/snapchat/android/app/feature/messaging/feed/model/FeedIconChangeType;)V

    .line 639
    :goto_2
    invoke-static {}, Lbbo;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lbca;

    iget-object v2, p1, Lcom/snapchat/android/model/chat/ChatConversation;->mId:Ljava/lang/String;

    invoke-direct {v1, v2}, Lbca;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 626
    :cond_2
    :try_start_0
    new-instance v4, Lqa;

    invoke-direct {v4, v1}, Lqa;-><init>(Laji;)V

    sget-object v1, Lavf;->NETWORK_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/String;

    invoke-virtual {v4, v1, v5}, Lqa;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Lpy$a; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v3

    .line 631
    goto :goto_1

    .line 629
    :catch_0
    move-exception v1

    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v1

    invoke-static {v8, v1}, Lcom/snapchat/android/util/AlertDialogUtils;->a(ILandroid/content/Context;)V

    move v1, v2

    .line 630
    goto :goto_1

    .line 637
    :cond_3
    sget-object v1, Lcom/snapchat/android/app/feature/messaging/feed/model/FeedIconChangeType;->SENDING:Lcom/snapchat/android/app/feature/messaging/feed/model/FeedIconChangeType;

    invoke-virtual {p1, v0, v1}, Lcom/snapchat/android/model/chat/ChatConversation;->a(Lcom/snapchat/android/model/chat/ChatFeedItem;Lcom/snapchat/android/app/feature/messaging/feed/model/FeedIconChangeType;)V

    goto :goto_2

    .line 644
    :cond_4
    new-instance v1, Lbjh;

    invoke-direct {v1}, Lbjh;-><init>()V

    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/ChatMedia;->F()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lbjh;->c(Ljava/lang/String;)Lbjh;

    move-result-object v1

    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/ChatMedia;->E()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lbjh;->b(Ljava/lang/String;)Lbjh;

    move-result-object v1

    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/ChatMedia;->C()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lbjh;->a(Ljava/lang/String;)Lbjh;

    move-result-object v1

    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/ChatMedia;->G()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v1, v8}, Lbjh;->a(Ljava/lang/Integer;)Lbjh;

    move-result-object v1

    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/ChatMedia;->H()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Lbjh;->b(Ljava/lang/Integer;)Lbjh;

    move-result-object v0

    .line 651
    new-instance v1, Lbjj;

    invoke-direct {v1}, Lbjj;-><init>()V

    sget-object v8, Lbjj$a;->MEDIA:Lbjj$a;

    invoke-virtual {v8}, Lbjj$a;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lbjj;->a(Ljava/lang/String;)Lbjj;

    move-result-object v1

    invoke-virtual {v1, v0}, Lbjj;->a(Lbjh;)Lbjj;

    move-result-object v0

    move-object v1, v0

    .line 665
    :goto_3
    sget-object v0, Lbji$a;->CHAT_MESSAGE:Lbji$a;

    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/ChatConversation;->z()Ljava/util/List;

    move-result-object v8

    invoke-static {v0, v4, v8, v5}, Laty;->a(Lbji$a;Ljava/lang/String;Ljava/util/List;Lbjy;)Lbil;

    move-result-object v0

    check-cast v0, Lbif;

    .line 670
    invoke-virtual {p2}, Lakw;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lbif;->a(Ljava/lang/String;)V

    .line 671
    invoke-virtual {v0, v1}, Lbif;->a(Lbjj;)V

    .line 672
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbif;->b(Ljava/lang/Long;)V

    .line 674
    invoke-virtual {v0}, Lbif;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lakw;->a(Ljava/lang/String;)V

    .line 675
    invoke-virtual {p2, v0}, Lakw;->a(Lbif;)V

    .line 676
    invoke-virtual {p2, v6, v7}, Lakw;->c(J)V

    .line 678
    :cond_5
    invoke-virtual {v0}, Lbif;->g()Lbjb;

    move-result-object v1

    invoke-virtual {v1, v5}, Lbjb;->a(Lbjy;)V

    .line 679
    sget-object v1, Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;->SENDING:Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;

    iput-object v1, p2, Lcom/snapchat/android/model/chat/StatefulChatFeedItem;->mSendReceiveStatus:Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;

    .line 680
    if-eqz p3, :cond_6

    .line 681
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbif;->b(Ljava/lang/Long;)V

    .line 682
    invoke-virtual {p2, v6, v7}, Lakw;->c(J)V

    .line 684
    :cond_6
    iget-object v1, p1, Lcom/snapchat/android/model/chat/ChatConversation;->mFailedChatMessages:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 685
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbif;->a(Ljava/lang/Boolean;)V

    .line 686
    iget-object v1, p1, Lcom/snapchat/android/model/chat/ChatConversation;->mSequenceNumberState:Lcom/snapchat/android/model/chat/ChatConversation$SequenceNumberState;

    sget-object v4, Lcom/snapchat/android/model/chat/ChatConversation$SequenceNumberState;->UPDATED:Lcom/snapchat/android/model/chat/ChatConversation$SequenceNumberState;

    if-eq v1, v4, :cond_a

    .line 687
    new-array v1, v2, [Ljava/lang/Object;

    aput-object v0, v1, v3

    .line 689
    invoke-direct {p0, p1, v0}, Lzm;->a(Lcom/snapchat/android/model/chat/ChatConversation;Lbif;)V

    .line 690
    iget-object v0, p0, Lzm;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    invoke-static {v0}, Lcom/snapchat/android/analytics/AnalyticsEvents;->e(I)V

    .line 691
    invoke-virtual {p0, p1}, Lzm;->c(Lcom/snapchat/android/model/chat/ChatConversation;)V

    .line 698
    :goto_4
    if-eqz p4, :cond_0

    .line 699
    sget-object v0, Lcom/snapchat/android/app/feature/messaging/feed/model/FeedIconChangeType;->SENDING:Lcom/snapchat/android/app/feature/messaging/feed/model/FeedIconChangeType;

    invoke-virtual {p1, p2, v0}, Lcom/snapchat/android/model/chat/ChatConversation;->a(Lcom/snapchat/android/model/chat/ChatFeedItem;Lcom/snapchat/android/app/feature/messaging/feed/model/FeedIconChangeType;)V

    .line 700
    invoke-static {}, Lbbo;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lbca;

    iget-object v2, p1, Lcom/snapchat/android/model/chat/ChatConversation;->mId:Ljava/lang/String;

    invoke-direct {v1, v2}, Lbca;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 655
    :cond_7
    instance-of v0, p2, Lald;

    if-eqz v0, :cond_8

    .line 656
    new-instance v0, Lbjj;

    invoke-direct {v0}, Lbjj;-><init>()V

    sget-object v1, Lbjj$a;->TEXT:Lbjj$a;

    invoke-virtual {v1}, Lbjj$a;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbjj;->a(Ljava/lang/String;)Lbjj;

    move-result-object v0

    invoke-virtual {p2}, Lakw;->aj()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbjj;->b(Ljava/lang/String;)Lbjj;

    move-result-object v0

    move-object v1, v0

    goto/16 :goto_3

    .line 659
    :cond_8
    instance-of v0, p2, Lalb;

    if-eqz v0, :cond_9

    .line 660
    new-instance v0, Lbjj;

    invoke-direct {v0}, Lbjj;-><init>()V

    sget-object v1, Lbjj$a;->SCREENSHOT:Lbjj$a;

    invoke-virtual {v1}, Lbjj$a;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbjj;->a(Ljava/lang/String;)Lbjj;

    move-result-object v0

    move-object v1, v0

    goto/16 :goto_3

    .line 662
    :cond_9
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

    .line 693
    :cond_a
    invoke-virtual {p2}, Lakw;->t()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/snapchat/android/model/chat/ChatConversation;->a(J)J

    move-result-wide v2

    .line 694
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbif;->a(Ljava/lang/Long;)V

    .line 695
    invoke-virtual {p2, v2, v3}, Lakw;->b(J)V

    .line 696
    invoke-virtual {p0, p1, v0}, Lzm;->a(Lcom/snapchat/android/model/chat/ChatConversation;Lbil;)V

    goto :goto_4
.end method

.method public final a(Lcom/snapchat/android/model/chat/ChatConversation;Lbil;)V
    .locals 8
    .param p1    # Lcom/snapchat/android/model/chat/ChatConversation;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p2    # Lbil;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 225
    instance-of v0, p2, Lbif;

    if-eqz v0, :cond_0

    .line 226
    const-string v0, "CHAT_SEND_REQUEST_LATENCY"

    invoke-virtual {p2}, Lbil;->k()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/snapchat/android/analytics/AnalyticsEvents;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    :cond_0
    new-instance v3, Lzm$1;

    invoke-direct {v3, p0, p2, p1}, Lzm$1;-><init>(Lzm;Lbil;Lcom/snapchat/android/model/chat/ChatConversation;)V

    .line 238
    instance-of v0, p2, Lbif;

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/snapchat/android/model/chat/ChatConversation;->mTheirUsername:Ljava/lang/String;

    invoke-static {v0}, Lauk;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 240
    sget-object v0, Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback$Status;->NOT_FRIENDS:Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback$Status;

    const-string v1, ""

    invoke-interface {v3, v2, v0, v1}, Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback;->a(ZLcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback$Status;Ljava/lang/String;)V

    .line 282
    :goto_1
    return-void

    .line 238
    :cond_1
    instance-of v0, p2, Lbjk;

    if-eqz v0, :cond_2

    move-object v0, p2

    check-cast v0, Lbjk;

    invoke-virtual {v0}, Lbjk;->b()Ljava/lang/String;

    move-result-object v0

    sget-object v4, Lbjk$a;->SAVED:Lbjk$a;

    invoke-virtual {v4}, Lbjk$a;->name()Ljava/lang/String;

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

    .line 245
    :cond_3
    iget-object v0, p1, Lcom/snapchat/android/model/chat/ChatConversation;->mFailedReleaseMessages:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, p1, Lcom/snapchat/android/model/chat/ChatConversation;->mMessagingAuthToken:Lbjy;

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

    check-cast v0, Lbju;

    invoke-virtual {v0}, Lbju;->g()Lbjb;

    move-result-object v6

    invoke-virtual {v6, v4}, Lbjb;->a(Lbjy;)V

    invoke-virtual {p0, p1, v0}, Lzm;->a(Lcom/snapchat/android/model/chat/ChatConversation;Lbil;)V

    goto :goto_2

    .line 247
    :cond_4
    invoke-virtual {p2}, Lbil;->g()Lbjb;

    move-result-object v0

    .line 248
    iget-wide v4, p1, Lcom/snapchat/android/model/chat/ChatConversation;->mMyLastConnSeqNum:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    iput-wide v4, p1, Lcom/snapchat/android/model/chat/ChatConversation;->mMyLastConnSeqNum:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v4}, Lbjb;->a(Ljava/lang/Long;)V

    .line 249
    iget-object v4, p1, Lcom/snapchat/android/model/chat/ChatConversation;->mSendingMessages:Ljava/util/Set;

    monitor-enter v4

    :try_start_0
    iget-object v5, p1, Lcom/snapchat/android/model/chat/ChatConversation;->mSendingMessages:Ljava/util/Set;

    invoke-interface {v5, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 250
    iget-object v4, p1, Lcom/snapchat/android/model/chat/ChatConversation;->mMessagingAuthToken:Lbjy;

    .line 251
    invoke-virtual {v0}, Lbjb;->d()Lbjy;

    move-result-object v5

    if-nez v5, :cond_6

    if-eqz v4, :cond_6

    .line 252
    invoke-virtual {v0, v4}, Lbjb;->a(Lbjy;)V

    .line 263
    :cond_5
    invoke-static {}, Lcom/snapchat/android/LandingPageActivity;->i()Lcom/snapchat/android/util/chat/SecureChatService;

    move-result-object v0

    .line 264
    if-nez v0, :cond_8

    .line 265
    invoke-static {p2}, Laty;->a(Lbji;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 268
    new-array v0, v1, [Ljava/lang/Object;

    aput-object p2, v0, v2

    .line 270
    invoke-virtual {p0, p2, v3}, Lzm;->a(Lbil;Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback;)V

    goto/16 :goto_1

    .line 249
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 253
    :cond_6
    if-nez v4, :cond_5

    .line 254
    new-instance v0, Lqi;

    iget-object v4, p1, Lcom/snapchat/android/model/chat/ChatConversation;->mId:Ljava/lang/String;

    invoke-direct {v0, v4}, Lqi;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lqi;->execute()V

    .line 256
    instance-of v0, p2, Lbju;

    if-nez v0, :cond_5

    .line 257
    sget-object v0, Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback$Status;->NOT_FRIENDS:Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback$Status;

    const-string v1, ""

    invoke-interface {v3, v2, v0, v1}, Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback;->a(ZLcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback$Status;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 272
    :cond_7
    sget-object v0, Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback$Status;->NO_CONNECTION:Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback$Status;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "SCCP connection unavailable - can\'t send "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lbil;->i()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v2, v0, v1}, Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback;->a(ZLcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback$Status;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 277
    :cond_8
    instance-of v1, p2, Lbif;

    if-eqz v1, :cond_9

    invoke-static {}, Lzb;->a()Lzb;

    move-result-object v1

    iget-boolean v1, v1, Lzb;->d:Z

    if-eqz v1, :cond_9

    .line 278
    iget v1, p1, Lcom/snapchat/android/model/chat/ChatConversation;->mNumSCCPChatMessagesSendingOrSent:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p1, Lcom/snapchat/android/model/chat/ChatConversation;->mNumSCCPChatMessagesSendingOrSent:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, p1, Lcom/snapchat/android/model/chat/ChatConversation;->mLastSCCPMessageSentTimestamp:J

    .line 280
    :cond_9
    invoke-virtual {v0, p2, v3}, Lcom/snapchat/android/util/chat/SecureChatService;->a(Lbil;Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback;)V

    goto/16 :goto_1
.end method

.method public final a(Lcom/snapchat/android/model/chat/ChatConversation;Ljava/util/Map;Ljava/util/Map;Lbju$a;)V
    .locals 4
    .param p1    # Lcom/snapchat/android/model/chat/ChatConversation;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p3    # Ljava/util/Map;
        .annotation build Lchc;
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
            "Lbju$a;",
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
    invoke-static {}, Lakr;->l()Ljava/lang/String;

    move-result-object v0

    .line 577
    if-eqz v0, :cond_0

    .line 579
    sget-object v1, Lbji$a;->MESSAGE_RELEASE:Lbji$a;

    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/ChatConversation;->z()Ljava/util/List;

    move-result-object v2

    iget-object v3, p1, Lcom/snapchat/android/model/chat/ChatConversation;->mMessagingAuthToken:Lbjy;

    invoke-static {v1, v0, v2, v3}, Laty;->a(Lbji$a;Ljava/lang/String;Ljava/util/List;Lbjy;)Lbil;

    move-result-object v0

    check-cast v0, Lbju;

    .line 584
    invoke-virtual {p4}, Lbju$a;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbju;->a(Ljava/lang/String;)V

    .line 585
    invoke-virtual {v0, p2}, Lbju;->a(Ljava/util/Map;)V

    .line 586
    invoke-virtual {v0, p3}, Lbju;->b(Ljava/util/Map;)V

    .line 587
    invoke-virtual {p0, p1, v0}, Lzm;->a(Lcom/snapchat/android/model/chat/ChatConversation;Lbil;)V

    goto :goto_0
.end method

.method public final a(Lcom/snapchat/android/model/chat/ChatConversation;ZZZ)V
    .locals 5
    .param p1    # Lcom/snapchat/android/model/chat/ChatConversation;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 545
    invoke-static {}, Lakr;->l()Ljava/lang/String;

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
    sget-object v2, Lbji$a;->PRESENCE:Lbji$a;

    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/ChatConversation;->z()Ljava/util/List;

    move-result-object v3

    iget-object v4, p1, Lcom/snapchat/android/model/chat/ChatConversation;->mMessagingAuthToken:Lbjy;

    invoke-static {v2, v0, v3, v4}, Laty;->a(Lbji$a;Ljava/lang/String;Ljava/util/List;Lbjy;)Lbil;

    move-result-object v0

    check-cast v0, Lbjr;

    .line 556
    invoke-virtual {v0, v1}, Lbjr;->a(Ljava/util/Map;)V

    .line 557
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbjr;->c(Ljava/lang/Boolean;)V

    .line 558
    invoke-static {}, Latt;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/snapchat/android/ui/here/LocalPreview;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbjr;->b(Ljava/lang/Boolean;)V

    .line 559
    invoke-virtual {p0, p1, v0}, Lzm;->a(Lcom/snapchat/android/model/chat/ChatConversation;Lbil;)V

    goto :goto_0

    .line 558
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public final b(Lcom/snapchat/android/model/chat/ChatConversation;)V
    .locals 5
    .param p1    # Lcom/snapchat/android/model/chat/ChatConversation;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    const/4 v4, 0x0

    .line 931
    iget-object v0, p0, Lzm;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 932
    if-eqz v0, :cond_3

    .line 933
    const/4 v1, 0x0

    .line 934
    monitor-enter v0

    .line 938
    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p1, Lcom/snapchat/android/model/chat/ChatConversation;->mSequenceNumberState:Lcom/snapchat/android/model/chat/ChatConversation$SequenceNumberState;

    sget-object v3, Lcom/snapchat/android/model/chat/ChatConversation$SequenceNumberState;->UPDATED:Lcom/snapchat/android/model/chat/ChatConversation$SequenceNumberState;

    if-ne v2, v3, :cond_0

    .line 940
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 941
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 943
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 945
    if-eqz v1, :cond_3

    .line 946
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbif;

    .line 947
    invoke-virtual {v0}, Lbif;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/snapchat/android/model/chat/ChatConversation;->f(Ljava/lang/String;)Lakw;

    move-result-object v0

    .line 948
    if-eqz v0, :cond_1

    .line 949
    invoke-virtual {p0, p1, v0, v4, v4}, Lzm;->a(Lcom/snapchat/android/model/chat/ChatConversation;Lakw;ZZ)V

    goto :goto_0

    .line 943
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 952
    :cond_2
    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/ChatConversation;->r()V

    .line 954
    invoke-static {}, Lbbo;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lbca;

    iget-object v2, p1, Lcom/snapchat/android/model/chat/ChatConversation;->mId:Ljava/lang/String;

    invoke-direct {v1, v2}, Lbca;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 957
    :cond_3
    return-void
.end method

.method public final b(Lcom/snapchat/android/model/chat/ChatConversation;Lbil;)V
    .locals 4
    .param p1    # Lcom/snapchat/android/model/chat/ChatConversation;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p2    # Lbil;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x1

    .line 712
    invoke-virtual {p2}, Lbil;->h()Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lavb;->a(Ljava/lang/Boolean;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 713
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p2, v0}, Lbil;->a(Ljava/lang/Boolean;)V

    .line 714
    instance-of v0, p2, Lbif;

    if-eqz v0, :cond_1

    move-object v0, p2

    .line 715
    check-cast v0, Lbif;

    .line 716
    invoke-virtual {v0}, Lbif;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/snapchat/android/model/chat/ChatConversation;->f(Ljava/lang/String;)Lakw;

    move-result-object v1

    .line 717
    if-nez v1, :cond_0

    .line 719
    invoke-virtual {p1, p2}, Lcom/snapchat/android/model/chat/ChatConversation;->a(Lbil;)V

    .line 731
    :goto_0
    return-void

    .line 722
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/snapchat/android/model/chat/ChatConversation;->b(J)J

    move-result-wide v2

    .line 723
    invoke-virtual {v1, v2, v3}, Lakw;->c(J)V

    .line 724
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbif;->b(Ljava/lang/Long;)V

    .line 726
    :cond_1
    invoke-virtual {p2}, Lbil;->g()Lbjb;

    move-result-object v0

    iget-object v1, p1, Lcom/snapchat/android/model/chat/ChatConversation;->mMessagingAuthToken:Lbjy;

    invoke-virtual {v0, v1}, Lbjb;->a(Lbjy;)V

    .line 727
    invoke-virtual {p0, p1, p2}, Lzm;->a(Lcom/snapchat/android/model/chat/ChatConversation;Lbil;)V

    goto :goto_0

    .line 729
    :cond_2
    invoke-static {p1, p2, v1}, Lzm;->a(Lcom/snapchat/android/model/chat/ChatConversation;Lbil;Z)V

    goto :goto_0
.end method

.method public final c()V
    .locals 5

    .prologue
    .line 1000
    invoke-static {}, Lcom/snapchat/android/LandingPageActivity;->i()Lcom/snapchat/android/util/chat/SecureChatService;

    move-result-object v2

    .line 1001
    if-nez v2, :cond_1

    .line 1014
    :cond_0
    return-void

    .line 1006
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lzm;->d:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1007
    iget-object v1, p0, Lzm;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1008
    new-instance v3, Ljava/util/HashMap;

    iget-object v1, p0, Lzm;->e:Ljava/util/Map;

    invoke-direct {v3, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 1009
    iget-object v1, p0, Lzm;->e:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 1010
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbil;

    .line 1011
    invoke-virtual {v0}, Lbil;->k()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback;

    .line 1012
    invoke-virtual {v2, v0, v1}, Lcom/snapchat/android/util/chat/SecureChatService;->a(Lbil;Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback;)V

    goto :goto_0
.end method

.method public final c(Lcom/snapchat/android/model/chat/ChatConversation;)V
    .locals 2
    .param p1    # Lcom/snapchat/android/model/chat/ChatConversation;
        .annotation build Lchc;
        .end annotation
    .end param
    .annotation build Lawj;
    .end annotation

    .prologue
    .line 1024
    iget-object v0, p1, Lcom/snapchat/android/model/chat/ChatConversation;->mSequenceNumberState:Lcom/snapchat/android/model/chat/ChatConversation$SequenceNumberState;

    sget-object v1, Lcom/snapchat/android/model/chat/ChatConversation$SequenceNumberState;->NOT_UPDATED:Lcom/snapchat/android/model/chat/ChatConversation$SequenceNumberState;

    if-eq v0, v1, :cond_0

    .line 1037
    :goto_0
    return-void

    .line 1026
    :cond_0
    sget-object v0, Lcom/snapchat/android/model/chat/ChatConversation$SequenceNumberState;->UPDATING:Lcom/snapchat/android/model/chat/ChatConversation$SequenceNumberState;

    iput-object v0, p1, Lcom/snapchat/android/model/chat/ChatConversation;->mSequenceNumberState:Lcom/snapchat/android/model/chat/ChatConversation$SequenceNumberState;

    .line 1027
    iget-object v0, p1, Lcom/snapchat/android/model/chat/ChatConversation;->mId:Ljava/lang/String;

    new-instance v1, Lzm$2;

    invoke-direct {v1, p0, p1}, Lzm$2;-><init>(Lzm;Lcom/snapchat/android/model/chat/ChatConversation;)V

    invoke-static {v0, v1}, Ltt;->a(Ljava/lang/String;Lcom/snapchat/android/api2/chat/LoadConversationPageTask$a;)V

    goto :goto_0
.end method
