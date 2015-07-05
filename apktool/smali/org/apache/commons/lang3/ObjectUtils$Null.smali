.class public Lorg/apache/commons/lang3/ObjectUtils$Null;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/lang3/ObjectUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Null"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x626e04ed40667ec5L


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 694
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 695
    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 703
    sget-object v0, Lorg/apache/commons/lang3/ObjectUtils;->NULL:Lorg/apache/commons/lang3/ObjectUtils$Null;

    return-object v0
.end method
