.class public final Lbnc$2;
.super Lbnc;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbnc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbmx;

.field final synthetic b:Ljava/io/File;


# direct methods
.method public constructor <init>(Lbmx;Ljava/io/File;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lbnc$2;->a:Lbmx;

    iput-object p2, p0, Lbnc$2;->b:Ljava/io/File;

    invoke-direct {p0}, Lbnc;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lbmx;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lbnc$2;->a:Lbmx;

    return-object v0
.end method

.method public final a(Lcaw;)V
    .locals 2

    .prologue
    .line 97
    const/4 v1, 0x0

    .line 99
    :try_start_0
    iget-object v0, p0, Lbnc$2;->b:Ljava/io/File;

    invoke-static {v0}, Lcbe;->a(Ljava/io/File;)Lcbk;

    move-result-object v1

    .line 100
    invoke-interface {p1, v1}, Lcaw;->a(Lcbk;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    invoke-static {v1}, Lbnq;->a(Ljava/io/Closeable;)V

    .line 103
    return-void

    .line 102
    :catchall_0
    move-exception v0

    invoke-static {v1}, Lbnq;->a(Ljava/io/Closeable;)V

    throw v0
.end method

.method public final b()J
    .locals 2

    .prologue
    .line 93
    iget-object v0, p0, Lbnc$2;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0
.end method
