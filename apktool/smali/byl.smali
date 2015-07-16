.class public final Lbyl;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    if-ltz p2, :cond_0

    const/4 v0, 0x1

    if-le p2, v0, :cond_1

    .line 49
    :cond_0
    new-instance v0, Lbyi;

    const-string v1, "Invalid function result type."

    invoke-direct {v0, v1}, Lbyi;-><init>(Ljava/lang/String;)V

    throw v0

    .line 52
    :cond_1
    iput-object p1, p0, Lbyl;->a:Ljava/lang/String;

    .line 53
    iput p2, p0, Lbyl;->b:I

    .line 54
    return-void
.end method
