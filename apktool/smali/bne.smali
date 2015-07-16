.class public abstract Lbne;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field private reader:Ljava/io/Reader;


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

.method public abstract b()Lcax;
.end method

.method public final c()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 43
    invoke-virtual {p0}, Lbne;->b()Lcax;

    move-result-object v0

    invoke-interface {v0}, Lcax;->e()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .locals 1

    .prologue
    .line 92
    invoke-virtual {p0}, Lbne;->b()Lcax;

    move-result-object v0

    invoke-interface {v0}, Lcax;->close()V

    .line 93
    return-void
.end method
