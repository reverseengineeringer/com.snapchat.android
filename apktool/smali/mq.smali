.class public final Lmq;
.super Lml;
.source "SourceFile"


# static fields
.field private static final IDENTIFIER:Ljava/lang/String; = "EMPTY"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lml;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    const-string v0, "EMPTY"

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    const-string v0, "EMPTY"

    return-object v0
.end method

.method public final c()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 13
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    const-string v0, "EMPTY"

    return-object v0
.end method
