.class public final Lben;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mRequestTaskId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lben;-><init>(B)V

    .line 11
    return-void
.end method

.method private constructor <init>(B)V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, -0x1

    iput v0, p0, Lben;->mRequestTaskId:I

    .line 15
    return-void
.end method
