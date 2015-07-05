.class final Lbnw$b$2;
.super Lbmk;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbnw$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lbnu;

.field final synthetic c:Lbnw$b;


# direct methods
.method varargs constructor <init>(Lbnw$b;Ljava/lang/String;[Ljava/lang/Object;Lbnu;)V
    .locals 0

    .prologue
    .line 707
    iput-object p1, p0, Lbnw$b$2;->c:Lbnw$b;

    iput-object p4, p0, Lbnw$b$2;->b:Lbnu;

    invoke-direct {p0, p2, p3}, Lbmk;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 710
    :try_start_0
    iget-object v0, p0, Lbnw$b$2;->c:Lbnw$b;

    iget-object v0, v0, Lbnw$b;->c:Lbnw;

    iget-object v0, v0, Lbnw;->i:Lbnk;

    iget-object v1, p0, Lbnw$b$2;->b:Lbnu;

    invoke-interface {v0, v1}, Lbnk;->a(Lbnu;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 713
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
