.class public final Lmp$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public mAdType:I

.field public mAdUnitId:Ljava/lang/String;

.field public mChannelName:Ljava/lang/String;

.field public mEditionName:Ljava/lang/String;

.field public mPosition:I

.field public mTargetingParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    return-void
.end method


# virtual methods
.method public final a()Lmp;
    .locals 8

    .prologue
    .line 162
    iget-object v0, p0, Lmp$a;->mEditionName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 163
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "editionName should not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 165
    :cond_0
    iget-object v0, p0, Lmp$a;->mChannelName:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 166
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "channelName should not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 169
    :cond_1
    new-instance v0, Lmp;

    iget-object v1, p0, Lmp$a;->mEditionName:Ljava/lang/String;

    iget-object v2, p0, Lmp$a;->mChannelName:Ljava/lang/String;

    iget-object v3, p0, Lmp$a;->mAdUnitId:Ljava/lang/String;

    iget-object v4, p0, Lmp$a;->mTargetingParams:Ljava/util/Map;

    iget v5, p0, Lmp$a;->mPosition:I

    iget v6, p0, Lmp$a;->mAdType:I

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lmp;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;IIB)V

    return-object v0
.end method
