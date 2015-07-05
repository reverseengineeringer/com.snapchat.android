.class public final Lbya;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbxg;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lbwz;Ljava/lang/String;)Lbxk;
    .locals 4

    .prologue
    .line 58
    new-instance v0, Ljava/lang/Double;

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/lang/Double;-><init>(D)V

    .line 60
    new-instance v1, Lbxk;

    invoke-virtual {v0}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lbxk;-><init>(Ljava/lang/String;I)V

    return-object v1
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    const-string v0, "random"

    return-object v0
.end method
