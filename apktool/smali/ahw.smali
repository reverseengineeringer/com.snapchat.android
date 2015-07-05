.class public final Lahw;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Laii;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-static {}, Laii;->a()Laii;

    move-result-object v0

    invoke-direct {p0, v0}, Lahw;-><init>(Laii;)V

    .line 21
    return-void
.end method

.method private constructor <init>(Laii;)V
    .locals 0
    .param p1    # Laii;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lahw;->a:Laii;

    .line 26
    return-void
.end method
