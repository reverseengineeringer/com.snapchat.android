.class public final Lazt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "NativeTaskFlagWatcher"


# instance fields
.field private final mExceptionReporter:Lazo;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    new-instance v0, Lazo;

    invoke-direct {v0}, Lazo;-><init>()V

    invoke-direct {p0, v0}, Lazt;-><init>(Lazo;)V

    .line 21
    return-void
.end method

.method private constructor <init>(Lazo;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lazt;->mExceptionReporter:Lazo;

    .line 26
    return-void
.end method

.method public static a()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 29
    invoke-static {}, Lajx;->bh()Z

    move-result v0

    const-string v1, "NativeTaskFlagWatcher"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getTranscodingInProgressFlag is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v0, :cond_0

    const-string v0, "Transcoding flag was still set"

    new-instance v1, Lbex;

    invoke-direct {v1, v0}, Lbex;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lazo;->c(Ljava/lang/Throwable;)V

    invoke-static {v4}, Lajx;->r(Z)V

    .line 30
    :cond_0
    return-void
.end method
