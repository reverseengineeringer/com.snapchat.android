.class public final Lave;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DEFAULT_INIT_MILLIS:J = 0x1f4L

.field private static final DEFAULT_MAX_MILLIS:J = 0x7d00L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Callable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<TT;>;)",
            "Ljava/util/concurrent/Callable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 17
    new-instance v0, Lave$1;

    invoke-direct {v0, p0, p1}, Lave$1;-><init>(Lave;Ljava/util/concurrent/Callable;)V

    return-object v0
.end method
