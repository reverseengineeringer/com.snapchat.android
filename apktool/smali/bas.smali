.class public final Lbas;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "NativeTaskFlagWatcher"


# instance fields
.field private final mExceptionReporter:Lban;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    new-instance v0, Lban;

    invoke-direct {v0}, Lban;-><init>()V

    invoke-direct {p0, v0}, Lbas;-><init>(Lban;)V

    .line 21
    return-void
.end method

.method private constructor <init>(Lban;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lbas;->mExceptionReporter:Lban;

    .line 26
    return-void
.end method

.method public static a()V
    .locals 2

    .prologue
    .line 29
    invoke-static {}, Lakr;->be()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Transcoding flag was still set"

    new-instance v1, Lbfw;

    invoke-direct {v1, v0}, Lbfw;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lban;->c(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    invoke-static {v0}, Lakr;->q(Z)V

    .line 30
    :cond_0
    return-void
.end method
