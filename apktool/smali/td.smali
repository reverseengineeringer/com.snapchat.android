.class public final Ltd;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final INSTANCE:Ltd;


# instance fields
.field private final mRunningLoadConversationPageTasks:Ljava/util/Set;
    .annotation runtime Lbwo;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    new-instance v0, Ltd;

    invoke-direct {v0}, Ltd;-><init>()V

    sput-object v0, Ltd;->INSTANCE:Ltd;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Ltd;->mRunningLoadConversationPageTasks:Ljava/util/Set;

    .line 25
    return-void
.end method

.method static synthetic a(Ltd;)Ljava/util/Set;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Ltd;->mRunningLoadConversationPageTasks:Ljava/util/Set;

    return-object v0
.end method

.method public static a()Ltd;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Ltd;->INSTANCE:Ltd;

    return-object v0
.end method

.method public static a(Ljava/lang/String;Lcom/snapchat/android/api2/chat/LoadConversationPageTask$a;)V
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p1    # Lcom/snapchat/android/api2/chat/LoadConversationPageTask$a;
        .annotation build Lcgc;
        .end annotation
    .end param

    .prologue
    .line 76
    new-instance v0, Lcom/snapchat/android/api2/chat/LoadConversationPageTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1}, Lcom/snapchat/android/api2/chat/LoadConversationPageTask;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/snapchat/android/api2/chat/LoadConversationPageTask$a;)V

    invoke-virtual {v0}, Lcom/snapchat/android/api2/chat/LoadConversationPageTask;->f()V

    .line 77
    return-void
.end method

.method public static b(Ljava/lang/String;Lcom/snapchat/android/api2/chat/LoadConversationPageTask$a;)V
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 88
    new-instance v0, Lcom/snapchat/android/api2/chat/LoadConversationPageTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1}, Lcom/snapchat/android/api2/chat/LoadConversationPageTask;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/snapchat/android/api2/chat/LoadConversationPageTask$a;)V

    invoke-virtual {v0}, Lcom/snapchat/android/api2/chat/LoadConversationPageTask;->i()Luc;

    .line 89
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Z)Lcom/snapchat/android/api2/chat/LoadConversationPageTask$TaskStatus;
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 40
    invoke-static {p1}, Lym;->a(Ljava/lang/String;)Lcom/snapchat/android/model/chat/ChatConversation;

    move-result-object v1

    .line 42
    iget-object v2, p0, Ltd;->mRunningLoadConversationPageTasks:Ljava/util/Set;

    monitor-enter v2

    .line 43
    :try_start_0
    iget-object v0, p0, Ltd;->mRunningLoadConversationPageTasks:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    sget-object v0, Lcom/snapchat/android/api2/chat/LoadConversationPageTask$TaskStatus;->RUNNING:Lcom/snapchat/android/api2/chat/LoadConversationPageTask$TaskStatus;

    monitor-exit v2

    .line 65
    :goto_0
    return-object v0

    .line 47
    :cond_0
    const/4 v0, 0x0

    .line 48
    if-eqz v1, :cond_1

    if-eqz p2, :cond_1

    .line 49
    iget-object v0, v1, Lcom/snapchat/android/model/chat/ChatConversation;->mChatsIterToken:Ljava/lang/String;

    .line 50
    if-nez v0, :cond_1

    .line 51
    sget-object v0, Lcom/snapchat/android/api2/chat/LoadConversationPageTask$TaskStatus;->EMPTY_RESPONSE_REACHED:Lcom/snapchat/android/api2/chat/LoadConversationPageTask$TaskStatus;

    monitor-exit v2

    goto :goto_0

    .line 64
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 55
    :cond_1
    :try_start_1
    new-instance v1, Lcom/snapchat/android/api2/chat/LoadConversationPageTask;

    new-instance v3, Ltd$1;

    invoke-direct {v3, p0, p1}, Ltd$1;-><init>(Ltd;Ljava/lang/String;)V

    invoke-direct {v1, p1, v0, v3}, Lcom/snapchat/android/api2/chat/LoadConversationPageTask;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/snapchat/android/api2/chat/LoadConversationPageTask$a;)V

    .line 62
    iget-object v0, p0, Ltd;->mRunningLoadConversationPageTasks:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 63
    invoke-virtual {v1}, Lcom/snapchat/android/api2/chat/LoadConversationPageTask;->f()V

    .line 64
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 65
    sget-object v0, Lcom/snapchat/android/api2/chat/LoadConversationPageTask$TaskStatus;->RUNNING:Lcom/snapchat/android/api2/chat/LoadConversationPageTask$TaskStatus;

    goto :goto_0
.end method
