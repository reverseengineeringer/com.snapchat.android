.class final Lni$a;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lni;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic this$0:Lni;


# direct methods
.method private constructor <init>(Lni;)V
    .locals 0

    .prologue
    .line 147
    iput-object p1, p0, Lni$a;->this$0:Lni;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lni;B)V
    .locals 0

    .prologue
    .line 147
    invoke-direct {p0, p1}, Lni$a;-><init>(Lni;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 150
    iget-object v0, p0, Lni$a;->this$0:Lni;

    iget-object v1, v0, Lni;->mMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 151
    :try_start_0
    iget-object v0, p0, Lni$a;->this$0:Lni;

    invoke-virtual {v0}, Lni;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lni$a;->this$0:Lni;

    iget-object v2, p0, Lni$a;->this$0:Lni;

    iget v2, v2, Lni;->mNextPosition:I

    invoke-virtual {v0, v2}, Lni;->d(I)V

    .line 154
    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
