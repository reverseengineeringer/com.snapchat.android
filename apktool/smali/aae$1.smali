.class final Laae$1;
.super Laaf;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laae;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Laae;


# direct methods
.method constructor <init>(Laae;Lakl;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Laae$1;->a:Laae;

    invoke-direct {p0, p2}, Laaf;-><init>(Lakl;)V

    return-void
.end method


# virtual methods
.method protected final a(Lakl;)V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 106
    iget-object v0, p0, Laae$1;->a:Laae;

    invoke-static {}, Lbhp;->a()V

    iget-object v1, v0, Laae;->e:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget-object v1, v0, Laae;->e:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, v0, Laae;->f:J

    sub-long/2addr v2, v4

    new-array v1, v8, [Ljava/lang/Object;

    aput-object v0, v1, v6

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v1, v7

    iget-object v1, v0, Laae;->g:Laae$b;

    iget v4, v0, Laae;->h:I

    invoke-interface {v1, v0, v4, v2, v3}, Laae$b;->a(Laae;IJ)V

    .line 107
    :goto_0
    return-void

    .line 106
    :cond_0
    new-array v1, v8, [Ljava/lang/Object;

    aput-object v0, v1, v6

    iget-object v0, v0, Laae;->e:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v7

    goto :goto_0
.end method
