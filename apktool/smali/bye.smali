.class final Lbye;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Lcar;

.field b:I


# direct methods
.method public constructor <init>(Lcar;I)V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lbye;->a:Lcar;

    .line 30
    const/4 v0, -0x1

    iput v0, p0, Lbye;->b:I

    .line 41
    iput-object p1, p0, Lbye;->a:Lcar;

    .line 42
    iput p2, p0, Lbye;->b:I

    .line 43
    return-void
.end method
