.class final Lboq$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lboq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field final a:[Lboq$a;

.field final b:I

.field final c:I


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 207
    const/16 v0, 0x100

    new-array v0, v0, [Lboq$a;

    iput-object v0, p0, Lboq$a;->a:[Lboq$a;

    .line 208
    iput v1, p0, Lboq$a;->b:I

    .line 209
    iput v1, p0, Lboq$a;->c:I

    .line 210
    return-void
.end method

.method constructor <init>(II)V
    .locals 1

    .prologue
    .line 218
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 219
    const/4 v0, 0x0

    iput-object v0, p0, Lboq$a;->a:[Lboq$a;

    .line 220
    iput p1, p0, Lboq$a;->b:I

    .line 221
    and-int/lit8 v0, p2, 0x7

    .line 222
    if-nez v0, :cond_0

    const/16 v0, 0x8

    :cond_0
    iput v0, p0, Lboq$a;->c:I

    .line 223
    return-void
.end method
