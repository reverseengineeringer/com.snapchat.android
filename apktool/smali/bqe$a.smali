.class public final Lbqe$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbqe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/util/concurrent/ExecutorService;

.field public b:Lbpn;

.field public c:Lbqe$f;

.field public d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lbqj;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Landroid/content/Context;

.field private f:Lbpt;

.field private g:Lbqe$c;

.field private h:Landroid/graphics/Bitmap$Config;

.field private i:Z

.field private j:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 699
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 700
    if-nez p1, :cond_0

    .line 701
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Context must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 703
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lbqe$a;->e:Landroid/content/Context;

    .line 704
    return-void
.end method


# virtual methods
.method public final a()Lbqe;
    .locals 19

    .prologue
    .line 829
    move-object/from16 v0, p0

    iget-object v2, v0, Lbqe$a;->e:Landroid/content/Context;

    .line 831
    move-object/from16 v0, p0

    iget-object v1, v0, Lbqe$a;->f:Lbpt;

    if-nez v1, :cond_0

    .line 832
    invoke-static {v2}, Lbqp;->a(Landroid/content/Context;)Lbpt;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lbqe$a;->f:Lbpt;

    .line 834
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lbqe$a;->b:Lbpn;

    if-nez v1, :cond_1

    .line 835
    new-instance v1, Lbpx;

    invoke-direct {v1, v2}, Lbpx;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lbqe$a;->b:Lbpn;

    .line 837
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lbqe$a;->a:Ljava/util/concurrent/ExecutorService;

    if-nez v1, :cond_2

    .line 838
    new-instance v1, Lbqg;

    invoke-direct {v1}, Lbqg;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Lbqe$a;->a:Ljava/util/concurrent/ExecutorService;

    .line 840
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lbqe$a;->c:Lbqe$f;

    if-nez v1, :cond_3

    .line 841
    sget-object v1, Lbqe$f;->a:Lbqe$f;

    move-object/from16 v0, p0

    iput-object v1, v0, Lbqe$a;->c:Lbqe$f;

    .line 844
    :cond_3
    new-instance v7, Lbql;

    move-object/from16 v0, p0

    iget-object v1, v0, Lbqe$a;->b:Lbpn;

    invoke-direct {v7, v1}, Lbql;-><init>(Lbpn;)V

    .line 846
    new-instance v1, Lbps;

    move-object/from16 v0, p0

    iget-object v3, v0, Lbqe$a;->a:Ljava/util/concurrent/ExecutorService;

    sget-object v4, Lbqe;->a:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v5, v0, Lbqe$a;->f:Lbpt;

    move-object/from16 v0, p0

    iget-object v6, v0, Lbqe$a;->b:Lbpn;

    invoke-direct/range {v1 .. v7}, Lbps;-><init>(Landroid/content/Context;Ljava/util/concurrent/ExecutorService;Landroid/os/Handler;Lbpt;Lbpn;Lbql;)V

    .line 848
    new-instance v8, Lbqe;

    move-object/from16 v0, p0

    iget-object v11, v0, Lbqe$a;->b:Lbpn;

    move-object/from16 v0, p0

    iget-object v12, v0, Lbqe$a;->g:Lbqe$c;

    move-object/from16 v0, p0

    iget-object v13, v0, Lbqe$a;->c:Lbqe$f;

    move-object/from16 v0, p0

    iget-object v14, v0, Lbqe$a;->d:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v0, v0, Lbqe$a;->h:Landroid/graphics/Bitmap$Config;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lbqe$a;->i:Z

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lbqe$a;->j:Z

    move/from16 v18, v0

    move-object v9, v2

    move-object v10, v1

    move-object v15, v7

    invoke-direct/range {v8 .. v18}, Lbqe;-><init>(Landroid/content/Context;Lbps;Lbpn;Lbqe$c;Lbqe$f;Ljava/util/List;Lbql;Landroid/graphics/Bitmap$Config;ZZ)V

    return-object v8
.end method
