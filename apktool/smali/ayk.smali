.class public final Layk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Layc;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a([B)[B
    .locals 0

    .prologue
    .line 12
    return-object p1
.end method

.method public final b([B)[B
    .locals 1

    .prologue
    .line 17
    const-string v0, "no dataId provided"

    invoke-virtual {p0, p1, v0}, Layk;->b([BLjava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public final b([BLjava/lang/String;)[B
    .locals 0

    .prologue
    .line 29
    return-object p1
.end method
