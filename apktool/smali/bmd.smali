.class public abstract Lbmd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()J
.end method

.method public abstract b()Lbzw;
.end method

.method public final c()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 43
    invoke-virtual {p0}, Lbmd;->b()Lbzw;

    move-result-object v0

    invoke-interface {v0}, Lbzw;->e()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .locals 1

    .prologue
    .line 92
    invoke-virtual {p0}, Lbmd;->b()Lbzw;

    move-result-object v0

    invoke-interface {v0}, Lbzw;->close()V

    .line 93
    return-void
.end method
