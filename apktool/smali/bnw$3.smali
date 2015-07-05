.class final Lbnw$3;
.super Lbmk;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbnw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Z

.field final synthetic c:I

.field final synthetic d:I

.field final synthetic e:Lbns;

.field final synthetic f:Lbnw;


# direct methods
.method varargs constructor <init>(Lbnw;Ljava/lang/String;[Ljava/lang/Object;II)V
    .locals 1

    .prologue
    .line 388
    iput-object p1, p0, Lbnw$3;->f:Lbnw;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lbnw$3;->b:Z

    iput p4, p0, Lbnw$3;->c:I

    iput p5, p0, Lbnw$3;->d:I

    const/4 v0, 0x0

    iput-object v0, p0, Lbnw$3;->e:Lbns;

    invoke-direct {p0, p2, p3}, Lbmk;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .prologue
    .line 391
    :try_start_0
    iget-object v0, p0, Lbnw$3;->f:Lbnw;

    iget-boolean v1, p0, Lbnw$3;->b:Z

    iget v2, p0, Lbnw$3;->c:I

    iget v3, p0, Lbnw$3;->d:I

    iget-object v4, p0, Lbnw$3;->e:Lbns;

    invoke-static {v0, v1, v2, v3, v4}, Lbnw;->a(Lbnw;ZIILbns;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 394
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
