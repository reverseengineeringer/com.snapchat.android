.class public final Lbqx;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lbqw;

.field public final b:Lbqz;


# direct methods
.method public constructor <init>(Lbqz;)V
    .locals 1

    .prologue
    .line 21
    new-instance v0, Lbqw;

    invoke-direct {v0}, Lbqw;-><init>()V

    invoke-direct {p0, p1, v0}, Lbqx;-><init>(Lbqz;Lbqw;)V

    .line 22
    return-void
.end method

.method private constructor <init>(Lbqz;Lbqw;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lbqx;->b:Lbqz;

    .line 27
    iput-object p2, p0, Lbqx;->a:Lbqw;

    .line 28
    return-void
.end method
