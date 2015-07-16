.class final Lbnh$a$1;
.super Lbni;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbnh$a;->a(I)Lcbj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbnh$a;


# direct methods
.method constructor <init>(Lbnh$a;Lcbj;)V
    .locals 0

    .prologue
    .line 880
    iput-object p1, p0, Lbnh$a$1;->a:Lbnh$a;

    invoke-direct {p0, p2}, Lbni;-><init>(Lcbj;)V

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 3

    .prologue
    .line 882
    iget-object v0, p0, Lbnh$a$1;->a:Lbnh$a;

    iget-object v1, v0, Lbnh$a;->d:Lbnh;

    monitor-enter v1

    .line 883
    :try_start_0
    iget-object v0, p0, Lbnh$a$1;->a:Lbnh$a;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lbnh$a;->c:Z

    .line 884
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
