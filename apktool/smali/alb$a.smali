.class public final Lalb$a;
.super Lakw$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lalb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 87
    invoke-direct {p0, p1, p2}, Lakw$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    return-void
.end method


# virtual methods
.method public final a()Lalb;
    .locals 2

    .prologue
    .line 91
    new-instance v0, Lalb;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lalb;-><init>(Lalb$a;B)V

    return-object v0
.end method
