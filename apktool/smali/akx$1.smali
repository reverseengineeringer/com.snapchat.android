.class final Lakx$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lakx;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lakx;


# direct methods
.method constructor <init>(Lakx;)V
    .locals 0

    .prologue
    .line 210
    iput-object p1, p0, Lakx$1;->this$0:Lakx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 213
    iget-object v1, p0, Lakx$1;->this$0:Lakx;

    invoke-static {}, Lbhp;->b()V

    :try_start_0
    iget-object v2, v1, Lakx;->mConversations:Ljava/util/List;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, v1, Lakx;->mConversations:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    new-instance v0, Lakx$2;

    invoke-direct {v0, v1}, Lakx$2;-><init>(Lakx;)V

    invoke-static {v0}, Lbhp;->a(Ljava/lang/Runnable;)V

    .line 214
    return-void

    .line 213
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method
