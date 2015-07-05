.class public final Lnk;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final mExceptionReporter:Lazo;

.field public final mScreenParameterProvider:Lov;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 24
    new-instance v0, Lazo;

    invoke-direct {v0}, Lazo;-><init>()V

    invoke-static {}, Lov;->a()Lov;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lnk;-><init>(Lazo;Lov;)V

    .line 25
    return-void
.end method

.method private constructor <init>(Lazo;Lov;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lnk;->mExceptionReporter:Lazo;

    .line 31
    iput-object p2, p0, Lnk;->mScreenParameterProvider:Lov;

    .line 32
    return-void
.end method
