.class final Lbnw$2;
.super Lbmk;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbnw;->a(IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:I

.field final synthetic c:J

.field final synthetic d:Lbnw;


# direct methods
.method varargs constructor <init>(Lbnw;Ljava/lang/String;[Ljava/lang/Object;IJ)V
    .locals 1

    .prologue
    .line 355
    iput-object p1, p0, Lbnw$2;->d:Lbnw;

    iput p4, p0, Lbnw$2;->b:I

    iput-wide p5, p0, Lbnw$2;->c:J

    invoke-direct {p0, p2, p3}, Lbmk;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 358
    :try_start_0
    iget-object v0, p0, Lbnw$2;->d:Lbnw;

    iget-object v0, v0, Lbnw;->i:Lbnk;

    iget v1, p0, Lbnw$2;->b:I

    iget-wide v2, p0, Lbnw$2;->c:J

    invoke-interface {v0, v1, v2, v3}, Lbnk;->a(IJ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 361
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
