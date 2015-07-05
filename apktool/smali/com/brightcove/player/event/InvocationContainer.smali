.class Lcom/brightcove/player/event/InvocationContainer;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static PROCESS_EVENT_METHOD_NAME:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;

.field private static count:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private id:I

.field private isDefault:Z

.field private listener:Lcom/brightcove/player/event/EventListener;

.field private shouldRemove:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lcom/brightcove/player/event/InvocationContainer;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/brightcove/player/event/InvocationContainer;->TAG:Ljava/lang/String;

    .line 42
    const-string v0, "processEvent"

    sput-object v0, Lcom/brightcove/player/event/InvocationContainer;->PROCESS_EVENT_METHOD_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/brightcove/player/event/EventListener;Z)V
    .locals 2

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    if-nez p1, :cond_0

    .line 57
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listenerRequired"

    invoke-static {v1}, Lcom/brightcove/player/util/ErrorUtil;->getMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59
    :cond_0
    sget-object v0, Lcom/brightcove/player/event/InvocationContainer;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    if-nez v0, :cond_1

    .line 60
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/brightcove/player/event/InvocationContainer;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 62
    :cond_1
    sget-object v0, Lcom/brightcove/player/event/InvocationContainer;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    iput v0, p0, Lcom/brightcove/player/event/InvocationContainer;->id:I

    .line 63
    iput-object p1, p0, Lcom/brightcove/player/event/InvocationContainer;->listener:Lcom/brightcove/player/event/EventListener;

    .line 64
    invoke-static {p1}, Lcom/brightcove/player/event/InvocationContainer;->isDefaultListener(Lcom/brightcove/player/event/EventListener;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/brightcove/player/event/InvocationContainer;->isDefault:Z

    .line 65
    iput-boolean p2, p0, Lcom/brightcove/player/event/InvocationContainer;->shouldRemove:Z

    .line 66
    return-void
.end method

.method private static isDefaultListener(Lcom/brightcove/player/event/EventListener;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 77
    .line 79
    if-eqz p0, :cond_0

    .line 82
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    sget-object v2, Lcom/brightcove/player/event/InvocationContainer;->PROCESS_EVENT_METHOD_NAME:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lcom/brightcove/player/event/Event;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 83
    const-class v2, Lcom/brightcove/player/event/Default;

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 91
    :goto_0
    return v0

    .line 85
    :catch_0
    move-exception v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/brightcove/player/event/InvocationContainer;->PROCESS_EVENT_METHOD_NAME:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " method seems to be missing from this handler!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 88
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listenerRequired"

    invoke-static {v1}, Lcom/brightcove/player/util/ErrorUtil;->getMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getListener()Lcom/brightcove/player/event/EventListener;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/brightcove/player/event/InvocationContainer;->listener:Lcom/brightcove/player/event/EventListener;

    return-object v0
.end method

.method public getToken()I
    .locals 1

    .prologue
    .line 100
    iget v0, p0, Lcom/brightcove/player/event/InvocationContainer;->id:I

    return v0
.end method

.method public getTotalCount()I
    .locals 1

    .prologue
    .line 132
    sget-object v0, Lcom/brightcove/player/event/InvocationContainer;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public isDefault()Z
    .locals 1

    .prologue
    .line 123
    iget-boolean v0, p0, Lcom/brightcove/player/event/InvocationContainer;->isDefault:Z

    return v0
.end method

.method public shouldRemove()Z
    .locals 1

    .prologue
    .line 139
    iget-boolean v0, p0, Lcom/brightcove/player/event/InvocationContainer;->shouldRemove:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "InvocationContainer ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/brightcove/player/event/InvocationContainer;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
