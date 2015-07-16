.class public final Lcom/snapchat/android/api2/chat/LoadConversationPageTask;
.super Ltx;
.source "SourceFile"

# interfaces
.implements Lui$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/api2/chat/LoadConversationPageTask$a;,
        Lcom/snapchat/android/api2/chat/LoadConversationPageTask$c;,
        Lcom/snapchat/android/api2/chat/LoadConversationPageTask$b;,
        Lcom/snapchat/android/api2/chat/LoadConversationPageTask$TaskStatus;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ltx;",
        "Lui$b",
        "<",
        "Lcom/snapchat/android/api2/chat/LoadConversationPageTask$c;",
        ">;"
    }
.end annotation


# static fields
.field private static final PATH:Ljava/lang/String; = "/loq/conversation"

.field private static final TAG:Ljava/lang/String; = "LoadConversationPageTask"


# instance fields
.field private final mBus:Lcom/squareup/otto/Bus;

.field private final mCallback:Lcom/snapchat/android/api2/chat/LoadConversationPageTask$a;

.field private final mConversationId:Ljava/lang/String;

.field private final mConversationManager:Lakx;

.field private final mIterToken:Ljava/lang/String;

.field private final mRequestLatencyMetric:Lcom/snapchat/android/analytics/framework/EasyMetric;

.field private final mWithPrefetch:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/snapchat/android/api2/chat/LoadConversationPageTask$a;)V
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lchd;
        .end annotation
    .end param

    .prologue
    .line 53
    invoke-static {}, Lakx;->c()Lakx;

    move-result-object v4

    invoke-static {}, Lbbo;->a()Lcom/squareup/otto/Bus;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/android/api2/chat/LoadConversationPageTask;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/snapchat/android/api2/chat/LoadConversationPageTask$a;Lakx;Lcom/squareup/otto/Bus;)V

    .line 55
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/snapchat/android/api2/chat/LoadConversationPageTask$a;Lakx;Lcom/squareup/otto/Bus;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lchd;
        .end annotation
    .end param
    .param p3    # Lcom/snapchat/android/api2/chat/LoadConversationPageTask$a;
        .annotation build Lchd;
        .end annotation
    .end param
    .param p4    # Lakx;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 59
    invoke-direct {p0}, Ltx;-><init>()V

    .line 36
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "LOQ_CONVERSATION_LATENCY"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/snapchat/android/api2/chat/LoadConversationPageTask;->mRequestLatencyMetric:Lcom/snapchat/android/analytics/framework/EasyMetric;

    .line 60
    iput-object p1, p0, Lcom/snapchat/android/api2/chat/LoadConversationPageTask;->mConversationId:Ljava/lang/String;

    .line 61
    iput-object p2, p0, Lcom/snapchat/android/api2/chat/LoadConversationPageTask;->mIterToken:Ljava/lang/String;

    .line 62
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/api2/chat/LoadConversationPageTask;->mWithPrefetch:Z

    .line 63
    iput-object p3, p0, Lcom/snapchat/android/api2/chat/LoadConversationPageTask;->mCallback:Lcom/snapchat/android/api2/chat/LoadConversationPageTask$a;

    .line 64
    iput-object p4, p0, Lcom/snapchat/android/api2/chat/LoadConversationPageTask;->mConversationManager:Lakx;

    .line 65
    iput-object p5, p0, Lcom/snapchat/android/api2/chat/LoadConversationPageTask;->mBus:Lcom/squareup/otto/Bus;

    .line 67
    const-class v0, Lcom/snapchat/android/api2/chat/LoadConversationPageTask$c;

    invoke-virtual {p0, v0, p0}, Lcom/snapchat/android/api2/chat/LoadConversationPageTask;->registerCallback(Ljava/lang/Class;Lui$b;)V

    .line 68
    return-void
.end method


