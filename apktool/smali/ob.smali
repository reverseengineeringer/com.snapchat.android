.class public final Lob;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final mExceptionReporter:Lban;

.field public final mScreenParameterProvider:Lpm;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 24
    new-instance v0, Lban;

    invoke-direct {v0}, Lban;-><init>()V

    invoke-static {}, Lpm;->a()Lpm;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lob;-><init>(Lban;Lpm;)V

    .line 25
    return-void
.end method

.method private constructor <init>(Lban;Lpm;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lob;->mExceptionReporter:Lban;

    .line 31
    iput-object p2, p0, Lob;->mScreenParameterProvider:Lpm;

    .line 32
    return-void
.end method
