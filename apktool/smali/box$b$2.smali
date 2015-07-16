.class final Lbox$b$2;
.super Lbnl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbox$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lbov;

.field final synthetic c:Lbox$b;


# direct methods
.method varargs constructor <init>(Lbox$b;Ljava/lang/String;[Ljava/lang/Object;Lbov;)V
    .locals 0

    .prologue
    .line 707
    iput-object p1, p0, Lbox$b$2;->c:Lbox$b;

    iput-object p4, p0, Lbox$b$2;->b:Lbov;

    invoke-direct {p0, p2, p3}, Lbnl;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 710
    :try_start_0
    iget-object v0, p0, Lbox$b$2;->c:Lbox$b;

    iget-object v0, v0, Lbox$b;->c:Lbox;

    iget-object v0, v0, Lbox;->i:Lbol;

    iget-object v1, p0, Lbox$b$2;->b:Lbov;

    invoke-interface {v0, v1}, Lbol;->a(Lbov;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 713
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