# virtual methods
.method public final execute()V
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/snapchat/android/api2/chat/LoadConversationPageTask;->mRequestLatencyMetric:Lcom/snapchat/android/analytics/framework/EasyMetric;

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->b()Lcom/snapchat/android/analytics/framework/EasyMetric;

    .line 83
    invoke-super {p0}, Ltx;->execute()V

    .line 84
    return-void
.end method

.method public final getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    const-string v0, "/loq/conversation"

    return-object v0
.end method

.method public final synthetic getRequestPayload()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 31
    new-instance v0, Lcom/snapchat/android/api2/chat/LoadConversationPageTask$b;

    iget-object v1, p0, Lcom/snapchat/android/api2/chat/LoadConversationPageTask;->mConversationId:Ljava/lang/String;

    iget-object v2, p0, Lcom/snapchat/android/api2/chat/LoadConversationPageTask;->mIterToken:Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2}, Lcom/snapchat/android/api2/chat/LoadConversationPageTask$b;-><init>(Lcom/snapchat/android/api2/chat/LoadConversationPageTask;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final synthetic onJsonResult(Ljava/lang/Object;Lus;)V
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 31
    check-cast p1, Lcom/snapchat/android/api2/chat/LoadConversationPageTask$c;

    invoke-virtual {p2}, Lus;->d()Z

    move-result v0

    iget-object v3, p0, Lcom/snapchat/android/api2/chat/LoadConversationPageTask;->mRequestLatencyMetric:Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v4, "reachability"

    invoke-static {}, Lbgp;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v3

    const-string v4, "success"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Z)V

    if-eqz v0, :cond_7

    if-nez p1, :cond_2

    new-instance v0, Lcom/snapchat/android/analytics/framework/ErrorMetric;

    const-string v2, "NULL_LOAD_CONVERSATION_RESPONSE"

    invoke-direct {v0, v2}, Lcom/snapchat/android/analytics/framework/ErrorMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/ErrorMetric;->e()V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/snapchat/android/api2/chat/LoadConversationPageTask;->mCallback:Lcom/snapchat/android/api2/chat/LoadConversationPageTask$a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/snapchat/android/api2/chat/LoadConversationPageTask;->mCallback:Lcom/snapchat/android/api2/chat/LoadConversationPageTask$a;

    invoke-interface {v0, v1}, Lcom/snapchat/android/api2/chat/LoadConversationPageTask$a;->a(Z)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-object v0, p1, Lcom/snapchat/android/api2/chat/LoadConversationPageTask$c;->mConversation:Lbid;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "CHAT-LOG: LoadConversationPageTask onSuccess "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/snapchat/android/api2/chat/LoadConversationPageTask;->mConversationId:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/snapchat/android/api2/chat/LoadConversationPageTask;->mConversationId:Ljava/lang/String;

    invoke-static {v0}, Layg;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/snapchat/android/api2/chat/LoadConversationPageTask;->mConversationManager:Lakx;

    invoke-virtual {v3, v0}, Lakx;->a(Ljava/lang/String;)Lcom/snapchat/android/model/chat/ChatConversation;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v4, p0, Lcom/snapchat/android/api2/chat/LoadConversationPageTask;->mConversationManager:Lakx;

    iget-object v5, p1, Lcom/snapchat/android/api2/chat/LoadConversationPageTask$c;->mConversation:Lbid;

    iget-boolean v6, p0, Lcom/snapchat/android/api2/chat/LoadConversationPageTask;->mWithPrefetch:Z

    iget-object v0, p0, Lcom/snapchat/android/api2/chat/LoadConversationPageTask;->mIterToken:Ljava/lang/String;

    if-nez v0, :cond_5

    move v0, v1

    :goto_2
    invoke-virtual {v4, v3, v5, v6, v0}, Lakx;->a(Lcom/snapchat/android/model/chat/ChatConversation;Lbid;ZZ)V

    iget-object v0, p0, Lcom/snapchat/android/api2/chat/LoadConversationPageTask;->mBus:Lcom/squareup/otto/Bus;

    new-instance v4, Lbdv;

    invoke-direct {v4}, Lbdv;-><init>()V

    invoke-virtual {v0, v4}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    iget-boolean v0, v3, Lcom/snapchat/android/model/chat/ChatConversation;->mIsUserInConversation:Z

    if-nez v0, :cond_3

    new-array v0, v1, [Ljava/lang/Object;

    iget-object v4, v3, Lcom/snapchat/android/model/chat/ChatConversation;->mId:Ljava/lang/String;

    aput-object v4, v0, v2

    new-instance v0, Lzf;

    invoke-direct {v0}, Lzf;-><init>()V

    sget-object v2, Lbju$a;->DELETE:Lbju$a;

    invoke-virtual {v0, v3, v2}, Lzf;->a(Lcom/snapchat/android/model/chat/ChatConversation;Lbju$a;)V

    :cond_3
    iget-object v0, p0, Lcom/snapchat/android/api2/chat/LoadConversationPageTask;->mConversationManager:Lakx;

    invoke-virtual {v0}, Lakx;->g()V

    iget-object v0, p1, Lcom/snapchat/android/api2/chat/LoadConversationPageTask$c;->mConversation:Lbid;

    invoke-virtual {v0}, Lbid;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/snapchat/android/api2/chat/LoadConversationPageTask$c;->mConversation:Lbid;

    invoke-virtual {v0}, Lbid;->k()Lbie;

    move-result-object v0

    invoke-virtual {v0}, Lbie;->b()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_4
    iget-object v0, p0, Lcom/snapchat/android/api2/chat/LoadConversationPageTask;->mBus:Lcom/squareup/otto/Bus;

    new-instance v2, Lbde;

    sget-object v3, Lcom/snapchat/android/api2/chat/LoadConversationPageTask$TaskStatus;->EMPTY_RESPONSE_REACHED:Lcom/snapchat/android/api2/chat/LoadConversationPageTask$TaskStatus;

    invoke-direct {v2, v3}, Lbde;-><init>(Lcom/snapchat/android/api2/chat/LoadConversationPageTask$TaskStatus;)V

    invoke-virtual {v0, v2}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_5
    move v0, v2

    goto :goto_2

    :cond_6
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbih;

    invoke-virtual {v0}, Lbih;->h()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/api2/chat/LoadConversationPageTask;->mBus:Lcom/squareup/otto/Bus;

    new-instance v2, Lbde;

    sget-object v3, Lcom/snapchat/android/api2/chat/LoadConversationPageTask$TaskStatus;->EMPTY_RESPONSE_REACHED:Lcom/snapchat/android/api2/chat/LoadConversationPageTask$TaskStatus;

    invoke-direct {v2, v3}, Lbde;-><init>(Lcom/snapchat/android/api2/chat/LoadConversationPageTask$TaskStatus;)V

    invoke-virtual {v0, v2}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Lcom/snapchat/android/api2/chat/LoadConversationPageTask;->mBus:Lcom/squareup/otto/Bus;

    new-instance v1, Lbde;

    sget-object v3, Lcom/snapchat/android/api2/chat/LoadConversationPageTask$TaskStatus;->FAILED:Lcom/snapchat/android/api2/chat/LoadConversationPageTask$TaskStatus;

    invoke-direct {v1, v3}, Lbde;-><init>(Lcom/snapchat/android/api2/chat/LoadConversationPageTask$TaskStatus;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/snapchat/android/api2/chat/LoadConversationPageTask;->mCallback:Lcom/snapchat/android/api2/chat/LoadConversationPageTask$a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/snapchat/android/api2/chat/LoadConversationPageTask;->mCallback:Lcom/snapchat/android/api2/chat/LoadConversationPageTask$a;

    invoke-interface {v0, v2}, Lcom/snapchat/android/api2/chat/LoadConversationPageTask$a;->a(Z)V

    goto/16 :goto_1
.end method
