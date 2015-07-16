.class public final Laxn$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laxn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final mLastAccessMilliseconds:J

.field public final mUri:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;J)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Laxn$a;->mUri:Ljava/lang/String;

    .line 63
    iput-wide p2, p0, Laxn$a;->mLastAccessMilliseconds:J

    .line 64
    return-void
.end method

.method public static a(Ljava/lang/String;)Laxn$a;
    .locals 4
    .param p0    # Ljava/lang/String;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 67
    new-instance v0, Laxn$a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v0, p0, v2, v3}, Laxn$a;-><init>(Ljava/lang/String;J)V

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 72
    invoke-static {p0}, Lcl;->a(Ljava/lang/Object;)Lcl$a;

    move-result-object v0

    const-string v1, "uri"

    iget-object v2, p0, Laxn$a;->mUri:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcl$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcl$a;

    move-result-object v0

    const-string v1, "lastAccess"

    new-instance v2, Ljava/util/Date;

    iget-wide v4, p0, Laxn$a;->mLastAccessMilliseconds:J

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1, v2}, Lcl$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcl$a;

    move-result-object v0

    invoke-virtual {v0}, Lcl$a;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
