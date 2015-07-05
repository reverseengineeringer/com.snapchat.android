.class public final Lyv;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lbwq;
.end annotation


# static fields
.field public static final a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Laww;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lawv;",
            ">;"
        }
    .end annotation
.end field

.field private static final e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lph;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final c:Lajn;

.field public final d:Lnq;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lyv;->a:Ljava/util/HashMap;

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lyv;->b:Ljava/util/HashMap;

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lyv;->e:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 48
    invoke-static {}, Lajn;->a()Lajn;

    move-result-object v0

    new-instance v1, Lnq;

    invoke-direct {v1}, Lnq;-><init>()V

    invoke-direct {p0, v0, v1}, Lyv;-><init>(Lajn;Lnq;)V

    .line 49
    return-void
.end method

.method private constructor <init>(Lajn;Lnq;)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lyv;->c:Lajn;

    .line 54
    iput-object p2, p0, Lyv;->d:Lnq;

    .line 55
    return-void
.end method

.method static synthetic a(Lyv;)Lajn;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lyv;->c:Lajn;

    return-object v0
.end method

.method static synthetic a()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lyv;->a:Ljava/util/HashMap;

    return-object v0
.end method

.method public static a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 107
    sget-object v0, Lyv;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laww;

    .line 108
    if-eqz v0, :cond_0

    .line 109
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Laww;->cancel(Z)Z

    .line 111
    :cond_0
    return-void
.end method

.method static synthetic b()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lyv;->e:Ljava/util/HashMap;

    return-object v0
.end method

.method public static b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 114
    sget-object v0, Lyv;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lawv;

    .line 116
    if-eqz v0, :cond_0

    .line 117
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lawv;->cancel(Z)Z

    .line 119
    :cond_0
    return-void
.end method


# virtual methods
.method final a(Laim;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 124
    :try_start_0
    iget-boolean v0, p1, Lcom/snapchat/android/model/Mediabryo;->mIsChatMedia:Z

    if-eqz v0, :cond_1

    .line 125
    new-instance v0, Lpj;

    invoke-direct {v0, p1}, Lpj;-><init>(Laim;)V

    sget-object v1, Lauh;->NETWORK_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lpj;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    invoke-static {}, Lban;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lbar;

    invoke-direct {v1}, Lbar;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 129
    :goto_0
    iget-object v0, p1, Lcom/snapchat/android/model/Mediabryo;->mMediaMailingMetadata:Lcom/snapchat/android/model/MediaMailingMetadata;

    invoke-virtual {v0}, Lcom/snapchat/android/model/MediaMailingMetadata;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lakc;->b()Lakc;

    move-result-object v1

    invoke-virtual {v0}, Lcom/snapchat/android/model/MediaMailingMetadata;->d()Ljava/util/LinkedHashSet;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/LinkedHashSet;->size()I

    move-result v2

    if-le v2, v3, :cond_3

    invoke-virtual {v0}, Lcom/snapchat/android/model/MediaMailingMetadata;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lakc;->b(Ljava/lang/String;)Lcom/snapchat/android/model/chat/ChatConversation;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mIsSavableConversation:Z

    .line 133
    :cond_0
    :goto_2
    return-void

    .line 127
    :cond_1
    iget-object v0, p1, Lcom/snapchat/android/model/Mediabryo;->mClientId:Ljava/lang/String;

    sget-object v1, Lyv;->e:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lph;

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lph;->cancel(Z)Z

    :cond_2
    new-instance v0, Lyv$3;

    invoke-direct {v0, p0, p1, p1}, Lyv$3;-><init>(Lyv;Laim;Laim;)V

    sget-object v1, Lyv;->e:Ljava/util/HashMap;

    iget-object v2, p1, Lcom/snapchat/android/model/Mediabryo;->mClientId:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lauh;->NETWORK_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lph;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Lph$a; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 130
    :catch_0
    move-exception v0

    .line 131
    new-instance v1, Lcom/snapchat/android/analytics/framework/ErrorMetric;

    invoke-virtual {v0}, Lph$a;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/snapchat/android/analytics/framework/ErrorMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/snapchat/android/analytics/framework/ErrorMetric;->a(Ljava/lang/Throwable;)Lcom/snapchat/android/analytics/framework/ErrorMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/ErrorMetric;->d()V

    goto :goto_2

    .line 129
    :cond_3
    :try_start_1
    invoke-virtual {v0}, Lcom/snapchat/android/model/MediaMailingMetadata;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lakc;->a(Ljava/lang/String;)Lcom/snapchat/android/model/chat/ChatConversation;
    :try_end_1
    .catch Lph$a; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_1
.end method
